// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$userLocationAtom = Atom(name: '_HomeControllerBase.userLocation');

  @override
  Position get userLocation {
    _$userLocationAtom.context.enforceReadPolicy(_$userLocationAtom);
    _$userLocationAtom.reportObserved();
    return super.userLocation;
  }

  @override
  set userLocation(Position value) {
    _$userLocationAtom.context.conditionallyRunInAction(() {
      super.userLocation = value;
      _$userLocationAtom.reportChanged();
    }, _$userLocationAtom, name: '${_$userLocationAtom.name}_set');
  }

  final _$personGetAtom = Atom(name: '_HomeControllerBase.personGet');

  @override
  PersonModel get personGet {
    _$personGetAtom.context.enforceReadPolicy(_$personGetAtom);
    _$personGetAtom.reportObserved();
    return super.personGet;
  }

  @override
  set personGet(PersonModel value) {
    _$personGetAtom.context.conditionallyRunInAction(() {
      super.personGet = value;
      _$personGetAtom.reportChanged();
    }, _$personGetAtom, name: '${_$personGetAtom.name}_set');
  }

  final _$latitudeAtom = Atom(name: '_HomeControllerBase.latitude');

  @override
  double get latitude {
    _$latitudeAtom.context.enforceReadPolicy(_$latitudeAtom);
    _$latitudeAtom.reportObserved();
    return super.latitude;
  }

  @override
  set latitude(double value) {
    _$latitudeAtom.context.conditionallyRunInAction(() {
      super.latitude = value;
      _$latitudeAtom.reportChanged();
    }, _$latitudeAtom, name: '${_$latitudeAtom.name}_set');
  }

  final _$longitudeAtom = Atom(name: '_HomeControllerBase.longitude');

  @override
  double get longitude {
    _$longitudeAtom.context.enforceReadPolicy(_$longitudeAtom);
    _$longitudeAtom.reportObserved();
    return super.longitude;
  }

  @override
  set longitude(double value) {
    _$longitudeAtom.context.conditionallyRunInAction(() {
      super.longitude = value;
      _$longitudeAtom.reportChanged();
    }, _$longitudeAtom, name: '${_$longitudeAtom.name}_set');
  }

  final _$idPersonAtom = Atom(name: '_HomeControllerBase.idPerson');

  @override
  String get idPerson {
    _$idPersonAtom.context.enforceReadPolicy(_$idPersonAtom);
    _$idPersonAtom.reportObserved();
    return super.idPerson;
  }

  @override
  set idPerson(String value) {
    _$idPersonAtom.context.conditionallyRunInAction(() {
      super.idPerson = value;
      _$idPersonAtom.reportChanged();
    }, _$idPersonAtom, name: '${_$idPersonAtom.name}_set');
  }

  final _$genderAtom = Atom(name: '_HomeControllerBase.gender');

  @override
  dynamic get gender {
    _$genderAtom.context.enforceReadPolicy(_$genderAtom);
    _$genderAtom.reportObserved();
    return super.gender;
  }

  @override
  set gender(dynamic value) {
    _$genderAtom.context.conditionallyRunInAction(() {
      super.gender = value;
      _$genderAtom.reportChanged();
    }, _$genderAtom, name: '${_$genderAtom.name}_set');
  }

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

  final _$personAtom = Atom(name: '_HomeControllerBase.person');

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

  final _$getPersonAsyncAction = AsyncAction('getPerson');

  @override
  Future<PersonModel> getPerson(String id) {
    return _$getPersonAsyncAction.run(() => super.getPerson(id));
  }

  final _$postPersonAsyncAction = AsyncAction('postPerson');

  @override
  Future postPerson(PersonModel _person) {
    return _$postPersonAsyncAction.run(() => super.postPerson(_person));
  }

  final _$updatePersonAsyncAction = AsyncAction('updatePerson');

  @override
  Future updatePerson(PersonModel _person) {
    return _$updatePersonAsyncAction.run(() => super.updatePerson(_person));
  }

  final _$getIdPersonToHiveAsyncAction = AsyncAction('getIdPersonToHive');

  @override
  Future<String> getIdPersonToHive() {
    return _$getIdPersonToHiveAsyncAction.run(() => super.getIdPersonToHive());
  }

  final _$getLocationAsyncAction = AsyncAction('getLocation');

  @override
  Future<Position> getLocation() {
    return _$getLocationAsyncAction.run(() => super.getLocation());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setGender(String _gender) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setGender(_gender);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getAllPeople() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.getAllPeople();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'userLocation: ${userLocation.toString()},personGet: ${personGet.toString()},latitude: ${latitude.toString()},longitude: ${longitude.toString()},idPerson: ${idPerson.toString()},gender: ${gender.toString()},stringValue: ${stringValue.toString()},pessoas: ${pessoas.toString()},person: ${person.toString()}';
    return '{$string}';
  }
}
