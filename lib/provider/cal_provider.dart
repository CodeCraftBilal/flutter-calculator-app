import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
  final compController = TextEditingController();

  setValue(String value) {
    String str = compController.text;

    switch(value) {
      case 'C':
        compController.clear();
        break;
      case 'AC':
        str.substring(0, str.length-1);
        break;
      case 'X':
        compController.text += '*';
        break;
      case '=':
        compute();
        break;
      default:
        compController.text += value;
    }

    compController.selection = TextSelection.fromPosition(TextPosition(offset: compController.text.length));
  }

  compute() {
    // function tree works here
    String text = compController.text;
    compController.text = text.interpret().toString();
  }

  @override
  void dispose() {
    // TODO: implement dispose
      super.dispose();
      compController.dispose();
  }
}