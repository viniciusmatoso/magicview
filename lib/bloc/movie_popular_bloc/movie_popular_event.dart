part of 'movie_popular_bloc.dart';

abstract class MoviePopularEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MoviePopularEventLoaded extends MoviePopularEvent {
  final int page;
  final String langague;

  MoviePopularEventLoaded({required this.page, required this.langague});
}
