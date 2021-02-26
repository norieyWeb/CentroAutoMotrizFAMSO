var FormUno = document.getElementById("primerFormulario");
var FormDos = document.getElementById("segundoFormulario");
var FormTres = document.getElementById("tercerFormulario");

var btnUno = document.getElementById("primerBotonControl");
var btnDos = document.getElementById("segundoBotonControl");
var btnTres = document.getElementById("tercerBotonControl");
var btnCuatro = document.getElementById("cuartoBotonControl");
var btnCinco = document.getElementById("quintoBotonControl");
var btnSeis = document.getElementById("sextoBotonControl");

 
btnUno.addEventListener('click',function(){

	
		FormDos.classList.remove('none');
        FormUno.classList.add('none');
    //     if(FormDos.classList.contains('none')){
	// 	// menuActivo.style.color = "#3E269B";		
	// }else{
		
	// 	// menuActivo.style.color = "white";
	// }

});

btnDos.addEventListener('click',function(){

	
    FormUno.classList.remove('none');
    FormDos.classList.add('none');
//     if(FormDos.classList.contains('none')){
// 	// menuActivo.style.color = "#3E269B";		
// }else{
    
// 	// menuActivo.style.color = "white";
// }

});

btnTres.addEventListener('click',function(){

	
    FormDos.classList.add('none');
    FormTres.classList.remove('none');
//     if(FormDos.classList.contains('none')){
// 	// menuActivo.style.color = "#3E269B";		
// }else{
    
// 	// menuActivo.style.color = "white";
// }

});

btnCuatro.addEventListener('click',function(){

	
    FormTres.classList.add('none');
    FormDos.classList.remove('none');
//     if(FormDos.classList.contains('none')){
// 	// menuActivo.style.color = "#3E269B";		
// }else{
    
// 	// menuActivo.style.color = "white";
// }

});

btnCinco.addEventListener('click',function(){

	
    alert("guardado en mi perfil");

});

btnSeis.addEventListener('click',function(){

	
    FormTres.classList.add('none');
    FormDos.classList.add('none');
    FormUno.classList.remove('none');
//     if(FormDos.classList.contains('none')){
// 	// menuActivo.style.color = "#3E269B";		
// }else{
    
// 	// menuActivo.style.color = "white";
// }

});