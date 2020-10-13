import 'package:flutter/material.dart';

class AccountLayout extends StatefulWidget {
  @override
  _AccountLayoutState createState() => _AccountLayoutState();
}

class _AccountLayoutState extends State<AccountLayout> {
  void _moveBack() => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        height: 100,
        width: double.infinity,
        color: Colors.white10,
        child: Stack(
          children: <Widget>[
            // login text start
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Account Profile",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            // login text end

            InkWell(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.arrow_back),
              ),
              onTap: _moveBack,
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Second Name',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'PHONE NUMBER',
                prefix: Text("+91-"),
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Flat No/Block No',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Locality',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'City',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'State',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Country',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Birth Date',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              autofocus: false,
              keyboardType: TextInputType.phone,
            ),
            // autofocus: false,
            // keyboardType: TextInputType.phone,

            Container(height: 32),
            MaterialButton(
              height: 48,
              color: Theme.of(context).accentColor,
              child: Text(
                "CONTINUE",
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () {},
            )
          ],
        ),
      )
    ]));
  }
}
