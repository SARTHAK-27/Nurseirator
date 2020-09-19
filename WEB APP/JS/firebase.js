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



function signup(){

  document.getElementById('').addEventListener('',function(e){

    e.preventDefault();

    var first_name = document.getElementById('');
    var first_name = document.getElementById('');
    var first_name = document.getElementById('');
    var first_name = document.getElementById('');
    var first_name = document.getElementById('');
    var first_name = document.getElementById('');
    var first_name = document.getElementById('');
    var first_name = document.getElementById('');
  
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

