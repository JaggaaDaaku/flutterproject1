List<String> addr=[];
List<String> cityadd=[];
List<String> stateadd=[];
List<int> pincode=[];
List<int> mobnum = [];
Map<String,dynamic> datamap={'Address':addr,'City':cityadd,'State':stateadd,'PinCode':pincode,'Mobile':mobnum};


List<String> cartProduct=[];
List<int> cartPrice=[];
List<int> cartQuantity=[];
Map<String,dynamic> cart = {'Product':cartProduct,'Price':cartPrice,'Quantity':cartQuantity};
List<String> sweets=[
  //"Chocolate",
  //"Strawberry"
  'Gulab Jamun',
  'Rasgulla',
  'Kaju Katli',
  'Badam Katli',
  'Mawa Barfi',
  'Mawa Katli',
  'Chocolate Roll',
  'Khaskhas Roll',
  'Gol Roll',
  'Lambe Roll',
  'Fruit Roll',
  'Sattu',
  'Laddu',
  'Bundi',
  'Milkcake',
  'Danedar Barfi',
  'Khaskhas Barfi',
  'Sandwich',
  'Chamcham',
  'Maalpura',
  'Kala Jamun',
  'Ras Malaai',
  'Jully',
  'Rusburry',
  'Dark Rusburry',
  'Jalebi',
  'Imarti',
  'Paneer Jalebi',
  'Badde Pedde',
  'Chhote Pedde',
];
List<String> sweetshindi = [
  'गुलाब जामुन',
  'रसगुल्ला',
  'काजू कतली',
  'बादाम कतली',
  'मावा बर्फी',
  'मावा कतली',
  'चॉकलेट रोल',
  'खसखास रोल',
  'गोल रोल',
  'लम्बे रोल',
  'फल रोल',
  'सत्तू',
  'लड्डू',
  'बूंदी',
  'कलाकंद',
  'दानेदार बर्फी',
  'खसखस बर्फी',
  'सैंडविच',
  'चमचम',
  'मालपुरा',
  'काला जामुन',
  'रस मलाई',
  'जूली',
  'रुस्बरी',
  'काली रुस्बरी',
  'जलेबी',
  'इमरती',
  'पनीर जलेबी',
  'बड़े पेडे',
  'छोटे पेडे',
];
List<int> sweetsprice = [
  230,
  160,
  600,
  700,
  330,
  280,
  330,
  330,
  330,
  330,
  330,
  300,
  230,
  230,
  330,
  330,
  330,
  250,
  230,
  250,
  230,
  350,
  350,
  180,
  230,
  230,
  350,
  350,
  330,
  280
];
List<String> snacks=[
  'French Fries',
  "McDonald's Big Mac",
  'Mattar',
  'Mathhi',
  'Namak Pare',
  'Pakode',
];
List<String> snackshindi = [
  'फ्रेंच फ्राइज़',
  "मैकडॉनल्ड्स बिग मैक",
  'मटर',
  'मठ्ठी',
  'नमक पारे',
  'पकौड़े',
];
List<int> snackprice = [60, 100, 120, 160, 160, 200];
List<String> spicies=[
  'Samosa',
  'Dal Kachori',
  'Onion KAchori',
  'Chhole Kachori',
  'Curry Kachori',
  'Sweet Kachori',
  'Mirch Badda',
  'Burger',
  'Humburger',
  'Pizza',
  'Hotdoge',
  'Cheese Sandwich'
];
List<String> spicieshindi = [
  'समोसा',
  'दाल कचौरी',
  'प्याज की कचोरी',
  'छोला कचौरी',
  'करी कचौरी',
  'मीठी कचोरी',
  'मिर्च बड्डा',
  'बर्गर',
  'हम्बर्गर',
  'पिज़्ज़ा',
  'हॉटडोगे',
  'चीज़ सैंडविच'
];
List<int> spicprice=[15,15,20,25,30,30,20,30,40,100,80,80];
List<String> cakes=[
  'Chocolate Cake',
  'Strawberry Cake',
  'Vanila Cake',
  'Pineapple Cake'
];
List<String> cakeshindi = [
  'चॉकलेट केक',
  'स्ट्रॉबेरी केक',
  'वेनिला केक',
  'पाइनएप्पल केक'
];
List<int> cakeprice=[350,350,300,400];
List<String> drinks=[
  'Cold Green Tea',
  'Cold Coffee',
  'Pepsi',
  'CocaCola',
  'Milk Shake',
  'Fruit Juice',
  'Fruit Shake'
];
List<String> drinkshindi = [
  'ठंडी हरी चाय',
  'ठंडी कॉफी',
  'पेप्सी',
  'कोका कोला',
  'मिल्कशेक',
  'फलों का रस',
  'फलों का शेक'
];
List<int> drinkprice=[40,50,100,100,60,40,60];
List<String> ices=[
  'Ice-cream sundae','Gulab jamoon','Butters'
  'Vanilla',
  'Strawberry',
  'American Nuts',
  'Kesar Pista',
  'Chocolate',
  'ButterSkouch'
];
List<String> iceshindi = [
  'फलमिश्रित आईस्क्रीम',
  'गुलाब जामुन',
  'बटर'
  'वनीला',
  'स्ट्रॉबेरी',
  'अमेरिकी अखरोट',
  'केसर पिस्ता',
  'चॉकलेट',
  'बटरस्कॉच'
];
List<int> icePrice=[60,200,250,250,300,300,350,300,350];
List<String> rows=[
  'Rajma Raita',
  'Mawa',
  'Paneer',
  'Milk',
  'Butter',
  'Curd',
];
List<String> rowshindi = [
  'राजमा रायता',
  'मावा',
  'पनीर',
  'दूध',
  'मक्खन',
  'दही',
];
List<int> rowprice=[60,350,350,50,600,70];


