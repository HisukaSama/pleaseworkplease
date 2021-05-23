import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.blue),
        automaticallyImplyLeading: true,
        title: Text(
          'Incubator',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Align(
          alignment: Alignment(0, 0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailTextController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: FlutterFlowTheme.title2.override(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                ),
                Container(
                  width: 15,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                ),
                TextFormField(
                  controller: passwordTextController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: FlutterFlowTheme.title2.override(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                ),
                Container(
                  width: 15,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    final user = await signInWithEmail(
                      context,
                      emailTextController.text,
                      passwordTextController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  text: 'Login',
                  icon: Icon(
                    Icons.login,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 15,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
