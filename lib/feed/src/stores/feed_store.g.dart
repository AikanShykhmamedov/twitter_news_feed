// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FeedStore on FeedStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'FeedStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$userTweetsAtom =
      Atom(name: 'FeedStoreBase.userTweets', context: context);

  @override
  ObservableList<UserTweet> get userTweets {
    _$userTweetsAtom.reportRead();
    return super.userTweets;
  }

  @override
  set userTweets(ObservableList<UserTweet> value) {
    _$userTweetsAtom.reportWrite(value, super.userTweets, () {
      super.userTweets = value;
    });
  }

  late final _$haveNextPageAtom =
      Atom(name: 'FeedStoreBase.haveNextPage', context: context);

  @override
  bool get haveNextPage {
    _$haveNextPageAtom.reportRead();
    return super.haveNextPage;
  }

  @override
  set haveNextPage(bool value) {
    _$haveNextPageAtom.reportWrite(value, super.haveNextPage, () {
      super.haveNextPage = value;
    });
  }

  late final _$gotExceptionAtom =
      Atom(name: 'FeedStoreBase.gotException', context: context);

  @override
  bool get gotException {
    _$gotExceptionAtom.reportRead();
    return super.gotException;
  }

  @override
  set gotException(bool value) {
    _$gotExceptionAtom.reportWrite(value, super.gotException, () {
      super.gotException = value;
    });
  }

  late final _$getUserTweetsAsyncAction =
      AsyncAction('FeedStoreBase.getUserTweets', context: context);

  @override
  Future<void> getUserTweets() {
    return _$getUserTweetsAsyncAction.run(() => super.getUserTweets());
  }

  late final _$getNextUserTweetsAsyncAction =
      AsyncAction('FeedStoreBase.getNextUserTweets', context: context);

  @override
  Future<void> getNextUserTweets() {
    return _$getNextUserTweetsAsyncAction.run(() => super.getNextUserTweets());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
userTweets: ${userTweets},
haveNextPage: ${haveNextPage},
gotException: ${gotException}
    ''';
  }
}
