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
            padding: const EdgeInsets.all(Spacings
                .l), //EdgeInsets especifica a "margem" em que será aplicado, ex: horizontal, vertical
            /*
              EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10)
              EdgeInsets.symmetric(vertical: 10, horizontal: 10)
            */
            width: MediaQuery.of(context)
                .size
                .width, //melhor do que double.infinity, ele se entende muito melhor entre os dispositivos
            child: Column(
              //geralmente não faz sentido column dentro de column, existem outras maneiras de fazer
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAvatar(
                  avatarUrl: item.owner?.avatar,
                  radius: Spacings.xxl * 2,
                  // radius: MediaQuery.of(context).size.width / 6, assim fica dinâmico com o tamanho da tela
                ),
                const SizedBox(height: Spacings.xl),
                CustomDevText(
                  text: 'Repositório:',
                  color: context.colors.kTextSecondaryColor,
                  typographyType: TypographyType.label,
                ),
                CustomDevText(
                  text: item.name,
                  typographyType: TypographyType.header,
                ),
                const SizedBox(height: Spacings.l),
                CustomDevText(
                  text: 'Usuário:',
                  color: context.colors.kTextSecondaryColor,
                  typographyType: TypographyType.label,
                ),
                CustomDevText(
                  text: item.owner?.login,
                  typographyType: TypographyType.title,
                ),
                const SizedBox(height: Spacings.l),
                CustomDevText(
                  text: 'Descrição:',
                  color: context.colors.kTextSecondaryColor,
                  typographyType: TypographyType.label,
                ),
                CustomDevText(
                  text: item.description,
                  textAlign: TextAlign.center,
                  typographyType: TypographyType.body,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}