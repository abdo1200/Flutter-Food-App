import 'package:app_theme/core/app_bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<AppBloc>();
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            Text("Dark Mode"),
            BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                return Switch(
                    value: bloc.theme == "dark",
                    onChanged: (val) {
                      bloc.add(ThemEvent(them: val ? "dark" : "light"));
                    });
            }
            )
          ],
        ),
      ),
    );
  }
}
