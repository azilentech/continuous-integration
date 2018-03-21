function validateMobile(mobileNumber) {
  if (!mobileNumber) {
    return false;
  }

  return true;
}

exports.validateMobile = validateMobile;
