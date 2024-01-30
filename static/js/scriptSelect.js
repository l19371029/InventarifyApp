document.addEventListener("DOMContentLoaded", function() {
    const items = document.querySelectorAll(".item");

    items.forEach(item => {
        item.addEventListener("click", () => {
            item.classList.toggle("checked");
        });
    });
});


document.addEventListener("DOMContentLoaded", function() {
    const checkboxes = document.querySelectorAll(".list-items input[type='checkbox']");
    const miBoton = document.getElementById("miBoton");

    checkboxes.forEach(checkbox => {
        checkbox.addEventListener("change", actualizarEstadoBoton);
    });

    function actualizarEstadoBoton() {
        const algunCheckboxSeleccionado = Array.from(checkboxes).some(checkbox => checkbox.checked);
        miBoton.disabled = !algunCheckboxSeleccionado;
    }
});

