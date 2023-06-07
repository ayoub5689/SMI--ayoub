import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                'ADD\nDoctorant',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Name",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ADD Doctorant !',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                        Navigator.pushNamed(context, '/categories');
                                        },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Text(
                                  'Back',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




















// import 'package:flutter/material.dart';
//
// class Register extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ADD Doctorant :',style: TextStyle(color: Colors.amber[100]),),
//       ),
//       body: Container(
//         color: Theme.of(context).primaryColorLight,
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Card(
//                 elevation: 8,
//                 margin: EdgeInsets.only(
//                   left: 16.0,
//                   right: 16.0,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Column(
//                     children: <Widget>[
//                       TextField(
//                         keyboardType: TextInputType.name,
//                         decoration: InputDecoration(labelText: 'Name'),
//                       ),
//                       TextField(
//                         keyboardType: TextInputType.name,
//                         decoration: InputDecoration(labelText: 'Last Name'),
//                       ),
//                       TextField(
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(labelText: 'CNE'),
//                       ),
//                       TextField(
//                         keyboardType: TextInputType.number,
//                         decoration: InputDecoration(labelText: 'Appoge'),
//                       ),
//                       TextField(
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: InputDecoration(labelText: 'EMAIL'),
//                       ),
//                       TextField(
//                         keyboardType: TextInputType.visiblePassword,
//                         decoration: InputDecoration(labelText: 'Password'),
//                       ),
//                       TextField(
//                         keyboardType: TextInputType.visiblePassword,
//                         decoration: InputDecoration(labelText: 'Confirm Password'),
//                       ),
//                       ElevatedButton(
//                         onPressed: (){
//                           Navigator.pushNamed(context, '/categories');
//                         },
//                         child: Text('ADD Doctorant !',style: TextStyle(color: Colors.amber[100]),),
//                         style: ElevatedButton.styleFrom(
//                             minimumSize: Size(double.infinity, 36)),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 20),
//                         child: InkWell(
//                           onTap: (){
//                             Navigator.pop(context);
//                           },
//                           child: Text('<- Back to Home'),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ]),
//       ),
//     );
//   }
// }
