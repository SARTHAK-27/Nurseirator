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

  document.getElementById('').addEventListener('',function(e){

    e.preventDefault();

    var mail = document.getElementById('');
    var pass = document.getElementById('');
    var desig = document.getElementById('');
   
    firebase.auth().signInWithEmailAndPassword(mail.value, pass.value)
      .then(function(response){

        console.log("Successfull"),
        firebase.auth().onAuthStateChanged(user =>{

          if(user){


            firebase.database().ref(desig.value+'\/'+user.uid).once("value",snap=>{

             if(desig.value.localeCompare(snap.val().role)==0){
               window.location = desig.value+'.html';
             }

             else{
               alert("wrong credentials! ");
               window.location='login.html';
             }
              
            })

          }
          else{
            alert("No user logged in!");
            window.location= 'main.html';

          }
        })
      });
  
  
  });

}


//FUNCTION FOR SIGNUP FIREBASE
function signup(){

  document.getElementById('').addEventListener('',function(e){

    e.preventDefault();

    var first_name = document.getElementById('');
    var last_name = document.getElementById('');
    var pass= document.getElementById('');
    var mail = document.getElementById('');
    var ph= document.getElementById('');
    var adr= document.getElementById('');
    var cty= document.getElementById('');
    var ste= document.getElementById('');
    var zip_code= document.getElementById('');
    var sex= document.getElementById('');
    var designation= document.getElementById('');
    var full_name = first_name.value+' '+last_name.value;

    firebase.auth().createUserWithEmailAndPassword(mail.value,pass.value)
      .then(function(response){

          uid = firebase.auth().currentUser.uid,
          firebase.database().ref(desig.value+'\/'+uid).set({

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
              window.location='.html'

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

function logout(){

  firebase.auth().onAuthStateChanged(user => {
    if(user){
      firebase.auth().signOut();
      window.location = '.html'; 
    }
  
  });


}

