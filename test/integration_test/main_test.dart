import 'package:bloc_login/presentation/pages/auth/forgot-password-code.dart';
import 'package:bloc_login/presentation/pages/auth/forgot-password-password-update.dart';
import 'package:bloc_login/presentation/pages/auth/forgot_password.dart';
import 'package:bloc_login/presentation/pages/auth/login.dart';
import 'package:bloc_login/presentation/pages/home/home.dart';
import 'package:bloc_login/presentation/pages/register/register_public.dart';
import 'package:bloc_login/presentation/pages/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
// import 'package:bloc_login/presentation/pages/welcome.dart' as app;
import 'package:bloc_login/presentation/pages/auth/login.dart' as app;

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Can Login ', (WidgetTester tester) async {
    testWidgets('Can Login ', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home:WelcomeScreen(),debugShowCheckedModeBanner: false,));
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      final signUpFinder = find.byWidgetPredicate((widget) => widget is ElevatedButton
          && widget.child is Text
          && (widget.child as Text).data=="Register");
      expect(signUpFinder, findsOneWidget);
      await tester.tap(signUpFinder);
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home:RegisterPublic(),debugShowCheckedModeBanner: false,));
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      final emailSignUpInput = find.byKey(const Key('signUpEmail'));
      expect(emailSignUpInput,findsOneWidget);
      await tester.tap(emailSignUpInput);
      await tester.enterText(emailSignUpInput,"mai@gmail.com");
      //
      final passSignUpInput = find.byKey(const Key('signUpPass'));
      expect(passSignUpInput,findsOneWidget);

      await tester.tap(passSignUpInput);
      await tester.enterText(passSignUpInput,"123456789");
      await tester.pump();
      final confirmpassSignUpInput = find.byKey(const Key('confirmPass'));
      expect(confirmpassSignUpInput,findsOneWidget);

      await tester.tap(confirmpassSignUpInput);
      await tester.enterText(confirmpassSignUpInput,"123456789");
      await tester.pump();


      final submitloginFinder = find.byWidgetPredicate((widget) => widget is ElevatedButton
          && widget.child is Text
          && (widget.child as Text).data=="Submit");
      expect(submitloginFinder, findsOneWidget);
      await tester.tap(submitloginFinder);
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home:Login(),debugShowCheckedModeBanner: false,));
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      final forgetPassButton = find.byWidgetPredicate((widget) => widget is GestureDetector
          && widget.child is Text
          && (widget.child as Text).data=="Forgot your password?");
      expect(forgetPassButton, findsOneWidget);
      await tester.tap(forgetPassButton);
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home:ForgotPassword(),debugShowCheckedModeBanner: false,));
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      final emailInputForgetPass = find.byKey(const Key('emailForgetEmail'));
      expect(emailInputForgetPass,findsOneWidget);
      await tester.tap(emailInputForgetPass);
      await tester.enterText(emailInputForgetPass,"mai@gmail.com");

      final searchMailButton = find.byWidgetPredicate((widget) => widget is ElevatedButton
          && widget.child is Text
          && (widget.child as Text).data=="Search");
      expect(searchMailButton, findsOneWidget);
      await tester.tap(searchMailButton);
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home:ConfirmForgotPasswordCode(),debugShowCheckedModeBanner: false,));
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();




      final enterCodeInput = find.byKey(const Key('enterYourCode'));
      expect(enterCodeInput,findsOneWidget);
      await tester.tap(enterCodeInput);
      await tester.enterText(enterCodeInput,"555446");
      // Verify

      final verifyCodeMailButton = find.byWidgetPredicate((widget) => widget is ElevatedButton
          && widget.child is Text
          && (widget.child as Text).data=="Verify");
      expect(verifyCodeMailButton, findsOneWidget);
      await tester.tap(verifyCodeMailButton);
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home:ForgotPasswordChange(),debugShowCheckedModeBanner: false,));
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      //newPassText
      final newPassInput = find.byKey(const Key('newPassText'));
      expect(newPassInput,findsOneWidget);
      await tester.tap(newPassInput);
      await tester.enterText(newPassInput,"123456789");
      //
      final confirmNewPassInput = find.byKey(const Key('confirmNewPassText'));
      expect(confirmNewPassInput,findsOneWidget);

      await tester.tap(confirmNewPassInput);
      await tester.enterText(confirmNewPassInput,"123456789");
      await tester.pump();


      final resetPassButtonFinder = find.byWidgetPredicate((widget) => widget is ElevatedButton
          && widget.child is Text
          && (widget.child as Text).data=="Reset Password");
      expect(resetPassButtonFinder, findsOneWidget);
      await tester.tap(resetPassButtonFinder);
      await tester.pumpAndSettle();

      await tester.pumpWidget(const MaterialApp(home:Login(),debugShowCheckedModeBanner: false,));
      await tester.pump(const Duration(seconds: 5));
      await tester.pumpAndSettle();


      final emailInput = find.byKey(const Key('emailLogin'));
      expect(emailInput,findsOneWidget);
      await tester.tap(emailInput);
      await tester.enterText(emailInput,"mai@gmail.com");
      //
      final passInput = find.byKey(const Key('passwordLogin'));
      expect(passInput,findsOneWidget);

      await tester.tap(passInput);
      await tester.enterText(passInput,"123456789");
      await tester.pump();

      final loginButtonFinder = find.byWidgetPredicate((widget) => widget is ElevatedButton
          && widget.child is Text
          && (widget.child as Text).data=="Login");
      expect(loginButtonFinder, findsOneWidget);
      await tester.tap(loginButtonFinder);
      await tester.pumpAndSettle();

      await tester.pumpWidget(const MaterialApp(home:HomeScreen(),debugShowCheckedModeBanner: false,));
      await tester.pump(const Duration(seconds: 5));
      await tester.pumpAndSettle();
  });
});}
