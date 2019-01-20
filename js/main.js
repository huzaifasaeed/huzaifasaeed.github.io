'use strict';

var root = document.documentElement;
var body = document.body;
var themeBtns = document.querySelectorAll('.theme-btns > button');

themeBtns.forEach(function (btn) {
  btn.addEventListener('click', handleThemeUpdate);
});

function handleThemeUpdate(e) {
  if (e.target.dataset.theme == 'white') {
    body.classList.add('white-theme');
  } else {
    body.classList.remove('white-theme');
  }
}
