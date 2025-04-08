import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en": {
      AppStrings.chooseLanguage: "Choose Language",
      AppStrings.welcomeBack: "Welcome Back",
      AppStrings.enterEmail: "Enter Your Email",
      AppStrings.email: "Email",
      AppStrings.password: "Password",
      AppStrings.chooseProduct: "Choose Product",
      AppStrings.chooseYourProductFrom:
          "We Have a 100k Product , Choose \n Your Product From  Our \n E-commerce Shop",
      AppStrings.easySafePayment: "Easy And Safe Payment",
      AppStrings.easySafePaymentExplain:
          "Easy Checkout & Safe Payment\n method. Trusted by our Customers\n from all over the world",
      AppStrings.trackYourOrder: "Track Your Order",
      AppStrings.bestTrackerExplain: //14
          "Best Tracker has been Used For\nTrack your order. You'll know where\nyour product is at the moment",
      AppStrings.fastDelivery: "Fast Delivery", //15
      AppStrings.fastDeliveryExplain: //16
          "Reliable And Fast Delivery. We\nDeliver your product the fastest\nway possible",
      AppStrings.continueText: "Continue",
      AppStrings.signUp: "Sign Up",
      AppStrings.dontHaveAccount: "Don't Have An Account ? ",
      AppStrings.forgetPassword: "Forget Password",
      AppStrings.registerAccount: "Register Account",
      AppStrings.completeDetails:
          "complete your details or continue\n with social media",
      AppStrings.userName: "Username", //23
      AppStrings.enterUserName: "Enter Your Username", //24
      AppStrings.confirmPassword: "Confirm Password",
      AppStrings.reEnterPassword: "Enter your password again",
      AppStrings.alreadyHaveAccount: "Already have account? ",
      AppStrings.checkEmail: "Check Email",
      AppStrings.cashOrGatewayPayment:
          "You can pay in cash \n or through payment gateways",
      AppStrings.orderTracking:
          "The order can be tracked at every stage \n until it reaches you",
      AppStrings.signInPrompt:
          "Sign In Your Email And Password \nOr  Continue With Social Media",
      AppStrings.enterPassword: "Enter Your Password", //5
      AppStrings.signIn: "Sign In",
      AppStrings.phone: "Phone",
      AppStrings.enterPhone: "Enter Your Phone",
      AppStrings.signUpPrompt:
          "Sign Up With Your Email And Password OR Continue With Social Media",
      AppStrings.haveAccount: "have an account ?",
      AppStrings.accountCreated: "Account successfully created",
      AppStrings.enterEmailToVerify:
          "please Enter Your Email Address To Receive A verification code",
      AppStrings.check: "Check",
      AppStrings.goToLogin: "Go To Login",
      AppStrings.success: "Success",
      AppStrings.save: "save",
      AppStrings.enterNewPasswordExplain: "Please Enter new Password",
      AppStrings.newPassword: "New Password",
      AppStrings.enterNewPassword:"Enter New Password",
      AppStrings.passwordResetSuccess: "Password has been reset successfully",
      AppStrings.congratulations: "congratulations",
      AppStrings.successfullyRegistered: "successfully registered",
      AppStrings.resetPassword: "Reset Password",
      AppStrings.verificationCode: "Verification Code",
      AppStrings.checkCode: "Check Code",
      AppStrings.enterDigitCode:
          "Please Enter the Digit Code Sent to your email",
    },

    /// arabic section --------------------------------------------------------
    "ar": {
      AppStrings.chooseLanguage: "اختر اللغة",
      AppStrings.welcomeBack: "مرحبا بك",
      AppStrings.enterPassword: "ادخل كلمة المرور",
      AppStrings.email: "البريد الالكتروني",
      AppStrings.password: "كلمة المرور", //7
      AppStrings.chooseProduct: "اختر المنتج",
      AppStrings.chooseYourProductFrom:
          "نحن لدينا 100 الف منتج  , اختر \n  منتجك  من  متجرنا",
      AppStrings.easySafePayment: "طرق دفع آمنة وسهلة",
      AppStrings.easySafePaymentExplain:
          "نوفر طرق دفع سهلة وآمنة موثوق بها من قبل عملائنا من جميع أنحاء العالم",
      AppStrings.trackYourOrder: "تتبع طلبك",
      AppStrings.bestTrackerExplain:
          "تم استخدام أفضل أداة تتبع لتتبع طلبك. ستعرف مكان منتجك حاليًا.",
      AppStrings.fastDelivery: "توصيل سريع",
      AppStrings.fastDeliveryExplain:
          "توصيل سريع وموثوق\n نوصل منتجك بأسرع وقت ممكن.",
      AppStrings.continueText: "متابعه",
      AppStrings.signUp: " انشاء حساب",
      AppStrings.dontHaveAccount: "ليس لديك حساب ؟ ",
      AppStrings.forgetPassword: "نسيت كلمة المرور",
      AppStrings.registerAccount: "سجل حسابك",
      AppStrings.completeDetails:
          "أكمل تفاصيل حسابك أو\n تابع عبر وسائل التواصل الاجتماعي",
      AppStrings.userName: "اسم المستخدم",
      AppStrings.enterUserName: "ادخل اسم المستخدم",
      AppStrings.confirmPassword: "تأكيد كلمة المرور",
      AppStrings.reEnterPassword: "ادخل كلمة المرور مرة اخرى",
      AppStrings.alreadyHaveAccount: "لدي حساب بالفعل؟",
      AppStrings.cashOrGatewayPayment: "يمكنك الدفع نقدًا\nأو عبر بوابات الدفع",
      AppStrings.orderTracking: "يمكن تتبع الطلب في كل مرحلة\nحتى يصل إليك",
      AppStrings.signInPrompt:
          "سجل دخولك باستخدام البريد وكلمة المرور أو تابع عبر وسائل التواصل",
      AppStrings.enterEmail: "أدخل بريدك الإلكتروني",
      AppStrings.signIn: "تسجيل الدخول",
      AppStrings.phone: "الهاتف",
      AppStrings.enterPhone: "أدخل رقم الهاتف",
      AppStrings.signUpPrompt:
          "أنشئ حسابًا بالبريد وكلمة المرور أو تابع عبر وسائل التواصل",
      AppStrings.haveAccount: "هل لديك حساب؟",
      AppStrings.checkEmail: "تحقق من البريد",
      AppStrings.accountCreated: "تم إنشاء الحساب بنجاح",
      AppStrings.enterEmailToVerify: "الرجاء إدخال بريدك لاستلام رمز التحقق",
      AppStrings.check: "تحقق",
      AppStrings.goToLogin: "اذهب لتسجيل الدخول",
      AppStrings.success: "نجاح",
      AppStrings.save: "حفظ",
      AppStrings.enterNewPasswordExplain: "من فضلك أدخل كلمة مرور جديدة",
      AppStrings.newPassword: "كلمة المرور الجديدة",
      AppStrings.enterNewPassword:"ادخل كلمة المرور الجديدة",
      AppStrings.passwordResetSuccess: "تمت إعادة تعيين كلمة المرور بنجاح",
      AppStrings.congratulations: "تهانينا",
      AppStrings.successfullyRegistered: "تم التسجيل بنجاح",
      AppStrings.resetPassword: "إعادة تعيين كلمة المرور",
      AppStrings.verificationCode: "رمز التحقق",
      AppStrings.checkCode: "التحقق من الرمز",
      AppStrings.enterDigitCode: "الرجاء إدخال الرمز الرقمي المرسل إلى بريدك الإلكتروني",
    },
  };
}
