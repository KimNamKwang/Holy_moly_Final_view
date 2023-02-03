let queryButton = document.querySelector("#reserv_check_and_cancel");
queryButton.addEventListener("click", targetText);

function targetText(
  event /**event는 기본적으로 들어가는 파라미터이다. 어떤 것이든 입력을 의미 */
) {
  let queryTargetText = document.querySelector("#agreement_box");
  let queryChangeText = document.querySelector(
    "#text_for_reserv_check_and_cancel"
  );
  queryTargetText.innerHTML = queryChangeText;
}
