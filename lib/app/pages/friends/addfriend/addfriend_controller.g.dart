// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addfriend_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddfriendController on _AddfriendControllerBase, Store {
  final _$idFriendAtom = Atom(name: '_AddfriendControllerBase.idFriend');

  @override
  String get idFriend {
    _$idFriendAtom.context.enforceReadPolicy(_$idFriendAtom);
    _$idFriendAtom.reportObserved();
    return super.idFriend;
  }

  @override
  set idFriend(String value) {
    _$idFriendAtom.context.conditionallyRunInAction(() {
      super.idFriend = value;
      _$idFriendAtom.reportChanged();
    }, _$idFriendAtom, name: '${_$idFriendAtom.name}_set');
  }

  final _$scanQRCodeAsyncAction = AsyncAction('scanQRCode');

  @override
  Future scanQRCode() {
    return _$scanQRCodeAsyncAction.run(() => super.scanQRCode());
  }

  @override
  String toString() {
    final string = 'idFriend: ${idFriend.toString()}';
    return '{$string}';
  }
}
