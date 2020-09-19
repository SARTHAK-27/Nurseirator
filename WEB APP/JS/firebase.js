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


function login(){

  document.getElementById('').addEventListener('',function(e){

    e.preventDefault();

  
  
  
  
  
  });



}

function signup(){


}

function logout(){

  firebase.auth().onAuthStateChanged(user => {
    if(user){
      firebase.auth().signOut();
      window.location = '.html'; 
    }
  
  });


}

