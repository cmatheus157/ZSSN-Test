// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FriendsController on _FriendsControllerBase, Store {
  final _$personAtom = Atom(name: '_FriendsControllerBase.person');

  @override
  PersonModel get person {
    _$personAtom.context.enforceReadPolicy(_$personAtom);
    _$personAtom.reportObserved();
    return super.person;
  }

  @override
  set person(PersonModel value) {
    _$personAtom.context.conditionallyRunInAction(() {
      super.person = value;
      _$personAtom.reportChanged();
    }, _$personAtom, name: '${_$personAtom.name}_set');
  }

  final _$listAtom = Atom(name: '_FriendsControllerBase.list');

  @override
  ObservableList<String> get list {
    _$listAtom.context.enforceReadPolicy(_$listAtom);
    _$listAtom.reportObserved();
    return super.list;
  }

  @override
  set list(ObservableList<String> value) {
    _$listAtom.context.conditionallyRunInAction(() {
      super.list = value;
      _$listAtom.reportChanged();
    }, _$listAtom, name: '${_$listAtom.name}_set');
  }

  final _$textAtom = Atom(name: '_FriendsControllerBase.text');

  @override
  String get text {
    _$textAtom.context.enforceReadPolicy(_$textAtom);
    _$textAtom.reportObserved();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.context.conditionallyRunInAction(() {
      super.text = value;
      _$textAtom.reportChanged();
    }, _$textAtom, name: '${_$textAtom.name}_set');
  }

  final _$initAsyncAction = AsyncAction('init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$getPersonAsyncAction = AsyncAction('getPerson');

  @override
  Future<void> getPerson(String id) {
    return _$getPersonAsyncAction.run(() => super.getPerson(id));
  }

  final _$_FriendsControllerBaseActionController =
      ActionController(name: '_FriendsControllerBase');

  @override
  void save() {
    final _$actionInfo = _$_FriendsControllerBaseActionController.startAction();
    try {
      return super.save();
    } finally {
      _$_FriendsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int index) {
    final _$actionInfo = _$_FriendsControllerBaseActionController.startAction();
    try {
      return super.remove(index);
    } finally {
      _$_FriendsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'person: ${person.toString()},list: ${list.toString()},text: ${text.toString()}';
    return '{$string}';
  }
}
