// 택배별 포장방법 클릭 시 이벤트
document
  .getElementById("post_packaging")
  .addEventListener("click", function () {
    opacityForPostPackaging();
    showContentsPostPackaging();
  });

function opacityForPostPackaging(event) {
  document.getElementById("post_packaging").style.opacity = "1";
  document.getElementById("item_packaging").style.opacity = "0.5";
}

function showContentsPostPackaging(event) {
  document.getElementById("content_post_packaging").style.display = "block";
  document.getElementById("content_item_packaging").style.display = "none";
}

// 품목별 포장방법 클릭 시 이벤트
document
  .getElementById("item_packaging")
  .addEventListener("click", function () {
    opacityForItemPackaging();
    showContentsItemPackaging();
  });

function opacityForItemPackaging(event) {
  document.getElementById("item_packaging").style.opacity = "1";
  document.getElementById("post_packaging").style.opacity = "0.5";
}

function showContentsItemPackaging(event) {
  document.getElementById("content_item_packaging").style.display = "block";
  document.getElementById("content_post_packaging").style.display = "none";
}
