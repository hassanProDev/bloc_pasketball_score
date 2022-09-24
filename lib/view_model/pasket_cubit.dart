import 'package:basket_ball_counter/view_model/pasket_state.dart';
import 'package:bloc/bloc.dart';

class PasketCubit extends Cubit<PasketState> {
  PasketCubit() : super(TeamAIncreased());
  int teamAScore = 0;
  int teamBScore = 0;

  void increaseScoreA(int newScore) {
    teamAScore += newScore;
    emit(TeamAIncreased());
  }

  void increaseScoreB(int newScore) {
    teamBScore += newScore;
    emit(TeamBIncreased());
  }
}
