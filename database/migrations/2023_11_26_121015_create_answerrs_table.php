<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAnswerrsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('answerrs', function (Blueprint $table) {
            $table->increments('id');
			$table->integer('searchid')->unsigned();
			$table->integer('questid')->unsigned();
			$table->string('ansname', 255);
            $table->timestamps();
        });
		Schema::table('answerrs', function($table) {
      		$table->foreign('searchid')->references('id')->on('search_history')->onDelete('cascade');
   		});
		Schema::table('answerrs', function($table) {
      		$table->foreign('questid')->references('id')->on('quesions')->onDelete('cascade');
   		});
		
		
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('answerrs');
    }
}
