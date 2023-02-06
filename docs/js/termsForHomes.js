document
  .getElementById("reserv_check_and_cancel")
  .addEventListener("click", function () {
    greenBorderForReservCheckAndCancel();
    showTextForReservCheckAndCancel();
  });

function greenBorderForReservCheckAndCancel(
  event /**event는 기본적으로 들어가는 파라미터이다. 어떤 것이든 입력을 의미 */
) {
  document.getElementById("reserv_check_and_cancel").style.borderBottom =
    "3px solid rgb(55, 210, 67)";
  document.getElementById("reserv_for_home").style.opacity = "0.5";
  document.getElementById("reserv_check_and_cancel").style.opacity = "1";
  document.getElementById("reserv_for_home").style.borderBottom = "";
}

function showTextForReservCheckAndCancel(
  event /**event는 기본적으로 들어가는 파라미터이다. 어떤 것이든 입력을 의미 */
) {
  document.getElementById("text_for_reserv_check_and_cancel").style.display =
    "block";
  document.getElementById("agreement_box").style.display = "none";
}

document
  .getElementById("reserv_for_home")
  .addEventListener("click", function () {
    showAgreementBox();
    greenBorderForReservForHome();
  });

function showAgreementBox(
  event /**event는 기본적으로 들어가는 파라미터이다. 어떤 것이든 입력을 의미 */
) {
  document.getElementById("agreement_box").style.display = "block";
  document.getElementById("boxForChange").style.display = "none";
  document.getElementById("text_for_reserv_check_and_cancel").style.display =
    "none";
}

function greenBorderForReservForHome(
  event /**event는 기본적으로 들어가는 파라미터이다. 어떤 것이든 입력을 의미 */
) {
  document.getElementById("reserv_for_home").style.opacity = "1";
  document.getElementById("reserv_for_home").style.borderBottom =
    "3px solid rgb(55, 210, 67)";
  document.getElementById("reserv_check_and_cancel").style.opacity = "0.5";
  document.getElementById("reserv_check_and_cancel").style.borderBottom = "";
}

function selectAll(selectAll) {
  const checkboxes = document.getElementsByName("agree");

  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked;
  });
}
