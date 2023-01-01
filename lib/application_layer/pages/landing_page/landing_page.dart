import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiratracker/application_layer/pages/landing_page/cubit/landing_cubit.dart';
import 'package:jiratracker/injection.dart';

class LandingPageWrapperProvider extends StatelessWidget {
  const LandingPageWrapperProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<LandingCubit>(),
      child: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: BlocBuilder<LandingCubit, LandingCubitState>(
                  builder: (context, state) {
                    if (state is LandingInitial) {
                      return const Placeholder();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
