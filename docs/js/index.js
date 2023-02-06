document.getElementById("menus_second").addEventListener("click", function () {
  opacityForMenusSecond();
  showMenuIconsSecond();
});

function opacityForMenusSecond(event) {
  document.getElementById("menus_first").style.opacity = "0.5";
  document.getElementById("menus_second").style.opacity = "1";
}

function showMenuIconsSecond(event) {
  document.getElementById("menu_icons_first").style.display = "none";
  document.getElementById("menu_icons_second").style.display = "flex";
}

document.getElementById("menus_first").addEventListener("click", function () {
  opacityForMenusFirst();
  showMenuIconsFirst();
});

function opacityForMenusFirst(event) {
  document.getElementById("menus_first").style.opacity = "1";
  document.getElementById("menus_second").style.opacity = "0.5";
}

function showMenuIconsFirst(event) {
  document.getElementById("menu_icons_second").style.display = "none";
  document.getElementById("menu_icons_first").style.display = "flex";
}
