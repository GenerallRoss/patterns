import 'package:flutter/material.dart';

class TextEditor {
  void createCode() {
    debugPrint('Написание кода');
  }

  void save() {
    debugPrint('Сохранение кода');
  }
}

class Compiler {
  void compile() {
    debugPrint('Компиляция приложения');
  }
}

class CLR {
  void execute() {
    debugPrint('Выполнение приложения');
  }

  void finish() {
    debugPrint('Завершение работы приложения');
  }
}

class VisualStudioFacade {
  TextEditor textEditor;
  Compiler compiler;
  CLR clr;
  VisualStudioFacade(this.textEditor, this.compiler, this.clr);

  void start() {
    textEditor.createCode();
    textEditor.save();
    compiler.compile();
    clr.execute();
  }

  void stop() {
    clr.finish();
  }
}

class Programmer {
  void createApplication(VisualStudioFacade facade) {
    facade.start();
    facade.stop();
  }
}
