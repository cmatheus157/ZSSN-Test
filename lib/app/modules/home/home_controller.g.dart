// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$stringValueAtom = Atom(name: '_HomeControllerBase.stringValue');

  @override
  String get stringValue {
    _$stringValueAtom.context.enforceReadPolicy(_$stringValueAtom);
    _$stringValueAtom.reportObserved();
    return super.stringValue;
  }

  @override
  set stringValue(String value) {
    _$stringValueAtom.context.conditionallyRunInAction(() {
      super.stringValue = value;
      _$stringValueAtom.reportChanged();
    }, _$stringValueAtom, name: '${_$stringValueAtom.name}_set');
  }

  final _$pessoasAtom = Atom(name: '_HomeControllerBase.pessoas');

  @override
  ObservableFuture<List<PersonModel>> get pessoas {
    _$pessoasAtom.context.enforceReadPolicy(_$pessoasAtom);
    _$pessoasAtom.reportObserved();
    return super.pessoas;
  }

  @override
  set pessoas(ObservableFuture<List<PersonModel>> value) {
    _$pessoasAtom.context.conditionallyRunInAction(() {
      super.pessoas = value;
      _$pessoasAtom.reportChanged();
    }, _$pessoasAtom, name: '${_$pessoasAtom.name}_set');
  }

  final _$getValuesSFAsyncAction = AsyncAction('getValuesSF');

  @override
  Future getValuesSF() {
    return _$getValuesSFAsyncAction.run(() => super.getValuesSF());
  }

  @override
  String toString() {
    final string =
        'stringValue: ${stringValue.toString()},pessoas: ${pessoas.toString()}';
    return '{$string}';
  }
}
