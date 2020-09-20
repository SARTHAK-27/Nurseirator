var firebaseConfig = {
    apiKey: "AIzaSyBzEOXBhxsXSiNrW-lhlU3qGM_h-W_9Yac",
    authDomain: "nurseirator.firebaseapp.com",
    databaseURL: "https://nurseirator.firebaseio.com",
    projectId: "nurseirator",
    storageBucket: "nurseirator.appspot.com",
    messagingSenderId: "123150135897",
    appId: "1:123150135897:web:b023fa42bdd698825bf748",
    measurementId: "G-LBVPTWKWKL"
  };

  firebase.initializeApp(firebaseConfig);

//LOGIN FIREBASE FUNCTION
function login(){

  document.getElementById('login').addEventListener('submit',function(e){

    e.preventDefault();

    var mail = document.getElementById('mail');
    var pass = document.getElementById('paswd');
    var desig = document.getElementById('role');
   
    firebase.auth().signInWithEmailAndPassword(mail.value, pass.value)
      .then(function(response){

        console.log("Successfull",response),
        firebase.auth().onAuthStateChanged(user =>{

          if(user){

            console.log(user.role);
          
            firebase.database().ref(desig.value+'\/'+user.uid).once("value",snap=>{
              
             if(snap.val().role!=null){
               window.location = desig.value+'.html';
             }

             else if(snap.val().role==null){
               alert("wrong credentials! ");
               window.location='login.html';
             }
             else{
              alert("wrong credentials! ");
              window.location='login.html';
             }
              
            }).catch(function(error){
              var error_code = error.code;
              var errorMessage = error.Message;
              console.log(error_code);
              console.log(errorMessage);
              alert("wrong cred!");
              window.location='login.html';
              })
  

          }
          else{
            alert("No user logged in!");
            window.location= 'main.html';

          }
        }).catch(function(error){
          var error_code = error.code;
          var errorMessage = error.Message;
          console.log(error_code);
          console.log(errorMessage);
          alert("wrong cred!");
          window.location='login.html';
          })
      });
  });

}


//FUNCTION FOR SIGNUP FIREBASE
function signup(){

  document.getElementById('Signup').addEventListener('submit',function(e){

    e.preventDefault();

    var first_name = document.getElementById('first_name');
    var last_name = document.getElementById('last_name');
    var pass= document.getElementById('paswd');
    var mail = document.getElementById('mail');
    var ph= document.getElementById('phone');
    var adr= document.getElementById('address');
    var cty= document.getElementById('City');
    var ste= document.getElementById('state');
    var zip_code= document.getElementById('code');
    var sex= document.getElementById('gender');
    var desig= document.getElementById('role');
    var full_name = first_name.value+' '+last_name.value;

    firebase.auth().createUserWithEmailAndPassword(mail.value,pass.value)
      .then(function(response){

          uid = firebase.auth().currentUser.uid,
          firebase.database().ref(desig.value+'\/'+uid).set({
            Userid      :uid,
            First_Name  :first_name.value,
            Last_Name   :last_name.value,
            Email       :mail.value,
            Password    :pass.value,
            role        :desig.value,
            Phone       :ph.value,
            Gender      :sex.value,
            Address     :adr.value,
            City        :cty.value,
            State       :ste.value,
            Zipcode     :zip_code.value
            })
            .then(function(response){
              console.log("Added succesfully")
              window.location=desig.value+'details.html'

          }).catch(function(error){
            var error_code = error.code;
            var errorMessage = error.Message;
            console.log(error_code);
            console.log(errorMessage);
    
            })


    }).catch(function(error){
        var error_code = error.code;
        var errorMessage = error.Message;
        console.log(error_code);
        console.log(errorMessage);

      });
  
  });
}


//FUNCTION TO LOGOUT USERS
function logout(){

  firebase.auth().onAuthStateChanged(user => {
    if(user){
      
      window.location = 'main.html'; 
      firebase.auth().signOut();
      
    }
  
  });
}


//FUNCTION TO ADD MEDICINE FOR FIRST TIME

function med_First(){

  
  document.getElementById('fmed').addEventListener('submit',function(e){

    e.preventDefault();
    
    var mon = document.getElementById('mon');  
    var tues= document.getElementById('tue');    
    var wed = document.getElementById('wed');  
    var thus= document.getElementById('thus');
    var fri = document.getElementById('fri');  
    var sat= document.getElementById('sat');
    var sun = document.getElementById('sun');
    var treat = document.getElementById('Treatment');  
    var covid= document.getElementById('covid');
    var bgrp = document.getElementById('bgroup');

    firebase.auth().onAuthStateChanged(user => {
      if(user) {
        console.log("hi");
        firebase.database().ref('Medi/'+user.uid).set({

          Monday    :mon.value,
          Tuesday   :tues.value,
          Wednesday :wed.value,
          Thursday  :thus.value,
          Friday    :fri.value,
          Saturday  :sat.value,
          Sunday    :sun.value,
          covid_test:covid.value,
          treatment :treat.value,
          blood_group:bgrp.value})
          .then(function(response){
            
            console.log("Medicine Added!"),
            window.location='patient.html';

        });
      }
      
      else{

      alert("NO user!!");
      window.location='main.html';
      }

    });
  
  });
}


//FUNCTION TO ADD Nurse details FOR FIRST TIME

