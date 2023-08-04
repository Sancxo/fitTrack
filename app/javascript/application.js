// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "popper"
import "bootstrap"
//= require popper
//= require bootstrap

// Event listener to dinamically put the footer on bottom page
document.addEventListener('turbo:load', () => {
    const footer = document.querySelector("footer");

    if (footer.offsetTop + footer.offsetHeight < window.innerHeight) {
        footer.style.position = 'absolute';
        footer.style.bottom = 0;
        footer.style.width = "100vw";
    }
})


