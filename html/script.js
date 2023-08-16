const numberButtons = document.getElementById('number-buttons');

function createNumberButton(number) {
    const button = document.createElement('button');
    button.innerText = number;
    button.addEventListener('click', () => {
        selectNumber(number);
    });
    numberButtons.appendChild(button);
}

function selectNumber(number) {
    // Enviar el número seleccionado al servidor
    // Aquí deberías comunicarte con el servidor usando eventos personalizados o llamadas AJAX
    // Luego cierra el menú
    window.close();
}

document.addEventListener('DOMContentLoaded', () => {
    for (let i = 1; i <= 13; i++) {
        createNumberButton(i);
    }
});
