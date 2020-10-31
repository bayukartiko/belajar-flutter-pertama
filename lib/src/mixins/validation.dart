class validation {
  String validateName(String value) {
    if (value.isEmpty) {
      return 'Nama lengkap harus diisi !';
    }
    return null;
  }

  String validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email harus diisi !';
    }
    if (!value.contains('@')) {
      return 'Email tidak valid !';
    }
    return null;
  }

  String validateNotlp(String value) {
    if (value.isEmpty) {
      return 'Nomor telepon harus diisi !';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password minimal 4 karakter !';
    }
    return null;
  }

}
