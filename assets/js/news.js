//---------------------VALIDAÇÃO NOME---------------------------//

let nomeInput = document.getElementById("nome");
let nomeLabel = document.querySelector('label[for="nome"]');
let nomeHelper = document.getElementById("nome-helper");

let emailInput = document.getElementById("email");
let emailLabel = document.querySelector('label[for="email"]');
let emailHelper = document.getElementById("email-helper");


// Mostrar popup de campo obrigatório //

nomeInput.addEventListener("focus", () => {
    nomeLabel.classList.add("required-popup")
})

emailInput.addEventListener("focus", () => {
    emailLabel.classList.add("required-popup")
})

// Ocultar popup de campo obrigatório //

nomeInput.addEventListener("blur", () => {
    nomeLabel.classList.remove("required-popup")
})

emailInput.addEventListener("blur", () =>{
    emailLabel.classList.remove("required-popup")
})

emailInput.addEventListener("change", function(e){
    let valor= e.target.value
    if(valor.includes("@") && valor.includes(".com")){
        //Email válido//
    emailInput.classList.remove("error");
    emailInput.classList.add("correct");
    emailHelper.classList.remove("visible");
    }else{
        //Email incorreto//
    emailInput.classList.remove("correct");
    emailInput.classList.add("error");
    emailHelper.innerText = "E-mail inválido";
    emailHelper.classList.add("visible");
    }
})

