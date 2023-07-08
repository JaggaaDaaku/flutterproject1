import 'package:flutter/material.dart';
import 'package:project1/Rest.dart';
import 'cartOut.dart';
import 'sweet.dart';

class contantPage extends StatefulWidget {
  const contantPage({super.key});

  @override
  State<contantPage> createState() => _contantPageState();
}

class _contantPageState extends State<contantPage> {
  int page=0;

 
  
  @override
  Widget build(BuildContext context) {
    Widget bodypart() {
      return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.9,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5)),
              child: Image.asset('assets/icon/sweet3.png'),
            ),
            Rest()
          ],
        ),
      );
    }
    
    Widget checkout(){
      return Container(
        child: Text('dfdsf'),
      );
    }
    

    
    
    Widget cartwd(String out) {
      if (cart['Product']!.isEmpty)
        return Container(
          alignment: AlignmentDirectional.centerStart,
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
          child: Text("Your Cart is Empty"),
        );
      if (out == 'check') return checkout();
      return cartout();
    }

    Widget acc() {
      return Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(5, 232, 134, 134),
              child: Text('Account'),
            )
          ],
        ),
      );
    }

    Widget set() {
      return Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(5, 232, 134, 134),
              child: Text('Settings'),
            )
          ],
        ),
      );
    }

    Widget explore() {
      return Container(
          height: MediaQuery.of(context).size.height * 0.09,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.15,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: OutlineInputBorder(),
                  ),
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value) {
                    print('Searched for: $value');
                  },
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.15,
                child: Icon(Icons.search_rounded, size: 50),
                decoration: BoxDecoration(color: Color.fromARGB(1, 1, 1, 1)),
                //Navigator.pushNamed(context,'/result');
              )
            ],
          ));
    }

    //var bodyy = homePg();
    Widget bod() {
      switch (page) {
        case 0:
          return bodypart();
        case 1:
          return explore();
        case 2:
          return cartwd('out');
        case 3:
          return acc();
        default:
          return bodypart();
      }
    }

    
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height*0.9,
          child :bod()),
        bottomNavigationBar: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: BottomNavigationBar(
                selectedFontSize: 10,
                unselectedFontSize: 2.5,
                selectedItemColor: const Color.fromARGB(255, 1, 1, 1),
                items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',
                  backgroundColor: Color.fromARGB(2, 71, 20, 20),
                  
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), label: 'Explore',
                  backgroundColor: Color.fromARGB(2, 71, 20, 20),
                ),
                BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Cart',
                  backgroundColor: Color.fromARGB(2, 71, 20, 20),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box), label: 'Account',
                  backgroundColor: Color.fromARGB(2, 71, 20, 20),
                )
              ],
              currentIndex: page,
                onTap: (int ind) {
                  setState(() {
                    page = ind;
                    
                  });
                },
              ),
            )
      ));
  }
}