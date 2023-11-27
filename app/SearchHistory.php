<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use App\Quesion;
use App\Answerr;

class SearchHistory extends Model
{
    public $table = 'search_history';
	protected $fillable =['name' ,'email', 'amount', 'difficulty', 'type'];
	
	public function quests()
    {
        return $this->hasMany('App\Quesion', 'searchid' , 'id');
    }
	public function answs()
    {
    	return $this->hasMany('App\Answerr', 'searchid' , 'id');
	}
	
}
