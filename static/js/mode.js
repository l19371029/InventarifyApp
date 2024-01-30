const themeDark = () => {
    document.querySelector("body").setAttribute("data-bs-theme", "dark");
    document.querySelector("#dl-icon").setAttribute("class", "bi bi-sun-fill");
}

const themeSun = () => {
    document.querySelector("body").setAttribute("data-bs-theme", "light");
    document.querySelector("#dl-icon").setAttribute("class", "bi bi-moon-fill");
}

const modeChange = () => {
    document.querySelector("body").setAttribute("data-bs-theme") === "light"?
    themeDark() : themeSun();
}