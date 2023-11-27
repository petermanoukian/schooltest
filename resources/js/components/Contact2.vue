<template>
    <section class="contact-our-area section-padding-100-0">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-12 col-sm-12">
                    
                    <div class="contact_from_area mb-100 clearfix wow fadeInUp mt-4" data-wow-delay="300ms">
                        <div class="contact_form">
                            <form @submit.prevent="addsearchhistory" id="main_contact_form" method = 'post'>
                                <div class="contact_input_area">
                                    <div id="success_fail_info"></div>
                                    <div class="row">
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-6">
                                            <div class="form-group">
												<label for = 'name'>Full Name </label>
                                                <input type="text" class="form-control mb-30" name="name" id="name" 
												placeholder="Full Name"
												v-model="formContact.name"  required>
                                            </div>
                                        </div>
                                        <div class="col-12 col-lg-6">
											<label for = 'email'>Email </label>
                                            <div class="form-group">
                                                <input type="email" class="form-control mb-30" name="email" id="email" placeholder="E-mail"
												v-model="formContact.email" required >
                                            </div>
                                        </div>
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-6">
											<label for = 'amount'>Amount </label>
                                            <div class="form-group">
                                                <input type="text" class="form-control mb-30" 
												name="amount" id="amount" placeholder="amount - less than 50"
												v-model="formContact.amount"  required
												v-on:change="checkamountvalue">
                                            </div>
                                        </div>
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-6">
											<label for = 'difficulty'>Difficulty level </label>
                                            <div class="form-group">
                                               <select class="form-control mb-30" required
											   name = 'difficulty' id ='difficulty'
											   v-model="formContact.difficulty" placeholder = 'choose'
											  >
											   <option disabled value="">Please select one</option>
											   <option value='any'>Any difficulty</option>
											   <option value="easy">Easy</option>
											   <option value="medium">Medium</option>
											   <option value="hard">Hard</option>
											   </select>
											 
                                            </div>
                                        </div>
										
										<div class="col-12 col-lg-6">
											<label for = 'type'>Type </label>
                                            <div class="form-group">
                                               <select class="form-control mb-30" required
											   name = 'type' id ='type'
											   v-model="formContact.type" placeholder = 'choose'
											  >
											   <option disabled value="">Please select one</option>
											   
											   <option value="any">Any Type</option>
											   <option value="multiple">Multiple Choice</option>
											   <option value="boolean">True / False</option>
											   </select>
											 
                                            </div>
                                        </div>

                                        <div class="col-12" >
                                            <button type="submit" class="btn btn-primary">
											GENERATE API URL
											</button>
                                        </div>
											
										<div class="col-12" id = 'result'>
									
										</div>
										
										
										
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>


<script>

import router from '../app2.js'


import Vue from 'vue'
import Router from 'vue-router'

export default 
{
	name: 'app-contact1',
	
	data: function() 
	{
		return {
			formContact:{
				name:'',
				email:'',
				difficulty:'',
				type:'',
				amount:'',

			},
			jsonposter:
			{
				json: '',
			},
			
			mainid:'',
			email:'',
			returnData:[],
			returnData2:[], 
		}
	},
	created: function()
	{
		const vr1 = this.$router;

	},
	 mounted: function()
	{
		const vr2 = this.$router;
	},
	
	methods: 
	{
	
		checkamountvalue() {
			let numberrr = this.formContact.amount;
			if(numberrr > 49 || isNaN(numberrr))
			{
				this.formContact.amount= '';
			}
			
		},
		
		async addsearchhistory(){
		
			$("#result").html("<p><b class='red'>  ..... </b></p>");
            let formData = {
                name:this.formContact.name,
				difficulty:this.formContact.difficulty,
				type:this.formContact.type,
                email:this.formContact.email,
                amount:this.formContact.amount,
            };			

			let difficulty = this.formContact.difficulty;
			let type = this.formContact.type;
			let amount = this.formContact.amount;

			let checker = this.formContact.amount;
			let self = this;
			if(checker < 50)
			{

				axios.post('/api/generatedjson/post', formData,
				{
			
				}

				).then(function (resp) {
				$("#result").html("<p><b class='red'>   Message sent ...  </b></p>");
				self.mainid= resp.data.id;
				self.email =self.formContact.email;
				self.fecthonlineapi(amount,difficulty,type);	
				})
				.catch(function (resp) {
					console.log(resp);
					alert("Could not send" + resp);
				});
			}
			else
			{
				alert('amount exceeded');
			}

        },

		async fecthonlineapi(amountr,difficultyr,typer)
		{			
			let amount1 = amountr;
			let difficulty1 = difficultyr;
			let type1 = typer;
			let self = this;
			
		   try {
				const response = await fetch('https://opentdb.com/api.php?amount='+amount1+'&difficulty='+difficulty1+'&type='+type1);
				const resultsx = await response.json();
				let json1 = resultsx.results;
				this.returnData = resultsx.results;
				self.postjson();
	
			  } catch (error) {
				console.log(error);
				$("#result").html("<p><b class='red'> ERROR  " +   error + " </b></p>");
			  }	
		}
		,
		async postjson()
		{
			let self = this;
			let id = self.mainid;
			let formData = {
                json:this.returnData,
				id:this.mainid,
				email:this.email,	
            };	
			axios.post('/api/generatedjson/loopstore', formData,
			{
				
			}
			).then(function (resp) {
				
				const vr6 = self.$router; 
				$("#result").html("<p><b class='red'> ... please allow a few moments to redirect </b></p>");
				setTimeout( () => vr6.push({ name: 'result', params: { id: self.mainid , email: self.email} }), 500); 
				//self.returnData2 =resp.data.jsonresult.allquestions;
				
			})
			.catch(function (resp) {
				console.log(resp);
				alert("Could not send" + resp);
			});
		}
	},	
}
</script>

<style>
  #result {
    align-items: center;
	font-size:16px;
	color:red;
	margin-top:20px;
	display:inline-block;
	width:93%;
	min-height:20px;
  }

  #result p {
	font-size:16px;
	color:red;
  }
  
  #result b {
	font-size:16px;
	color:red;
  }
  .red
  {
	color:red;
  }

</style>