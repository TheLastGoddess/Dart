import 'dart:async';

Future<String> createordermessage() async {
  var order = await fetchmessage();
  return "Your order is $order";
}

Future<String> fetchmessage() {
  return Future.delayed(Duration(seconds: 3), () => "Large Pizza");
}

void main(List<String> args) async {
  print("Waiting for the order...");
  print(await createordermessage());
}
