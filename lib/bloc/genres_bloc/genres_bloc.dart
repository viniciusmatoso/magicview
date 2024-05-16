import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:magicview/entities/genres.dart';
import 'package:magicview/reposistories/genres_respository.dart';

part "genres_event_bloc.dart";
part "genres_state_bloc.dart";

class GenresBloc extends Bloc<GenresEvent, GenresState> {
  GenresBloc() : super(GenresStateInitial()) {
    on<GenresEvent>(_onFetchGenres);
  }

  FutureOr<void> _onFetchGenres(
      GenresEvent event, Emitter<GenresState> emit) async {
    final genresResult = await GenresRepository.getMovieGenres('pt');
    emit(GenresStateFetchs(genresResult));
  }
}
