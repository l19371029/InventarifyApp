function updateStatus() {
    var checkbox = document.getElementById("themeCheckbox");
    var statusField = document.getElementById("status");

    statusField.value = checkbox.checked ? "inactivo" : "activo";
}