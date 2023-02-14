let plus = document.getElementById("plus");
let minus = document.getElementById("minus");
let result = document.getElementById("result");
let totalcost = document.getElementById("totalcost");
let i = 1;

document.getElementById("minus").addEventListener("click", function () {
  minusOne();
});

function minusOne(event) {
  if (i > 0) {
    i--;
    result.textContent = i;
    let totalcostNum = i * 3500;
    totalcost.textContent = totalcostNum.toLocaleString();
  } else {
    totalcost.textContent = 0;
  }
}

document.getElementById("plus").addEventListener("click", function () {
  plusOne();
});

function plusOne(event) {
  i++;
  result.textContent = i;
  let totalcostNum = i * 3500;
  totalcost.textContent = totalcostNum.toLocaleString();
}
