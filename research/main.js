const exampleBtn = document.querySelectorAll(".exampleBtn");

exampleBtn.forEach(btn => {
  btn.addEventListener("click", () => {
    Swal.fire("Examples in the github repository");
  });
});
