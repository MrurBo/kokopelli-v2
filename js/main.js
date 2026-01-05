const devButton = document.getElementById('devButton');

devButton.addEventListener('click', () => {
    alert('This site is currently under development. Some features may not work as expected.');
    devButton.parentElement.parentElement.removeChild(devButton.parentElement);
})
