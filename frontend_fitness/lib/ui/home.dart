import 'package:frontend_fitness/ui/add_fitness.dart';
import 'package:frontend_fitness/ui/login.dart';
import 'package:frontend_fitness/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:frontend_fitness/ui/profile.dart';
import 'package:frontend_fitness/ui/view_fitness.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatelessWidget {
  Future<void> Logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: 300,
                      height: 200,
                      child: Image.asset("assets/fitnessss.png"),
                    ),
                  ),
                  //  Padding(
                  //  padding: EdgeInsets.all(20.0),
                  //  child: Container(
                  //   width: 100,
                  //   height: 200,
                  //   child: Image.asset("assets/login.png"),
                  //  ),
                  //)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.all(10.0),
                  // ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 100.0,
                        minWidth: 150.0,
                        color: Colors.black,
                        textColor: Colors.white,
                        child: new Text("Menu"),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FitnessView()),
                          )
                        },
                        splashColor: Colors.pink,
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 100.0,
                        minWidth: 150.0,
                        color: Colors.black,
                        textColor: Colors.white,
                        child: const Text("Tambah Produk"),
                        onPressed: () => {
                          // CameraScreen()
                          // mainCamera()
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddFitness()),
                          )
                        },
                        splashColor: Colors.black26,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 100.0,
                        minWidth: 150.0,
                        color: Colors.black,
                        textColor: Colors.white,
                        child: const Text("Profile"),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyProfile()),
                          )
                        },
                        splashColor: Colors.black26,
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 100.0,
                        minWidth: 150.0,
                        color: Colors.black,
                        textColor: Colors.white,
                        child: const Text("Keluar"),
                        onPressed: () => {
                          Logout(),
                          //  Logout();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => loginview()),
                          )
                        },
                        splashColor: Colors.black26,
                      )),
                ],
              ),
            ],
          )),
    );
  }
}