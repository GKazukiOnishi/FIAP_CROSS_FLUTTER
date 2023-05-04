import 'package:flutter/material.dart';
import 'package:github/components/all.dart';
import 'package:github/constants/typography.dart';
import 'package:github/mocks/repositories_mock.dart';
import 'package:github/models/repository.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Repositories repositories = kRepositoriesMock;

  @override
  Widget build(BuildContext context) {
    //variáveis começando com _ indicam algo privado da classe, como aqui é variável n precisa

    repositoryItem(repository) {
      return ListTile(
        leading: CustomAvatar(
          avatarUrl: repository.owner?.avatar,
        ),
        title: CustomText(
          text: '${repository.name}',
          style: TypographyType.body,
        ),
        subtitle: CustomText(
          text: repository.owner?.login ??
              '-', //poderia ser '${repository.owner?.login}' que já trata null
          style: TypographyType.body,
        ),
      );
    }

    return Scaffold(
      appBar: CustomAppBar(
        bottom: CustomSearchBar(
          onChanged: (search) => debugPrint('search $search'),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          //torna a lista scrolável caso ultrapasse o tamanho da tela
          child: Column(
            children: [
              const CustomText(
                text: 'Resultados',
                style: TypographyType.title,
              ),
              ListView.separated(
                physics:
                    const ClampingScrollPhysics(), //para travar o scroll e não buggar o scroll da tela, para não ter dois scrolls e dar bug
                shrinkWrap: true, //renderizar de acordo com o tamanho da lista
                //sem o separated precisamos sair escolhendo os childrens
                //separated é uma lista com separador
                itemCount: repositories.length,
                itemBuilder: (context, index) {
                  Repository repository = repositories[index];

                  return repositoryItem(repository);
                },
                separatorBuilder: (context, index) {
                  return const CustomDivider(
                    height: 1,
                    width: 1,
                  ); //o separador que escolhemos
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
