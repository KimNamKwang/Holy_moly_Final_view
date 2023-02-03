function targetText(
  event /**event는 기본적으로 들어가는 파라미터이다. 어떤 것이든 입력을 의미 */
) {
  let queryTargetText = document.querySelector("#agreement_box");
  let queryChangeText = document.getElementById(
    "#text_for_reserv_check_and_cancel"
  );
  queryTargetText.innerHTML = queryChangeText;
  let changeOpacity = document.getElementById("abc");
  x.style.fontSize = "25px";
  x.style.color = "blue";
}

function changeToGeneralReserv(event) {
  let queryTargetText = document.querySelector("#agreement_box");
  let queryChangeText = document.getElementById(
    "#text_for_reserv_check_and_cancel"
  );
  queryTargetText.queryTargetText.innerHTML = queryChangeText;
  let changeOpacity = document.getElementById("abc");
  x.style.fontSize = "25px";
  x.style.color = "blue";
}

// $(document).ready(function () {
//   //with ID
//   $("#reserv_check_and_cancel").click(function () {
//     $("#reserv_for_home").css({ opacity: "50" });
//   });
// });
