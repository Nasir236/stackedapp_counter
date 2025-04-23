import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedapp_counter/viewmodel.dart/counterview_model.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewModel, child) {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.counterServices.counterValue.toString(),
                    style: TextStyle(fontSize: 75),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
