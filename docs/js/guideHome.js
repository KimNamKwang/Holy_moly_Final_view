document.getElementById("how_to_use").addEventListener("click", function () {
  opacityForHowToUse();
  showContentsHowToUse();
});

function opacityForHowToUse(event) {
  document.getElementById("how_to_use").style.opacity = "1";
  document.getElementById("pee_notice").style.opacity = "0.5";
  document.getElementById("delivery_process").style.opacity = "0.5";
}

function showContentsHowToUse(event) {
  document.getElementById("content_how_to_use").style.display = "block";
  document.getElementById("content_pee_notice").style.display = "none";
  document.getElementById("content_delivery_process").style.display = "none";
}

document.getElementById("pee_notice").addEventListener("click", function () {
  opacityForPeeNotice();
  showContentsPeeNotice();
});

function opacityForPeeNotice(event) {
  document.getElementById("pee_notice").style.opacity = "1";
  document.getElementById("how_to_use").style.opacity = "0.5";
  document.getElementById("delivery_process").style.opacity = "0.5";
}

function showContentsPeeNotice(event) {
  document.getElementById("content_pee_notice").style.display = "block";
  document.getElementById("content_how_to_use").style.display = "none";
  document.getElementById("content_delivery_process").style.display = "none";
}

document
  .getElementById("delivery_process")
  .addEventListener("click", function () {
    opacityForDeliveryProcess();
    showContentsDeliveryProcess();
  });

function opacityForDeliveryProcess(event) {
  document.getElementById("delivery_process").style.opacity = "1";
  document.getElementById("pee_notice").style.opacity = "0.5";
  document.getElementById("how_to_use").style.opacity = "0.5";
}

function showContentsDeliveryProcess(event) {
  document.getElementById("content_delivery_process").style.display = "block";
  document.getElementById("content_pee_notice").style.display = "none";
  document.getElementById("content_how_to_use").style.display = "none";
}
