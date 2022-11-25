import 'package:bookingapp/screens/ticket_view.dart';
import 'package:bookingapp/utils/app_info_list.dart';
import 'package:bookingapp/utils/app_layout.dart';
import 'package:bookingapp/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle,
              ),
              Gap(AppLayout.getHeight(20)),
              const TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                color: Colors.white,
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15.3)),
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Flutter DB",
                              style: Styles.headLineStyle3,
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Passanger",
                              style: Styles.headLineStyle3,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
