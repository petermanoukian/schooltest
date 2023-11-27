<?php
namespace Tests\Feature;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use App\SearchHistory;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use DB;
use Redirect;
use App\Quesion;
use App\Answerr;




class BasicTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */

	
	
	public function it_stores_search_history()
    {
        // Mocking request data
		
		$this->middleware('cors');
		
        $requestData = [
            'name' => 'John Doe',
            'email' => 'john@example.com',
            'difficulty' => 'hard',
            'type' => 'multiple',
            'amount' => 10,
        ];

        // Simulating a request
        $response = $this->json('POST', '/api/generate/post', $requestData);

        // Asserting the response
        $response->assertStatus(200)
            ->assertJson([
                'message' => "Successfully added {$requestData['name']} your search, you will be redirected in a moment"
            ]);

        // Asserting that the SearchHistory record was created
        $this->assertDatabaseHas('search_history', [
            'name' => $requestData['name'],
            'email' => $requestData['email'],
            'difficulty' => $requestData['difficulty'],
            'type' => $requestData['type'],
            'amount' => $requestData['amount'],
        ]);
    }
	
	
	
	public function looper(Request $request)
	{

	   $json = 
	    [
            'json' => [
                [
                    'question' => 'Sample Question 1',
                    'correct_answer' => 'Correct Answer 1',
                    'incorrect_answers' => ['Incorrect Answer 1', 'Incorrect Answer 2'],
                ],
                [
                    'question' => 'Sample Question 2',
                    'correct_answer' => 'Correct Answer 2',
                    'incorrect_answers' => ['Incorrect Answer 3', 'Incorrect Answer 4'],
                ],
                // Add more mock data as needed
            ],
            'email' => 'test@example.com',
            'id' => 123,
        ];

	
		foreach($json as $json1)
		{

			$quest = $json1['question'];   
			$row1 = new Quesion();	
			$email ="test@example.com";
			$id =200;	

			
			$questinnew = $this->assertDatabaseHas('quesions', [
				
				'email' => $email,
				'searchid' => $id,
				'qname' => $quest,
				'answered' => '0',
			]);
			
			
			
		   $id1 = $questinnew->id;
		   
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

				$this->assertDatabaseHas('answerrs', [
				'searchid' => $id,
				'questid' => $id1,	
				'ansname' => $randomanswer,
				'sett' => '0',
				]);	
		   }
		}
	}
	
	
	
	
	public function it_updates_answer_and_question_status()
    {
        // Create a mock Answerr record
        $question = Quesion::factory()->create([
            'answered' => '0',
			'searchid' => '5',
			'qname' => 'some question name',
			'email' => 'test@example.com',
            // Add other necessary fields
        ]);
		$questionid = $question->id;
        $answer = Answerr::factory()->create([
            'set' => '0',
			'questid' => $questionid,
			'ansname' =>'some answer',
			'searchid' => '5',
        ]);
		$answerid = $answer->id;
        $response->assertStatus(200);
        $updatedAnswer = Answerr::find($questionid);
        $updatedQuestion = Quesion::find($answerid);

        $this->assertEquals('1', $updatedAnswer->sett);
        $this->assertEquals('1', $updatedQuestion->answered);
    }
	
	
	
	
	
	
}
