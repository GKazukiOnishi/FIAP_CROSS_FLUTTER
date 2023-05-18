import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/models/owner.dart';
import 'package:githubrepo/models/repository.dart';
import 'package:githubrepo/utils/extensions/theme_data_extensions.dart';
import 'package:githubrepo/constants/spacings.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';

class OwnerDetailScreen extends StatefulWidget {
  const OwnerDetailScreen({super.key});

  @override
  State<OwnerDetailScreen> createState() => _OwnerDetailScreenState();
}

class _OwnerDetailScreenState extends State<OwnerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Repositories repositories = kRepositoriesMock;
    Repository repository = kRepositoriesMock[0];
    Owner owner = repository.owner ?? Owner();

    return Scaffold(
      appBar: CustomAppBar(
        text: owner.login,
        hasBackButton: true,
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
                  avatarUrl: owner.avatar,
                  radius: Spacings.xxl * 2,
                ),
                const SizedBox(height: Spacings.xl),
                CustomDevText(
                  text: 'Usuário:',
                  color: context.colors.kTextSecondaryColor,
                  typographyType: TypographyType.label,
                ),
                CustomDevText(
                  text: owner.login,
                  typographyType: TypographyType.title,
                ),
                const SizedBox(height: Spacings.l),
                const CustomDivider(),
                const SizedBox(height: Spacings.l),
                const CustomDevText(
                  text: 'Repositórios',
                  typographyType: TypographyType.header,
                ),
                ListView.separated(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: repositories.length,
                  itemBuilder: (context, index) {
                    return repositoryItem(repositories[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const CustomDivider();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile repositoryItem(Repository item) {
    return ListTile(
      leading: CustomAvatar(
        avatarUrl: item.owner?.avatar,
        radius: Spacings.xl,
      ),
      title: CustomText(
        text: item.name ?? '-',
        style: TypographyType.title,
      ),
      subtitle: CustomText(
        text: item.owner?.login ?? '-',
        color: context.colors.kAccentColor,
        style: TypographyType.label,
      ),
    );
  }
}
