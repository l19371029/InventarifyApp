function updateCriticidad() {
    var cValue = parseFloat(document.getElementsByName('c')[0].value) || 0;
    var iValue = parseFloat(document.getElementsByName('i')[0].value) || 0;
    var dValue = parseFloat(document.getElementsByName('d')[0].value) || 0;
    if (cValue > 3 || iValue > 3 || dValue > 3) {
        alert(`Por favor ingrese valores validos hasta tres`);
        document.getElementsByName(columnName.toLowerCase())[0].value = 3;
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
    return criticidadValue >= 5 ? 'Crítico' : 'No crítico';
}

function getBackgroundColor(criticidadValue) {
    return criticidadValue >= 5 ? 'red' : 'green';
}
function validarNumero(input) {
    var valor = parseFloat(input.value);
    if (isNaN(valor) || valor < 1) {
        alert("Por favor, ingrese un número positivo mayor o igual a 1.");
        input.value = "";
    }
    validarDatos();
}