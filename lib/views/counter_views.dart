import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedapp_counter/viewmodel.dart/counterview_model.dart';

class CounterViews extends StatelessWidget {
  const CounterViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewModel, child) {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    viewModel.counterServices.counterValue.toString(),
                    style: TextStyle(fontSize: 75),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.addValue();
                    },
                    child: Text("Add To Counter Value"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.navigateToHome();
                    },
                    child: Text("Navigate To Home"),
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
