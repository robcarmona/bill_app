var bills = {
  formId: "#js-bill-form",
  addBtnId: "#js-add-btn"
};

bills.cancelBtnOnClick = function() {
  $(this.formId).slideUp();
  $(this.addBtnId).slideDown();
};

bills.addBtnOnClick = function() {
  $(this.formId).slideDown();
  $(this.addBtnId).slideUp();
}
