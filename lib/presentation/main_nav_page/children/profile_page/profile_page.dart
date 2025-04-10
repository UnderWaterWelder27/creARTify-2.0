import 'package:auto_route/auto_route.dart';
import 'package:creartify/core/extentions/context_extentions.dart';
import 'package:creartify/presentation/main_nav_page/children/profile_page/bloc/profile_cubit.dart';
import 'package:creartify/presentation/widgets/common_appbar.dart';
import 'package:creartify/presentation/widgets/common_loader.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    return Scaffold(

      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) => state.maybeWhen(
          loading: CommonLoader.new,
          userState: () => _Body(),
          orElse: () => _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [],
    );
  }
}
