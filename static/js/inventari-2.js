function updateCriticidad() {
    var cValue = parseFloat(document.getElementsByName('c')[0].value) || 0;
    var iValue = parseFloat(document.getElementsByName('i')[0].value) || 0;
    var dValue = parseFloat(document.getElementsByName('d')[0].value) || 0;
    if (cValue > 5 || iValue > 5 || dValue > 5) {
        alert(`Por favor ingrese valor valido hasta cinco`);
        document.getElementsByName(columnName.toLowerCase())[0].value = 5;
    }
    var criticidadElement = document.getElementById('criticidad');
    var clasificacionElement = document.getElementById('clasificacion');
    var criticidadValue = cValue + iValue + dValue;
    
    criticidadElement.value = criticidadValue.toFixed(2); 

    clasificacionElement.value = getClasificacion(criticidadValue);
    clasificacionElement.style.backgroundColor = getBackgroundColor(criticidadValue);
    clasificacionElement.style.color = 'white';  
}

function getClasificacion(criticidadValue) {
    return criticidadValue >= 9 ? 'Crítico' : 'No crítico';
}

function getBackgroundColor(criticidadValue) {
    return criticidadValue >= 9 ? 'red' : 'green';
}

function validarNumero(input) {
    var valor = parseFloat(input.value);
    if (isNaN(valor) || valor < 1) {
        alert("Por favor, ingrese un número positivo mayor o igual a 1.");
        input.value = "";
    }
    validarDatos(); 
}