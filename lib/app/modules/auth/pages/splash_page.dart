import 'package:sad_app/common/widgets/common_scaffold.dart';
import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/common/assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  AuthCubit get _authCubit => Modular.get<AuthCubit>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _authCubit.getUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Center(
        child: Image.asset(
          ImageAssets.splash,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
