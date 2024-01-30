document.addEventListener("DOMContentLoaded", function() {
    showModal();
});

function showModal() {
    var modal = document.getElementById("welcomeModal");
    modal.style.display = "block";
}

function closeModal() {
    var modal = document.getElementById("welcomeModal");
    modal.style.display = "none";
}