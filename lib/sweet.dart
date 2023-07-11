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
  'Rus Gulle',
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
List<int> spicprice=[15,15,20,25,30,30,20,30,40,100,80,80];
List<String> cakes=[
  'Chocolate Cake',
  'Strawberry Cake',
  'Vanila Cake',
  'Pineapple Cake'
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
List<int> icePrice=[60,200,250,250,300,300,350,300,350];
List<String> rows=[
  'Rajma Raita',
  'Mawa',
  'Paneer',
  'Milk',
  'Butter',
  'Curd',
];List<int> rowprice=[60,350,350,50,600,70];

var sweet=<String,dynamic>{'Product':sweets,'Price':sweetsprice};
var snack= <String, dynamic>{'Product':snacks,'Price':snackprice};
var spicy= <String, dynamic>{'Product':spicies,'Price':spicprice};
var cake= <String, dynamic>{'Product':cakes,'Price':cakeprice};
var drink= <String, dynamic>{'Product':drinks,'Price':drinkprice};
var ice= <String, dynamic>{'Product':ices,'Price':icePrice};
var row= <String, dynamic>{'Product':rows,'Price':rowprice};