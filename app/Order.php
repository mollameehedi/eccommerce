<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $guarded = [''];

    function order_detail(){
        return $this->hasMany('App\Order_detail');
     }


}
