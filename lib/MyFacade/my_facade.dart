import 'package:patterns/MyFacade/classes.dart';

void runMyFacade() {
  TextEditor textEditor = TextEditor();
  Compiler compiler = Compiler();
  CLR clr = CLR();

  // ignore: non_constant_identifier_names
  VisualStudioFacade IDE = VisualStudioFacade(textEditor, compiler, clr);
  Programmer programmer = Programmer();
  programmer.createApplication(IDE);
}
