import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseNodeWidget extends HookConsumerWidget {
  const BaseNodeWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Card();
  }
}
