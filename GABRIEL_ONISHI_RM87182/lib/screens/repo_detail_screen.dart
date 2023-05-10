import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';

import '../models/repository.dart';

class RepoDetailScreen extends StatefulWidget {
  const RepoDetailScreen({super.key});

  @override
  State<RepoDetailScreen> createState() => _RepoDetailScreenState();
}

class _RepoDetailScreenState extends State<RepoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Repository repository = kRepositoriesMock.first;

    return Scaffold(
      appBar: CustomAppBar(
        text: "Detalhes",
        hasBackButton: true,
      ),
    );
  }
}
