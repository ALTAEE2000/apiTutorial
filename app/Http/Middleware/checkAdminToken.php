<?php

namespace App\Http\Middleware;

use App\Traits\GeneralTrait;
use Closure;
use Illuminate\Http\Request;
use Namshi\JOSE\JWS;
use Tymon\JWTAuth\Facades\JWTAuth;

class checkAdminToken
{

    use GeneralTrait;

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        return $next($request);
        $user = null;
        try{
            $user = JWS::parseToken()->authenticate();

        }catch (\Exception $e){
            if($e instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException){
                return $this->returnError('E3001' , 'invalid token');
            }else if($e instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException){
                return $this->returnError('E3001' , 'expired token');

            }else{
                return $this->returnError('E3001' , ' token not found');

            }

        }catch (\Throwable $e){
            if($e instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException){
                return $this->returnError('E3001' , 'expired token');
            }else if($e instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException){
                return $this->returnError('E3001' , 'expired token');

            }else{
                return $this->returnError('E3001' , 'expired token');

            }
        }

        if(!$user){
            return $this->returnError('E3001' , 'expired token');
            $this->returnError('Err' , 'fuck error');
            return $next($request);
        }
    }
}
