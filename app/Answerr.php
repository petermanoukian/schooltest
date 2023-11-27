<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\SearchHistory;
use App\Quesion;


class Answerr extends Model
{
   
	protected $fillable =['ansname' ,'questid','searchid', 'sett'];
    public function answerquestionparent()
    {
        return $this->belongsTo('App\Quesion', 'questid' , 'id');
    }
	
	public function answerparent()
    {
        return $this->belongsTo('App\SearchHistory', 'searchid' , 'id');
    }
}
