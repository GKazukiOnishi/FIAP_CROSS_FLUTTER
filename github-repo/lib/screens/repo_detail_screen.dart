import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/spacings.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';
import 'package:githubrepo/models/repository.dart';
import 'package:githubrepo/utils/extensions/theme_data_extensions.dart';

class RepoDetailScreen extends StatelessWidget {
  const RepoDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Repository item = kRepositoriesMock.first;

    return Scaffold(
      backgroundColor: context.colors.kBackgroundColor,
      appBar: CustomAppBar(
        text: 'Repositório',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(Spacings.l),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAvatar(
                  avatarUrl: item.owner?.avatar,
                  radius: Spacings.xxl * 2,
                ),
                const SizedBox(height: Spacings.xl),
                CustomText(
                  text: 'Repositório:',
                  color: context.colors.kTextSecondaryColor,
                  style: TypographyType.label,
                ),
                CustomText(
                  text: item.name ?? '-',
                  style: TypographyType.header,
                ),
                const SizedBox(height: Spacings.l),
                CustomText(
                  text: 'Usuário:',
                  color: context.colors.kTextSecondaryColor,
                  style: TypographyType.label,
                ),
                CustomText(
                  text: item.owner?.login ?? '-',
                  style: TypographyType.title,
                ),
                const SizedBox(height: Spacings.l),
                CustomText(
                  text: 'Descrição:',
                  color: context.colors.kTextSecondaryColor,
                  style: TypographyType.label,
                ),
                CustomText(
                  text: item.description ?? '-',
                  textAlign: TextAlign.center,
                  style: TypographyType.body,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
