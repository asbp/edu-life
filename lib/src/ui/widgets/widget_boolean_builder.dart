import 'package:flutter/widgets.dart';

class SingleChildBooleanWidget extends StatelessWidget {
  final bool boolean;
  final Widget ifTrue, ifFalse;

  const SingleChildBooleanWidget(
      {@required this.boolean, //Conditions to which widget are assigned.
      @required this.ifTrue, //Widget to returned if condition is true.
      @required this.ifFalse //Widget to returned if condition is false.
      });

  @override
  Widget build(BuildContext context) =>
      this.boolean ? this.ifTrue : this.ifFalse;
}
