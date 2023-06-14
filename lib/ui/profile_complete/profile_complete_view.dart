import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileCompleteView extends ConsumerStatefulWidget {
  const ProfileCompleteView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileCompleteViewState();
}

class _ProfileCompleteViewState extends ConsumerState<ProfileCompleteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Atla',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
