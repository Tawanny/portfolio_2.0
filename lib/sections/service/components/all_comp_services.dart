import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/utils/constants.dart';

import '../../../models/complimentary_service.dart';

class AllCompServices extends StatefulWidget {
  const AllCompServices({Key? key}) : super(key: key);

  @override
  State<AllCompServices> createState() => _AllCompServicesState();
}

class _AllCompServicesState extends State<AllCompServices> {
  int activeIndex = 0;
  bool isHover = false;
  bool isExpanded = false;
  UniqueKey? exTileKey;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      height: 300,
      child: Row(
        children: [
          const Expanded(
            child: ThereIsMore(),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: ListView.builder(
              itemCount: complimentaryServices.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                CompService service = complimentaryServices[index];
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: scndColor.withOpacity(0.5),
                      ),
                    ),
                    child: ListTile(
                      tileColor: service.color,
                      contentPadding: const EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // leading: const Icon(Ionicons.rocket_outline, color: prColor,),
                      title: Text(
                        service.title!,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: prColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      trailing: const Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class ThereIsMore extends StatelessWidget {
  const ThereIsMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Text(
              'Oh Wait, There is More!',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 80,
              width: 100,
              child: Image.asset('assets/gif/glasses.gif'),
            ),
            const Spacer(),
          ],
        ),
        const Text(
          complimentaryServicesText,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: kTextColor,
            height: 2,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
