import 'package:flutter/material.dart';
import 'package:waiter_app/classes/helpers.dart';
import 'package:waiter_app/components/text_dinheiro.dart';

class DetailParty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateDetailParty();
}

class _StateDetailParty extends State<DetailParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            height: Helpers.heithPercent(context, 45),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Helpers.heithPercent(context, 47),
              left: 32,
            ),
            child: Text(
              "Profissionais",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Helpers.heithPercent(context, 47) + 45.0,
              left: 26,
              right: 25,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SingleChildScrollView(
                child: GridView.count(
                  padding: EdgeInsets.only(top: 0),
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  reverse: false,
                  physics: ClampingScrollPhysics(),
                  children: <Widget>[
                    _buildCardProfissional(context),
                    _buildCardProfissional(context),
                    _buildCardProfissional(context),
                    _buildCardProfissional(context),
                    _buildCardProfissional(context),
                    _buildCardProfissional(context),
                    _buildCardProfissional(context),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCardProfissional(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(20),
        ),
        height: Helpers.widthPercent(context, 40),
        width: Helpers.widthPercent(context, 40),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "garçom",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: TextDinheiro(
                  200.50,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
