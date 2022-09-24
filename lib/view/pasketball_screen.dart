import 'package:basket_ball_counter/view/component/custom_eleveted_btn.dart';
import 'package:basket_ball_counter/view_model/pasket_cubit.dart';
import 'package:basket_ball_counter/view_model/pasket_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasketBall extends StatelessWidget {
  double nameSize = 32;
  double scoreSize = 152;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasketCubit(),
      child: BlocConsumer<PasketCubit, PasketState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          PasketCubit myCubit = BlocProvider.of(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('Pasket Ball Counter'),
              backgroundColor: Colors.orange,
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: nameSize,
                        ),
                      ),
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: nameSize,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              myCubit.teamAScore.toString(),
                              style: TextStyle(
                                fontSize: scoreSize,
                              ),
                            ),
                            CustomBtn(
                                func: () {
                                  myCubit.increaseScoreA(1);
                                },
                                text: "get 1 point"),
                            CustomBtn(
                                func: () {
                                  myCubit.increaseScoreA(2);
                                },
                                text: "get 2 point"),
                            CustomBtn(
                                func: () {
                                  myCubit.increaseScoreA(3);
                                },
                                text: "get 3 point "),
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              myCubit.teamBScore.toString(),
                              style: TextStyle(
                                fontSize: scoreSize,
                              ),
                            ),
                            CustomBtn(
                                func: () {
                                  myCubit.increaseScoreB(1);
                                },
                                text: "get 1 point"),
                            CustomBtn(
                                func: () {
                                  myCubit.increaseScoreB(2);
                                },
                                text: "get 2 point"),
                            CustomBtn(
                                func: () {
                                  myCubit.increaseScoreB(3);
                                },
                                text: "get 3 point "),
                          ],
                        ),
                      )
                    ],
                  ),
                  CustomBtn(
                      func: () {
                        myCubit.teamAScore = 0;
                        myCubit.teamBScore = 0;
                        myCubit.emit(TeamAIncreased());
                      },
                      text: "reset")
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
