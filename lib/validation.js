function validateMobile(mobileNumber) {
  if (!mobileNumber) {
    return false;
  }

  if (mobileNumber.indexOf('+91') !== 0) {
    return false
  }

  return true;
}

exports.validateMobile = validateMobile;
