// API links

const String linkServerName = "http://192.168.8.104/ecommerce-php";

///================= images ================================///
const String linkImages = "$linkServerName/upload";
const String linkImageCategories = "$linkImages/categories";
const String linkImageItems = "$linkImages/items";

///================== auth =============================== ///
const String linkSignUp = "$linkServerName/auth/signup.php";
const String linkLogin = "$linkServerName/auth/login.php";
const String linkVerifyCodeSignUp =
    "$linkServerName/auth/verifycode_signup.php";

///================= forget password ===================== ///
const String linkCheckEmail = "$linkServerName/forget_password/checkemail.php";
const String linkResetPassword =
    "$linkServerName/forget_password/reset_password.php";
const String linkVerifyCode = "$linkServerName/forget_password/verifycode.php";

/// Home
const String linkHome = "$linkServerName/home.php";
const String linkItems = "$linkServerName/items/items.php";
