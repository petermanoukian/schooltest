<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuesionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {


		Schema::create('quesions', function (Blueprint $table) {
            $table->increments('id');
			$table->integer('searchid')->unsigned();
			$table->string('qname', 255);
			$table->string('email', 255);
            $table->timestamps();
        });
		
		
		Schema::table('quesions', function($table) {
      		$table->foreign('searchid')->references('id')->on('search_history')->onDelete('cascade');
   		});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('quesions');
    }
}
