<?php
function user_name(){
    echo Auth::User()->name;
}
function user_email(){
    echo Auth::User()->email;
}

function cart_count(){
   return  App\Cart::where('genareted_id', Cookie::get('cart_id'))->count();
}
function cart_item(){
   return  App\Cart::where('genareted_id', Cookie::get('cart_id'))->get();
}

