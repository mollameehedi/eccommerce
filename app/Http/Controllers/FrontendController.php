<?php

namespace App\Http\Controllers;

use App\User;
use App\Product;
use Carbon\Carbon;
use App\Contactmessage;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;



class FrontendController extends Controller
{
   public function index(){
       return view('frontend.index',[
           'products' => Product::get(),
       ]);
   }
   public function about(){
       return view('frontend.about',[
        'products' => Product::get(),
       ]);
   }
   public function shop(){
       return view('frontend.shop',[
        'products' => Product::get(),
       ]);
   }
   public function productdetails($slug_link){
       return view('frontend.productdetails',[
        'productdetails' => Product::where('slug_link',$slug_link)->first(),
        'products' => Product::get(),
       ]);
   }
   public function customerlogin(){
       return view('frontend.login');
   }
   public function customerregister(){
       return view('frontend.register');
   }
   public function contact(){
       return view('frontend.contact');
   }

   public function contactstore(Request $request, Contactmessage $Contactmessage){
    $request->validate([
        'name' => 'required',
        'email' => 'required',
        'subject' => 'required',
        'message' => 'required',
       ]);
    $Contactmessage->insert($request->except('_token') + [
        "created_at" => Carbon::now(),
    ]);
    return back()->with('success_status', 'Message sent Successfully !');
   }

 public function customerregisterstore(Request $request){

    User::insert([
        'name' => $request->name,
        'email' => $request->email,
        'role' => 2,
        'password' => Hash::make($request->password),
        'created_at' => Carbon::now(),
    ]);
    if (Auth::attempt(['email' => $request->email,'password' => $request->password ])) {
        return redirect('customer/dashboard');
    }
 }



}
