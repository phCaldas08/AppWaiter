import 'package:flutter/material.dart';
import 'package:waiter_app/screens/detail_party.dart';

class Dashboad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 40),
            child: Icon(
              Icons.menu,
              size: 50,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 105, left: 32),
            child: Text(
              "Minhas Festas",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 145, left: 32),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: ListView(
                children: <Widget>[
                  buildCardList("Aniversário Patrícia", context),
                  buildCardList("Aniversário Pedro", context),
                  buildCardList("Formatura", context),
                  buildCardList("Natal", context),
                  buildCardList("Ano Novo", context),
                  buildCardList("Amigo Secreto", context),
                  buildCardList("Social com os amigos", context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCardList(String nomeEvento, context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Dismissible(
        key: Key(nomeEvento),
        direction: DismissDirection.endToStart,
        background: Container(
          height: 150,
          color: Colors.white,
        ),
        confirmDismiss: (direction) async { 
          await Navigator.pushNamed(context, '/detalhe-festa');
          return false; 
        },
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 24,
                ),
                child: Text(
                  nomeEvento,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 70,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.people,
                      color: Colors.black,
                    ),
                    Text(
                      "0/10",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 100,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                    ),
                    Text(
                      "05/07",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
