import 'package:flutter/material.dart';
import 'package:github/constants/theme.dart';
import 'package:github/screens/repo_detail_screen.dart';

void main() {
  runApp(const GitHubApp());
}

class GitHubApp extends StatelessWidget {
  const GitHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub',
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      darkTheme: themeDark,
      home: const RepoDetailsScreen(),
    );
  }
}

//telas não ficam aqui, em projetos criamos arquivos com as telas
//aqui podem ter configurações apenas