<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use DB;
use Redirect;
use App\SearchHistory;
use App\Quesion;
use App\Answerr;

class AnswerrController extends Controller
{
    public function answerQuesion(Request $request , $id)
	{
		$this->middleware('cors');
		
		$answer = Answerr::find($id);
		$questid = $answer['questid'];
		if($answer)
		{
			$answer->update([ 'sett' => '1' ]);
			
			$question = Quesion::find($questid);

			$question->update(['answered' => '1' ]);
		}
		
		return response()->json(" Id IS $id ");
	
	}
}
