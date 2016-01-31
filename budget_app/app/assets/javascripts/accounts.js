var accounts = {
  formId: "#js-account-form"
};

accounts.cancelBtnOnClick = function() {
  $(accounts.formId).addClass("hidden");
  $("#js-add-btn").removeClass("hidden");
};

accounts.addBtnOnClick = function() {
  $(accounts.formId).removeClass("hidden");
  $("#js-add-btn").addClass("hidden");
}
