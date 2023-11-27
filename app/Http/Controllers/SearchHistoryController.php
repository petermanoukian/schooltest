<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Redirect;
use App\SearchHistory;
use App\Quesion;
use App\Answerr;




class SearchHistoryController extends Controller
{
    public function _construct()
    {
        $this->middleware('cors');	
    }
	
	public function store(Request $request)
	{

		$this->middleware('cors');
		$row = new SearchHistory();
		$name = $request->name;
		$email =$request->email;
		$difficulty =$request->difficulty;
		$type =$request->type;
		$amount =$request->amount;
		$row->name = $request->name;
		$row->email = $request->email;
		$row->difficulty = $request->difficulty;
		$row->type = $request->type;
		$row->amount = $request->amount;

		$row->save();
		$id = $row->id;
		$message = "Successfully added $name your search, you will be redirected in a moment ";
		return response()->json(['message' =>$message,'id' => $id]);

	}
	

	
	public function loopGeneratedJson(Request $request)
	{

	   $this->middleware('cors');
	   $json = $request->json;
	   $id = $request->id;
	   
	   $email =$request->email;
	   $id =$request->id;
	   $jsonresult = array();
	   $questions = array();
	   $questions1 = array();
	   $answers = array();
	   $answers1 = array();
	   foreach($json as $json1)
	   {

		   $category = $json1['category'];
		   if($category != "Entertainment: Video Games")
		   {
				$quest = $json1['question'];   
				$row1 = new Quesion();	
	
				$row1->email = $request->email;
				$row1->searchid = $id;
				$row1->qname = $quest;
				$row1->answered = '0';
				$row1->save();
				$id1 = $row1->id;
			   
			   $answer = $json1['correct_answer'];
			   $wrongs = $json1['incorrect_answers'];
			   array_push($questions1, $quest);
			   
			   if($answer != "" && $answer != NULL)
			   {
					array_push($answers1, $answer);
			   }
			   foreach($wrongs as $wrong)
			   {
				   array_push($answers1, $wrong);
			   }
			   //$questions = $questions1;
			   sort($answers1);
			   foreach($answers1 as $randomanswer)
			   {
				   	$row2 = new Answerr();
					$row2->searchid = $id;
					$row2->questid = $id1;
					$row2->ansname = $randomanswer;
					$row2->sett = '0';
					$row2->save();	   
			   }
			   $questions1x = str_replace("[","",$questions1);
			   $questions1x = str_replace("]","",$questions1);
			   $questions1['question'] = $questions1x;
			   $questions1['answers'] = $answers1;
		   }
			array_push($questions, $questions1);
		    $answers1 = array();	
			$questions1 = array();   
	   }
	    $jsonresult['allquestions'] = $questions;   
	    return response()->json(['jsonresult' =>$jsonresult, 'json' =>$json]);
	}

	
}
