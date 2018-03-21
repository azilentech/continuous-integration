function validateMobile(mobileNumber) {
  if (!mobileNumber) {
    return false;
  }

  if (mobileNumber.indexOf('+91') === -1) {
    return false;
  }

  return true;
}

exports.validateMobile = validateMobile;
