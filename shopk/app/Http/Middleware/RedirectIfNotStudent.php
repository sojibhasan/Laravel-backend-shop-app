<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Support\Facades\Auth;

class RedirectIfNotStudent
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string  $guard
     * @return mixed
     *
     * @throws \Illuminate\Auth\AuthenticationException
     */
    public function handle($request, Closure $next, $guard = 'student')
    {
        if (Auth::guard($guard)->check() && !Auth::guard($guard)->user()->is_active) {
            return redirect()->route('student.notActive');
        }

        if (Auth::guard($guard)->check()) {
            return $next($request);
        }

        $redirectToRoute = $request->expectsJson() ? '' : route('student.login');

        throw new AuthenticationException(
            'Unauthenticated.', [$guard], $redirectToRoute
        );
    }

}
