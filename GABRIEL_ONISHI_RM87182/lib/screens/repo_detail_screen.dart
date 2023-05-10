import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';

import '../constants/spacings.dart';
import '../constants/typography.dart';
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
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: CustomAvatar(avatarUrl: repository.owner?.avatar),
                ),
                Column(
                  children: [
                    const CustomText(
                      text: "Repositório",
                      style: TypographyType.label,
                    ),
                    CustomText(
                      text: "${repository.name}",
                      style: TypographyType.header,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const CustomText(
                      text: "Usuário",
                      style: TypographyType.label,
                    ),
                    CustomText(
                      text: "${repository.owner?.login}",
                      style: TypographyType.title,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const CustomText(
                      text: "Descrição",
                      style: TypographyType.label,
                    ),
                    SizedBox(
                      width: 350,
                      child: CustomText(
                        text: "${repository.description}",
                        style: TypographyType.body,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
