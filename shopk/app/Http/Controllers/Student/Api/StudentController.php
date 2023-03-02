<?php

namespace App\Http\Controllers\Student\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Student\StudentRequest;
use App\Models\Ad;
use App\Models\Category;
use App\Models\Product;
use App\Models\Student;
use App\Models\User;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    const COUNT_ROWS = 10;

    public function homeStudents(){

        $students = Student::where('is_active' , 1)
            ->inRandomOrder()
            ->take(6)
            ->get();

        $ads = Ad::whereIn('position' , [9, 10])->get();

        return  response([
            'status'      => Response_Success,
            'data'        => [
                'students' => $students,
                'ads' => $ads,
            ],
        ]);

    }

    public function getStudents(){

        $students = Student::where('is_active' , 1)
            ->latest()
            ->simplePaginate(self::COUNT_ROWS);

        return $this->responseSuccess($students);
    }



    public function getProducts(){

        $products = Product::latest()
            ->inStock()
            ->customSelect(['is_recommended' , 'is_best'])
            ->whereRelation('students' , 'student_id' , '=' , \request('student_id'))
            ->simplePaginate(self::COUNT_ROWS);

        return $this->responseSuccess($products);

    }


    ///////////////////////////////////////////////////////
    ////                                               ////
    //// ............  Methods Clean Code ............ ////
    ////                                               ////
    ///////////////////////////////////////////////////////


    private function responseSuccess($products){

        $productsCount = $products->count();

        return  response([
            'status'      => $productsCount > 0 ? Response_Success : Response_Fail,
            'countItems'  => $productsCount ,
            'data'        => $products->items() ,
        ]);
    }

}
