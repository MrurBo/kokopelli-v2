const hamburger = document.getElementById('hamburger');
const navMenu = document.getElementById('nav-menu');
const devButton = document.getElementById('devButton');
hamburger.addEventListener('click', () => {
    hamburger.classList.toggle('active');
    navMenu.classList.toggle('active');
});

devButton.addEventListener('click', () => {
    alert('This site is currently under development. Some features may not work as expected.');
    devButton.parentElement.parentElement.removeChild(devButton.parentElement);
})