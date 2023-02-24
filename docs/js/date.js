let today = new Date();
let fullDate;
let Year;
let Month;
let date;
let day;

let week = new Array("일", "월", "화", "수", "목", "금", "토");

let selectVisitingDate = document.querySelector("#d_req_date_select");
let resultDate;
for (let i = 1; i <= 3; i++) {
  fullDate = new Date(today.setDate(today.getDate() + 1));
  Year = fullDate.getFullYear();
  Month = fullDate.getMonth() + 1;
  date = fullDate.getDate();
  day = week[fullDate.getDay()];

  resultDate = Year + "년 " + Month + "월 " + date + "일 (" + day + ")";
  selectVisitingDate.innerHTML +=
    "<option value='" + Year + Month + date + "'>" + resultDate + "</option>";
  console.log(resultDate);
}
