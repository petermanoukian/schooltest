<template>
  <div class="margintop18bottom10 container">
  
		<div  class="row margintop18bottom10" v-if ="typeof questions.data !== 'undefined' &&  questions.data.length > 0 ">
		
			<div class="col-11 col-md-11 col-xl-11 " v-for="quest, index in questions.data">
				<strong> Quesion: <span v-html="quest.qname"> </span> </strong>
				
				<span v-for="answer in quest.questanswers" :key="answer.id">
			
				  <div class="form-group">
					<span v-if ="answer.sett == '1' " class ='redbold'>
					 Your Answer : <span v-html="answer.ansname "> </span>
					</span>
					<span v-else  v-html="answer.ansname"> 
					</span>
					
				  </div>
				</span>

				
			</div>
			
			
			
		</div>
		
		<div v-else>
			<router-link :to="{ name: 'resultfinal' , params: { id: ViewQuest.id2 , email: ViewQuest.email2} }" 
			class = 'btn btn-primary'>
				Load Results
			</router-link>
		</div>

		
		<div class="row">
			<div class="col-12">
				<div class="more-blog-btn text-center"> 
					<pagination :data="questions" @pagination-change-page="fecthanswers"></pagination>  
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-12">
				<router-link :to="{ name: 'home1'  }" class = 'btn btn-primary'>
					Ask Again
				</router-link>
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

			ViewQuest:{                    
				email2:null,
				id2: null,
			},

			
		}
		
		
	},
	

	
	
	
	created: function()
	{
		const vr1 = this.$router;
		//this.fecthanswers();

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
		this.fecthanswers();

	},
	
	methods: 
	{


		
		
		fecthanswers(page)
		{			

			var apper = this;
			var url  ='';
			if (typeof page === 'undefined') 
			{
				page = 1;
			}
			let id4 = apper.ViewQuest.id2;
			let email4 = apper.ViewQuest.email2;
			url = '/api/questionsfinal/'+id4+'/'+email4+'?page=' + page;
		
			
			axios.get(url).then((res) => 
			{
				this.questions = res.data;	
			});	
		},

	},


	
}
</script>

<style>
.redbold
{
	font-weight:600;color:red;
}


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
</style>
