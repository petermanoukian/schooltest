<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Redirect;
use App\SearchHistory;
use App\Quesion;
use App\Answerr;


class QuesionController extends Controller
{
    public function AnasweredQuestions($id, $email)
	{
		$this->middleware('cors');
		$quest1= Quesion::with('questanswers')
		->where('quesions.searchid', '=', $id)
		->where('quesions.email', '=', $email)
		->where('quesions.answered', '=', '0')
		->orderBy('quesions.id', 'DESC')->paginate(1);
		return response()->json($quest1);
		
	}
	
	public function Finalasweredquestions($id, $email)
	{
		$this->middleware('cors');
		$quest1= Quesion::with('questanswers')
		->where('quesions.searchid', '=', $id)
		->where('quesions.email', '=', $email)
		->where('quesions.answered', '=', '1')
		->orderBy('quesions.id', 'DESC')->paginate(1);
		return response()->json($quest1);	
	}
	
	
	
	
	public function AllQuestions($id, $email)
	{
		$this->middleware('cors');
		$quest1= Quesion::where('quesions.searchid', '=', $id)
		->where('quesions.email', '=', $email)
		->first();
		if($quest1 != "")
		{
			$id = $quest1->id;
			if($id != "")
			{
				$foundx = 1;
			}
			else
			{
				$foundx = 0;
			}
		}
		
		else
		{
			$foundx = 0;
		}
		return response()->json(['foundx' =>$foundx]);
		
	}
	
	
	
}
