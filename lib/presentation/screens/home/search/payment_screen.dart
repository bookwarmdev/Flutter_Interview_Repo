import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:lox_corporate_services/presentation/routers/router.gr.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => context.router.pop(),
                    icon: SvgPicture.asset(
                      "assets/icons/arrow-left.svg",
                    ),
                  ),
                  Text(
                    "Payment Method",
                    style: AppStyle.bodyText1.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20.0,
                    ),
                    margin: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 30.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0XFFF2F2F2),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.lightColorScheme.outline,
                            blurRadius: 6.0,
                            offset: const Offset(0, 3),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/card.svg"),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Credit/Debit Card",
                              style: AppStyle.bodyText1.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/icons/arrow_down.svg"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order",
                        style: AppStyle.bodyText1.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0,
                        ),
                      ),
                      InkResponse(
                        onTap: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/edit.svg"),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Edit",
                              style: AppStyle.caption.copyWith(
                                fontSize: 16.0,
                                color: AppColor.lightColorScheme.primary,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nure",
                            style: AppStyle.bodyText1.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Quantity",
                            style: AppStyle.bodyText1.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Seun Olumide",
                                style: AppStyle.bodyText1.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "\$250",
                                style: AppStyle.bodyText1.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "1",
                            style: AppStyle.headline6.copyWith(),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.15,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$250.00",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      DottedBorder(
                        color: Colors.black,
                        strokeWidth: 2,
                        radius: const Radius.circular(12),
                        dashPattern: const [6, 6, 6, 6],
                        strokeCap: StrokeCap.round,
                        borderType: BorderType.RRect,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          child: Center(
                            child: Text(
                              "Discount Code",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 30.0,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.push(const PaymentMessage());
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        AppColor.lightColorScheme.primary,
                      ),
                      fixedSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width - 50, 55),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17.0),
                      child: Text(
                        "PAY",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.25,
                          color: AppColor.lightColorScheme.background,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
