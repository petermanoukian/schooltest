<template>
  <div class ='container' style = 'max-width:98%;'>
  
  
		<div  class="row margintop18bottom10" v-if ="typeof questions.data !== 'undefined' &&  questions.data.length > 0 ">
			<form @submit.prevent="answer" id="main_contact_form" method = 'post' >
			<div class="col-12 col-md-12 col-xl-12  " v-for="quest, index in questions.data">
				<p><strong> Quesion: <span v-html="quest.qname"> </span>  </strong></p>
				
				<span v-for="answer in quest.questanswers" :key="answer.id" >
				  <div class="form-group">
					<label :for="'answer_' + answer.id">
						<span v-html="answer.ansname "> </span>
					</label>
					<input type="radio" class="form-control radioclass"
						   :value="answer.id" :id="'answer_' + answer.id"
						   @change="updateAnswers(answer.id)"   v-model="selectedAnswers">
					
				  </div>
				</span>
				<div class="col-12"  id = 'result2'>
					
					<input type = 'hidden' name = 'questid' :value="quest.id">
					<button type="submit" class="btn btn-primary">
					ANSWER 
					</button>
				</div>
				
			</div>
			</form>
		</div>
		
		<div v-else  class="row margintop18bottom10">
			<div class="col-9 col-md-9 col-xl-9 ml-4 "
			v-if ="typeof founderx !== 'undefined' &&  founderx > 0 "> 
				<h1>End of the test </h1>
				<router-link :to="{ name: 'resultfinal' , params: { id: ViewQuest.id2 , email: ViewQuest.email2} }" 
				class = 'btn btn-primary'>
				View Results 
				</router-link>
			</div>
			<div v-else class="col-9 col-md-9 col-xl-9 ml-4 ">
				<h2>We have found no information for this search  </h2>
				<router-link :to="{ name: 'home1'  }" class = 'btn btn-primary'>
					Please Ask Again
				</router-link>
			
			</div>
			
			
			
		</div>
		
		
		<div class="row">
			<div class="col-10">
				<div class="more-blog-btn text-center"> 
					<pagination :data="questions" @pagination-change-page="fecthquestions"></pagination>  
				</div>
			</div>
		</div>

	</div>

</template>

<script>

import router from '../app2.js'


import Vue from 'vue';
import Router from 'vue-router';

export default 
{
	name: 'app-questions',
	
	data: function() 
	{
		return {
			questions: {},
			selectedQuestionnn: {},
			selectedAnswers: [],
			ViewQuest:{                    
				email2:null,
				id2: null,
			},

			founderx: '',
			questionid: '',
			
		}
		
		
	},
	

	created: function()
	{
		const vr1 = this.$router;
	},
	 mounted: function()
	{
		const vr2 = this.$router;
		
		let id1 = '';
		let email1 = '';
		let app = this;
		if(app.$route.params.id)
		{	
			id1 = app.$route.params.id;
			this.ViewQuest.id2 = id1;
		}
		if(app.$route.params.email)
		{	
			email1 = app.$route.params.email;
			this.ViewQuest.email2 = email1;
		}
		this.fecthquestions();

	},
	
	methods: 
	{

		updateAnswers(answerId) {
			this.selectedAnswers = [];
			this.selectedAnswers = answerId;
					
		},
		
		fecthquestions(page)
		{			
			
			var apper = this;
			var url  ='';
			if (typeof page === 'undefined') 
			{
				page = 1;
			}
			let id4 = apper.ViewQuest.id2;
			let email4 = apper.ViewQuest.email2;
			url = '/api/questions/'+id4+'/'+email4+'?page=' + page;
			
			axios.get(url).then((res) => 
			{
				let id9 = '';
				console.log( ' line 109 ' + res);
				this.questions = res.data;	
			});	
			
			let url2 = '/api/questionsall/'+id4+'/'+email4;
	
			
			axios.get(url2).then((res2) => 
			{

				this.founderx = res2.data.foundx;
				let fg = this.founderx;				
				console.log('158 ID is ' + fg);
			});		
		},

		answer(page){
		
			var apper = this;

			if (typeof page === 'undefined') 
			{
				page = 1;
			}
			else
			{
				page +=1;
			}

			let id8 = apper.selectedAnswers;
			if(id8 != '')
			{
				axios.get('/api/answer/answerquestion/'+id8)
				.then(function (resp) {
					console.log(resp);
					apper.fecthquestions();
				})
				.catch(function (resp) {
					console.log(resp);
					alert("Could not send" + resp);
				});
			}
        },
	},

}
</script>

<style>
.pagination
{
	max-width:95%;
}
.pagination-page-nav
{
	width:30px;clear:none;display:inline;
}
.page-link {
   
    padding: 0.5rem 0.25rem;
}



.radioclass
{
	width:60px;height:30px;
}
</style>
