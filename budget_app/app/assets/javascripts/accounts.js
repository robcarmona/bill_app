var accounts = {
  formId: "#js-account-form",
  addBtnId: "#js-add-btn"
};

accounts.cancelBtnOnClick = function() {
  $(this.formId).slideUp();
  $(this.addBtnId).slideDown();
};

accounts.addBtnOnClick = function() {
  $(this.formId).slideDown();
  $(this.addBtnId).slideUp();
}
