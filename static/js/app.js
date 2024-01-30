function toggleSeccion(titulo) {
    var seccion = titulo.parentNode;
    seccion.classList.toggle("abierta");
}

function addRows() {
    var table = document.getElementById('editableTable');
    var rowNumberInput = document.getElementById('rowNumber');
    var rowNumber = parseInt(rowNumberInput.value);
   
    if (isNaN(rowNumber) || rowNumber <= 0) {
        alert('Please enter a valid positive number.');
        return;
    }
    
    var tbody = table.querySelector('tbody');
    
        for (var i = 0; i < rowNumber; i++) {
            var newRow = document.createElement('tr');
    
            for (var j = 0; j < 12; j++) {
                var cell = document.createElement('td');
                cell.classList.add('editable');
                cell.setAttribute('contenteditable', 'true');
                newRow.appendChild(cell);
            }
        
            tbody.appendChild(newRow);
        }
}
    



  