part of 'favorite_bloc.dart';

abstract class FavoriteEventBloc extends Equatable {}

class FavoriteCreateEvent extends FavoriteEventBloc {
  final String fileName;
  final ScreenArguments screenArguments;
  final GlobalKey genKey;

  FavoriteCreateEvent(
      {required this.screenArguments,
      required this.fileName,
      required this.genKey});

  @override
  List<Object?> get props => [fileName, screenArguments, genKey];
}

class FavoriteShowImageSaved extends FavoriteEventBloc {
  final int movieId;
  final String userId;

  FavoriteShowImageSaved(this.userId, {required this.movieId});
  @override
  List<Object?> get props => [movieId];
}
