List<String> username = [];
List<String> email = [];
List<int> mobnum = [];
List<String> pass = [];
List<String> addr = [];
List<String> city = [];
List<String> state = [];
List<int> pin = [];


class Userdata{
  
  Map<String, dynamic> userdata = {
    'Name': username,
    'Email': email,
    'Mobile': mobnum,
    'Password': pass,
    'Address': addr,
    'City': city,
    'State': state,
    'Pincode': pin
  };
  
  bool register(String a1,String a2,int a3,String a4,String a5,String a6,String a7,int a8){
    if(userdata['Email']!=null&&userdata['Mobile']!=null){
    for (int i = 0; i < userdata['Email'].length; i++) {
        if (userdata['Email'][i] == a2) {
          return false;
        }
        if (userdata['Mobile'][i] == a3) {
          return false;
        }
      }
    }
    this.userdata['Name'].add(a1);    
    this.userdata['Email'] .add(a2);
    this.userdata['Mobile'] .add(a3);
    this.userdata['Password'] .add(a4);
    this.userdata['Address'] .add(a5);
    this.userdata['City'] .add(a6);
    this.userdata['State'] .add(a7);
    this.userdata['Pincode'] .add(a8);
    return true;
  }
  bool check(String a1,String a2){
    for(int i=0;i<userdata['Email'].length;i++){
      
      if(userdata['Email'][i]==a1){
        if(userdata['Password'][i]==a2){
          return true;
        }
      }else if(a1.runtimeType==int){
        if(userdata['Mobile'][i] == int.parse(a1)){
          return true;
        }
        
      }
    }
    return false;
  }
  checkn(String a1, String a2) {
    for (int i = 0; i < userdata['Email'].length; i++) {
      if (userdata['Email'][i] == a1) {
        if (userdata['Password'][i] == a2) {
          return userdata['Name'][i];
        }
      } else if (a1.runtimeType == int) {
        if (userdata['Mobile'][i] == int.parse(a1)) {
          return userdata['Name'][i];
        }
      }
    }
    return 'user not found';
  }
  

}