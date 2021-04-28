import 'package:devquiz/core/app_gradients.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Row(
              children: [
                Text("Olá, Eduardo"),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/61914122?v=4"))),
                ),
              ],
            ),
          ),
        );
}
