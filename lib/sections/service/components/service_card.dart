import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
   AssetImage? image;

   @override
  void initState() {
    super.initState();
    image = AssetImage(services[widget.index!].image!);

  }
  @override
  void dispose() {
    super.dispose();
    image!.evict();
  }

  @override
  Widget build(BuildContext context) {
     Service service = services[widget.index!];
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: Column(
        children: [
          Container(
            width: 250,
            alignment: Alignment.center,
            child: Text(
             service.title!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),

          ),
          SizedBox(height: 6),
          AnimatedContainer(
            duration: duration,
            alignment: Alignment.bottomCenter,
            height: 200,
            width: 250,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: image!,
              fit: BoxFit.cover
              ),
              border: Border.all(color: scndColor!.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(15),
              //boxShadow: [if (isHover) kDefaultCardShadow],
                boxShadow: [
                        if (!isHover)
                          BoxShadow(
                            offset: const Offset(0, 20),
                            blurRadius: 30,
                            color: Colors.black.withOpacity(0.1),
                          ),
                      ],
            ),
          ),
            // child:
            //     AnimatedContainer(
            //       duration: duration,
            //       padding: const EdgeInsets.all(kDefaultPadding * 1.5),
            //       height: 90,
            //       width: double.infinity,
            //       decoration: BoxDecoration(
            //         color: services[widget.index!].color!.withOpacity(0.5),
            //         borderRadius: const BorderRadius.only(
            //             bottomLeft: Radius.circular(15),
            //         bottomRight: Radius.circular(15),),
            //         boxShadow: [
            //           if (!isHover)
            //             BoxShadow(
            //               offset: const Offset(0, 20),
            //               blurRadius: 30,
            //               color: Colors.black.withOpacity(0.1),
            //             ),
            //         ],
            //       ),
            //       child:    Text(
            //         services[widget.index!].title!,
            //         style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
            //       ),
            //
            //     ),




        ],
      ),
    );
  }
}
