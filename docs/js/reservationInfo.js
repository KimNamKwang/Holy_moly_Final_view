// 방문 희망일시
// 내일, 모레, 글피 mm/dd (E)

let today = new Date();
let fullDate;
let Year;
let month;
let date;
let day;

let week = new Array("일", "월", "화", "수", "목", "금", "토");

let trVisitDate = document.querySelector("#visit_date");
for (let i = 1; i <= 3; i++) {
  let thVisitDate = document.createElement("th");
  fullDate = new Date(today.setDate(today.getDate() + 1));
  month = fullDate.getMonth() + 1;
  date = fullDate.getDate();
  day = week[fullDate.getDay()];
  if (day != "일" && day != "토") {
    thVisitDate.innerHTML = month + "/" + date + " (" + day + ")";
    trVisitDate.appendChild(thVisitDate);
  } else i--;
}

/*
for (let i = 0; i < 4; i++) {
  let tbodyVisitTime = document.querySelector("#visitTimeTbody");
  let trVisitTime = document.querySelector("#visitTime");
  let thVisitTime = document.createElement("th");
  let startTime = 09 + i;
  let endTime = 11 + i;

  year = fullDate.getFullYear();
  month = fullDate.getMonth() + 1;
  date = fullDate.getDate();
  day = week[fullDate.getDay()];

  thVisitTime.innerHTML = startTime + ":00~" + endTime + ":00";
  trVisitTime.appendChild(thVisitTime);

  for (let i = 0; i < 3; i++) {
    let td = document.createElement("td");
    td.innerHTML =
      "<input" +
      " class='form-check-input'" +
      " style='zoom: 1.2'" +
      " type='radio'" +
      " name='visit-time-select'" +
      " id='visit-time_1_1'" +
      " value='" +
      year +
      "-" +
      month +
      "-" +
      date +
      " " +
      startTime +
      ":00:00" +
      "'/>" +
      "<label class='form-check-label' for='visit-time_1_1'" +
      ">신청</label>";

    trVisitTime.appendChild(td);
  }
  tbodyVisitTime.appendChild(tr);
}
*/
