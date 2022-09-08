import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lox_corporate_services/controller/provider/search_provider.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:lox_corporate_services/presentation/routers/router.gr.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final _searchProvider = Provider.of<SearchProvider>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.lightColorScheme.onPrimaryContainer,
              image: const DecorationImage(
                image: AssetImage("assets/images/Rectangle4053.png"),
                fit: BoxFit.cover,
                opacity: 0.2,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
            child: Text(
              "Hire a nures",
              style: AppStyle.headline2.copyWith(
                color: AppColor.lightColorScheme.outline,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _searchProvider.getNures.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final _name = _searchProvider.getNures[index].name;
                  final avater = _name!.substring(0, 1);
                  return InkWell(
                    onTap: () {
                      context.router.push(const NuresProfileScreen());
                    },
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                    vertical: 10.0,
                                  ),
                                  margin: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColor
                                        .lightColorScheme.inverseSurface,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    avater,
                                    style: AppStyle.caption.copyWith(
                                      color:
                                          AppColor.lightColorScheme.background,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 13.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${_searchProvider.getNures[index].name}",
                                      style: AppStyle.headline6.copyWith(
                                        color: AppColor
                                            .lightColorScheme.inverseSurface,
                                        fontSize: 17.0,
                                      ),
                                    ),
                                    Text(
                                      "${_searchProvider.getNures[index].location}",
                                      style: AppStyle.headline6.copyWith(
                                        color:
                                            AppColor.lightColorScheme.outline,
                                        fontSize: 12.0,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "\$${_searchProvider.getNures[index].amount}",
                              style: AppStyle.headline5.copyWith(
                                color: const Color(0xFFFF4658),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
