import 'package:reloadly/reloadly.dart';

Future<void> main() async {
  var reloadly  = Reloadly();
  //gettoken
  String token =   await reloadly.getToken('YOUR_CLIENT_ID_HERE','client_secret');
  //get balance
  String balance= await reloadly.getBalance(token);


}
