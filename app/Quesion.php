<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\SearchHistory;
use App\Answerr;

class Quesion extends Model
{
    protected $fillable =['qname' ,'email', 'searchid','answered'];
	public function questionparent()
    {
        return $this->belongsTo('App\SearchHistory', 'searchid' , 'id');
    }
	public function questanswers()
    {
    	return $this->hasMany('App\Answerr', 'questid' , 'id');
	}
	
}
