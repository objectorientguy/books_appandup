import 'package:books/constants/constants.dart';
import 'package:books/modules/login_signup/widgets/floating_action_widget.dart';
import 'package:books/modules/login_signup/widgets/icon_widget.dart';
import 'package:books/utilities/colors_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool buttonOne = false;
  bool buttonTwo = true;
  bool showPrefix = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: ColorsUtility().whiteColor,
          body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.07,
                        MediaQuery.of(context).size.width * 0.15,
                        MediaQuery.of(context).size.width * 0.10,
                        MediaQuery.of(context).size.width * 0.10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.width * 0.15,
                            width: MediaQuery.of(context).size.width * 0.15,
                            color: Colors.transparent,
                            child: Container(
                              child: IconWidget(
                                icon: Icons.person,
                                iconColor: ColorsUtility().whiteColor,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.30),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              buttonTwo = false;
                              buttonOne = true;
                            });
                          },
                          child: Text(Constants.signIn,
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                      color: ColorsUtility().blackColor,
                                      offset: Offset(0, -15))
                                ],
                                color: Colors.transparent,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    buttonOne ? ColorsUtility().blackColor : ColorsUtility().whiteColor,
                                decorationThickness: 1,
                                decorationStyle: TextDecorationStyle.solid,
                              )),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Expanded(
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  buttonTwo = true;
                                  buttonOne = false;
                                });
                              },
                              child: Text(
                                Constants.signUp,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                        color: ColorsUtility().blackColor,
                                        offset: Offset(0, -15))
                                  ],
                                  color: Colors.transparent,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      buttonTwo ? ColorsUtility().blackColor : ColorsUtility().whiteColor,
                                  decorationThickness: 1,
                                  decorationStyle: TextDecorationStyle.solid,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  buttonTwo
                      ? Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.07,
                              MediaQuery.of(context).size.width * 0.15,
                              MediaQuery.of(context).size.width * 0.10,
                              MediaQuery.of(context).size.width * 0.0),
                          child: RichText(
                            text: TextSpan(
                              text: Constants.hello,
                              style: TextStyle(
                                  color: ColorsUtility().blackColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.07,
                              MediaQuery.of(context).size.width * 0.15,
                              MediaQuery.of(context).size.width * 0.10,
                              MediaQuery.of(context).size.width * 0.0),
                          child: RichText(
                            text: TextSpan(
                                text: Constants.welcome,
                                style: TextStyle(
                                    color: ColorsUtility().blackColor,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: Constants.back,
                                    style: TextStyle(
                                        color: ColorsUtility().blackColor,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ),
                        ),
                  buttonTwo
                      ? Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.07,
                              MediaQuery.of(context).size.width * 0.04,
                              MediaQuery.of(context).size.width * 0.10,
                              MediaQuery.of(context).size.width * 0.10),
                          child: Container(
                            child: Text(
                              Constants.loginInfo,
                              style: TextStyle(
                                  color: ColorsUtility().blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.07,
                              MediaQuery.of(context).size.width * 0.04,
                              MediaQuery.of(context).size.width * 0.10,
                              MediaQuery.of(context).size.width * 0.10),
                          child: Container(
                            child: Text(
                              Constants.signInToContinue,
                              style: TextStyle(
                                  color: ColorsUtility().blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        ),
                  buttonTwo
                      ? Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.07,
                              MediaQuery.of(context).size.width * 0.04,
                              MediaQuery.of(context).size.width * 0.10,
                              MediaQuery.of(context).size.width * 0.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            // autofocus: true,
                            decoration: InputDecoration(
                                hintText: Constants.enterYourName),
                          ),
                        )
                      : Container(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.07,
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.width * 0.10,
                        MediaQuery.of(context).size.width * 0.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      // autofocus: true,
                      decoration:
                          InputDecoration(hintText: Constants.enterYourEmail),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.07,
                        MediaQuery.of(context).size.width * 0.07,
                        MediaQuery.of(context).size.width * 0.10,
                        MediaQuery.of(context).size.width * 0.0),
                    child: TextField(
                        autofocus: false,
                        maxLength: 6,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          prefixStyle: TextStyle(color:ColorsUtility().blackColor),
                          hintText: Constants.enterYourPassword,
                          counterText: "",
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.07,
                        MediaQuery.of(context).size.width * 0.07,
                        MediaQuery.of(context).size.width * 0.10,
                        MediaQuery.of(context).size.width * 0.0),
                    child: Center(
                      child: Text(Constants.or,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.07,
                        MediaQuery.of(context).size.width * 0.07,
                        MediaQuery.of(context).size.width * 0.10,
                        MediaQuery.of(context).size.width * 0.0),
                    child: Center(
                      child: SignInButton(
                        Buttons.Google,
                        text: buttonTwo
                            ? Constants.signUpWithGoogle
                            : Constants.signInWithGoogle,
                        onPressed: () {},
                      ),
                    ),
                  )
                ]),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionWidget(),
          ),
        ));
  }
}
