import 'dart:async';
import 'package:sad_app/app/modules/home/cubit/donate_component_cubit/donate_component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonateComponentCubit extends Cubit<DonateComponent> {
  DonateComponentCubit() : super(DonateComponent.init());

  Future<void> showCheckedPix() async {
    emitPixState(true);
    await Future.delayed(const Duration(seconds: 3));
    emitPixState(false);
  }

  Future<void> showCheckedBitcoin() async {
    emitBitcoinState(true);
    await Future.delayed(const Duration(seconds: 3));
    emitBitcoinState(false);
  }

  Future<void> showCheckedEthereum() async {
    emitEthereumState(true);
    await Future.delayed(const Duration(seconds: 3));
    emitEthereumState(false);
  }

  Future<void> showCheckedTether() async {
    emitTetherState(true);
    await Future.delayed(const Duration(seconds: 3));
    emitTetherState(false);
  }

  emitPixState(bool value) {
    emit(state.copyWith(
      showCheckedPix: value,
    ));
  }

  emitBitcoinState(bool value) {
    emit(state.copyWith(
      showCheckedBitcoin: value,
    ));
  }

  emitEthereumState(bool value) {
    emit(state.copyWith(
      showCheckedEthereum: value,
    ));
  }

  emitTetherState(bool value) {
    emit(state.copyWith(
      showCheckedTether: value,
    ));
  }
}
