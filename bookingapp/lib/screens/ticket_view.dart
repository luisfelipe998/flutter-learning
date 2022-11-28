import 'package:bookingapp/utils/app_layout.dart';
import 'package:bookingapp/widgets/column_layout.dart';
import 'package:bookingapp/widgets/layout_builder.dart';
import 'package:bookingapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid ? 166 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.blueColor : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                      const Spacer(),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child: const AppLayoutBuilder(sections: 6)),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFF8ACCF7)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(
                        isColor: true,
                      ),
                      const Spacer(),
                      Text(ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                      Text(ticket['flying_time'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // line in orange part inbetween the ticket
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Styles.bgColor : Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getWidth(10)),
                            bottomRight:
                                Radius.circular(AppLayout.getWidth(10))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getWidth(6)),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: isColor == null
                                          ? Colors.white
                                          : Colors.grey.shade300),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Styles.bgColor : Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getWidth(10)),
                            bottomLeft:
                                Radius.circular(AppLayout.getWidth(10))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      AppLayout.getWidth(isColor == null ? 21 : 0)),
                  bottomRight: Radius.circular(
                      AppLayout.getWidth(isColor == null ? 21 : 0)),
                ),
              ),
              padding: EdgeInsets.only(
                left: AppLayout.getWidth(16),
                top: AppLayout.getHeight(10),
                right: AppLayout.getWidth(10),
                bottom: AppLayout.getHeight(16),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: ticket['date'],
                      secondText: "Date",
                      isColor: isColor,
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.center,
                      firstText: ticket['departure_time'],
                      secondText: "Departure time",
                      isColor: isColor,
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: ticket['number'].toString(),
                      secondText: "Number",
                      isColor: isColor,
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
