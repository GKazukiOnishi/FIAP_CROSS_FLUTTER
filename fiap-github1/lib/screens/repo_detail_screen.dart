import 'package:flutter/material.dart';
import 'package:github/components/all.dart';
import 'package:github/constants/typography.dart';
import 'package:github/mocks/repositories_mock.dart';
import 'package:github/models/repository.dart';

import '../constants/spacings.dart';

class RepoDetailsScreen extends StatefulWidget {
  const RepoDetailsScreen({super.key});

  @override
  State<RepoDetailsScreen> createState() => _RepoDetailsScreenState();
}

class _RepoDetailsScreenState extends State<RepoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Repository repository = kRepositoriesMock[0];

    return Scaffold(
      appBar: CustomAppBar(
        text: 'Repositório',
        hasBackButton: true,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Spacings.L),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: CustomAvatar(
                      avatarUrl: repository.owner?.avatar,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Spacings.S),
                  child: Column(
                    children: [
                      const CustomText(
                          text: 'Repositório', style: TypographyType.caption),
                      CustomText(
                          text: repository.name ?? '-',
                          style: TypographyType.title)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Spacings.S),
                  child: Column(
                    children: [
                      const CustomText(
                          text: 'Usuário', style: TypographyType.caption),
                      CustomText(
                          text: repository.owner?.login ?? '-',
                          style: TypographyType.title)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Spacings.S),
                  child: Column(
                    children: [
                      const CustomText(
                          text: 'Descrição', style: TypographyType.caption),
                      CustomText(
                        text: repository.description ?? '-',
                        style: TypographyType.body,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
