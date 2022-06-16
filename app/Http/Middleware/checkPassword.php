<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class checkPassword
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if($request->API_PASSWORD != env('API_PASSWORD' , '1111')){
            return response()->json(['message'=>'un auth']);
        }else{
        return $next($request);

        }
    }
}