function nurse(){

  
  document.getElementById('nurse_who').addEventListener('submit',function(e){

    e.preventDefault();
    
    var licno = document.getElementById('lino');  
    var hospital= document.getElementById('Hospital');    
    var covid = document.getElementById('covid');  
    var afro= document.getElementById('afro');
    var ato = document.getElementById('ato');  
    
    firebase.auth().onAuthStateChanged(user => {
      if(user) {
        console.log("hi");
        firebase.database().ref('nurse/'+user.uid+'/extra').set({

        License_no:licno.value,
        Hospital:hospital.value,
        covid_test:covid.value,
        avail_from:afro.value,
        avail_to:ato.value})
          .then(function(response){
            
            console.log("details Added!"),
            window.location='nurse.html';

        });
      }
      
      else{

      alert("NO user!!");
      window.location='main.html';
      }

    });
  
  });
}




//FUNCTION TO ADD doctor details FOR FIRST TIME
function doc(){

  
  document.getElementById('doctor_who').addEventListener('submit',function(e){

    e.preventDefault();
    
    var licno = document.getElementById('lino');  
    var hospital= document.getElementById('Hospital');    
    var covid = document.getElementById('covid');  
    var speciality= document.getElementById('Speciality');
   
    
    firebase.auth().onAuthStateChanged(user => {
      if(user) {
        console.log("hi");
        firebase.database().ref('doctor/'+user.uid+'/extra').set({

        License_no:licno.value,
        Hospital:hospital.value,
        covid_test:covid.value,
        speciality:speciality.value})
          .then(function(response){
            
            console.log("details Added!"),
            window.location='doctor.html';

        });
      }
      
      else{

      alert("NO user!!");
      window.location='main.html';
      }

    });
  
  });
}







//FUNCTION TO update MEDICINE 

function med(){

  
  document.getElementById('').addEventListener('',function(e){

    e.preventDefault();
    
    var mon = document.getElementById('mon');  
    var tues= document.getElementById('tue');    
    var wed = document.getElementById('wed');  
    var thus= document.getElementById('thus');
    var fri = document.getElementById('fri');  
    var sat= document.getElementById('sat');
    var sun = document.getElementById('sun');

    firebase.auth().onAuthStateChanged(user => {
      if(user) {
        Firebase.database().ref('Medi/'+user.Messageuid).set({

          Monday    :mon.value,
          Tuesday   :tues.value,
          Wednesday :wed.value,
          Thursday  :thus.value,
          Friday    :fri.value,
          Saturday  :sat.value,
          Sunday    :sun.value})
          .then(function(response){
            
            console.log("Medicine Updatd!"),
            window.location='.html';

        });
      }
      
      else{

      
      }

    });
  
  });
}


//Display Information about patient in Patient html
function display_patient(){

  firebase.auth().onAuthStateChanged(user => {

    if(user){

        uid=  user.uid;

        var name=document.getElementById('patient_name');
        var mon=document.getElementById('mon');
        var tue=document.getElementById('tue');
        var wed=document.getElementById('wed');
        var thus=document.getElementById('thus');
        var fri=document.getElementById('fri');
        var sat=document.getElementById('sat');
        var sun=document.getElementById('sun');

        
        firebase.database().ref('patient/'+uid).once("value",snap=>{

          name.innerHTML = snap.val().First_Name +" "+snap.val().Last_Name 

        }).then(function(response){

            firebase.database().ref('Medi/'+uid).once("value",snap=>{

              mon.innerHTML = snap.val().Monday;
              tue.innerHTML = snap.val().Tuesday;
              wed.innerHTML = snap.val().Wednesday;
              thus.innerHTML = snap.val().Thursday;
              fri.innerHTML = snap.val().Friday;
              sat.innerHTML = snap.val().Saturday;
              sun.innerHTML = snap.val().Sunday;

            });


        });

      

    }else{
      window.location='main.html';
      alert("Signed out");
      


    }



  });



}

//Display Information about patient in Nurse html
function display_Nurse(){


  firebase.auth().onAuthStateChanged(user => {

    if(user){
      uid=  user.uid;

      var name = document.getElementById('nurse_name');
      var hospital = document.getElementById('hospital');
      var licno =document.getElementById('lino');
      firebase.database().ref('nurse/'+uid).once("value",snap=>{

        name.innerHTML = snap.val().First_Name +" "+ snap.val().Last_Name;
      }).then(function(response){


        firebase.database().ref('nurse/'+ uid +'/extra').once("value",snap=>{

          licno.innerHTML = snap.val().License_no;
          hospital.innerHTML=snap.val().Hospital;


        })


      })


    }
    else{
      window.location='main.html';
      alert("Signed out");
      


    }
  
  
  });


}

//Display Information about patient in doctor html
function display_Doctor(){


  firebase.auth().onAuthStateChanged(user => {

    if(user){
      uid=  user.uid;

      var name = document.getElementById('doctor_name');
      var hospital = document.getElementById('hospital');
      var licno =document.getElementById('lino');
      firebase.database().ref('doctor/'+uid).once("value",snap=>{

        name.innerHTML = snap.val().First_Name +" "+ snap.val().Last_Name;
      }).then(function(response){

        firebase.database().ref('doctor/'+ uid +'/extra').once("value",snap=>{

          licno.innerHTML = snap.val().License_no;
          hospital.innerHTML=snap.val().Hospital;


        })
        


      })


    }
    else{
      window.location='main.html';
      alert("Signed out");
      


    }
  
  
  });



}


