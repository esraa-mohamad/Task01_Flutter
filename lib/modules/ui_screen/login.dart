import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task_02/componants/componants.dart';


// ignore: must_be_immutable
class SramLogin extends StatefulWidget {

  const SramLogin({Key? key}) : super(key: key);

  @override
  State<SramLogin> createState() => _SramLoginState();
}

class _SramLoginState extends State<SramLogin> {
  var controlName=TextEditingController();

  var controlLast=TextEditingController();

  var controlEmail=TextEditingController();

  var controlPhone=TextEditingController();

  var controlPassword=TextEditingController();

  var controlConfirmPassword=TextEditingController();

  bool isPassword=true;
  bool isConfirm = true;

  // ignore: non_constant_identifier_names
  var FormKey=GlobalKey<FormState>();

  var p =Colors.purpleAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black26,
        leading: const Icon(
          Icons.menu,
          color: Colors.deepPurple,
        ),
        title:const Text(
          'SRAM ',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        actions:[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const  [
                Icon(
                  Icons.shop_sharp,
                  color: Colors.deepPurple,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.wifi,
                  color: Colors.deepPurple,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: FormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text (
                  'Sign up',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                const SizedBox(
                  height: 20.00,
                ),
                defaultTextForm(
                  controller:controlName,
                  type: TextInputType.name,
                  validate: (String value){
                    if(value.isEmpty)
                    {
                      return 'Name is short';
                    }
                    return null;
                  },
                  prefix: Icons.person,
                  colorIcon: Colors.purple,
                  label: 'First Name',
                  colorBorder: p,
                ),
                const SizedBox(
                  height: 20.00,
                ),
                defaultTextForm(
                  controller:controlLast,
                  type: TextInputType.name,
                  validate: (String value){
                    if(value.isEmpty)
                    {
                      return 'Last Name is short';
                    }
                    return null;
                  },
                  prefix: Icons.person,
                  colorIcon: Colors.purple,
                  label: 'Last Name',
                  colorBorder: p,
                ),
                const SizedBox(
                  height: 20.00,
                ),
                defaultTextForm(
                  controller:controlEmail,
                  type: TextInputType.emailAddress,
                  validate: (String value){
                    if(value.isEmpty)
                    {
                      return 'Email is short';
                    }
                    return null;
                  },
                  prefix: Icons.alternate_email,
                  colorIcon: Colors.purple,
                  label: 'Email',
                  colorBorder: p,
                ),
                const SizedBox(
                  height: 20.00,
                ),
                defaultTextForm(
                  controller:controlPhone,
                  type: TextInputType.phone,
                  validate: (String value){
                    if(value.isEmpty)
                    {
                      return 'Phone is short';
                    }
                    return null;
                  },
                  prefix: Icons.phone,
                  colorIcon: Colors.purple,
                  label: 'Phone',
                  colorBorder: p,
                ),
                const SizedBox(
                  height: 20.00,
                ),
                defaultTextForm(
                  controller:controlPassword,
                  type: TextInputType.visiblePassword,
                  isPassword:isPassword ,
                  validate: (String value){
                    if(value.isEmpty)
                    {
                      return 'Password is short';
                    }
                    return null;
                  },
                  prefix: Icons.password,
                  suffix: isPassword ? Icons.visibility_off : Icons.visibility,
                  suffixPressed: (){
                    setState(() {
                      isPassword=!isPassword;
                    });},
                  colorIcon: Colors.purple,
                  colorIcons: Colors.purple,
                  label: 'Password',
                  colorBorder: p,
                ),
                const SizedBox(
                  height: 25.00,
                ),
                defaultTextForm(
                  controller:controlConfirmPassword,
                  type: TextInputType.visiblePassword,
                  isPassword:isConfirm ,
                  validate: (String value){
                    if(value.isEmpty)
                    {
                      return 'Confirm Password is short';
                    }
                    return null;
                  },
                  prefix: Icons.password,
                  suffix: isConfirm ? Icons.visibility_off : Icons.visibility,
                  suffixPressed: (){
                    setState(() {
                      isConfirm=!isConfirm;
                    });},
                  colorIcon: Colors.purple,
                  colorIcons: Colors.purple,
                  label: 'Confirm Password',
                  colorBorder: p,
                ),
                const SizedBox(
                  height: 25.00,
                ),
                defaultButton(
                  width: double.infinity,
                  backGround: Colors.black26,
                  function: ()
                  {
                    if(FormKey.currentState!.validate())
                    {
                      if (kDebugMode) {
                        print(controlName.text);
                      }
                      if (kDebugMode) {
                        print(controlLast.text);
                      }
                      if (kDebugMode) {
                        print(controlEmail.text);
                      }
                      if (kDebugMode) {
                        print(controlPhone.text);
                      }
                      if (kDebugMode) {
                        print(controlPassword.text);
                      }
                      if (kDebugMode) {
                        print(controlConfirmPassword.text);
                      }
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context)=>const SramLogin(),
                          ));
                    }

                  },
                  text: 'Sign UP',
                ),
                const SizedBox(
                  height: 20.00,
                ),
                Row(
                  children: [
                    const Text(
                        'Already have an account ?'
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                        'Login',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