var sweet = <String, dynamic>{'Product': sweets, 'Price': sweetsprice};
var snack = <String, dynamic>{'Product': snacks, 'Price': snackprice};
var spicy = <String, dynamic>{'Product': spicies, 'Price': spicprice};
var cake = <String, dynamic>{'Product': cakes, 'Price': cakeprice};
var drink = <String, dynamic>{'Product': drinks, 'Price': drinkprice};
var ice = <String, dynamic>{'Product': ices, 'Price': icePrice};
var row = <String, dynamic>{'Product': rows, 'Price': rowprice};

class Product{
  List<double> review =[];
  double totlereview=0;
  reviewfunc(){
    double r=0;
    if(review.isEmpty)
      return ;
    for(int i=0; i<review.length;i++){
      r+=review[i];
    }
    totlereview=r / review.length ;
  }
  reviewadd(double nr){
    this.review.add(nr);
  }
  
  change(String lang){
    switch(lang){
      case 'Hindi':
        sweet= <String, dynamic>{'Product': sweetshindi, 'Price': sweetsprice};
        snack = <String, dynamic>{'Product': snackshindi, 'Price': snackprice};
        spicy = <String, dynamic>{'Product': spicieshindi, 'Price': spicprice};
        cake = <String, dynamic>{'Product': cakeshindi, 'Price': cakeprice};
        drink = <String, dynamic>{'Product': drinkshindi, 'Price': drinkprice};
        ice = <String, dynamic>{'Product': iceshindi, 'Price': icePrice};
        row = <String, dynamic>{'Product': rowshindi, 'Price': rowprice};
        break;
      case 'English':
        sweet = <String, dynamic>{
          'Product': sweets,
          'Price': sweetsprice
        };
        snack = <String, dynamic>{
          'Product': snacks,
          'Price': snackprice
        };
        spicy = <String, dynamic>{
          'Product': spicies,
          'Price': spicprice
        };
        cake = <String, dynamic>{
          'Product': cakes,
          'Price': cakeprice
        };
        drink = <String, dynamic>{
          'Product': drinks,
          'Price': drinkprice
        };
        ice = <String, dynamic>{'Product': ices, 'Price': icePrice};
        row = <String, dynamic>{'Product': rows, 'Price': rowprice};
        break;
    }
  }


  Map<String,dynamic> product={
    'Sweets':sweet,
    'Snacks':snack,
    'Spicy':spicy,
    'Cake':cake,
    'Drink':drink,
    'Ice Cream':ice,
    'Row':row};

  (String,int) searchProduct(String p){
    String name='';
    int price=0;
    for(String key in product.keys){
      if (product[key]['Product'].contains(p)){
        for(int i=0;i<product[key]['Product'].length;i++){
          if(product[key]['Product'][i].toString()==p){
            name = product[key]['Product'][i].toString();
            price = product[key]['Price'][i] as int;
          }
          
        
          //print('$name - Price: $price');//uncomment this to see the output of
          //yield{'Name:$name';'Price:$price';};
         
        }
          
      }
    }
    return (name,price);
  }
  List<String> getProducts(){
    List<String> l=[];
    for (String key in product.keys) {
        for (int i = 0; i < product[key]['Product'].length; i++) {
          l.add(product[key]['Product'][i]);
          //print('$name - Price: $price');//uncomment this to see the output of
          //yield{'Name:$name';'Price:$price';};
        
      }
    }
    return l;
    
    
    /*return [
      {'name':'Sweet Product Name Here'},
      {
        "id": 987,
        "title": "Second Item",
        "description":
        """Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam quidem expedita
        perferendis natus repellat eos molestias?""",
      }];*/
      }
}