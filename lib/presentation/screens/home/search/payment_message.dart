import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:lox_corporate_services/presentation/routers/router.gr.dart';

class PaymentMessage extends StatefulWidget {
  const PaymentMessage({Key? key}) : super(key: key);

  @override
  State<PaymentMessage> createState() => _PaymentMessageState();
}

class _PaymentMessageState extends State<PaymentMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => context.router.pop(),
                icon: SvgPicture.asset(
                  "assets/icons/arrow-left.svg",
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/success.png",
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            "DONE",
                            style: GoogleFonts.montserrat(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.25,
                              color: AppColor.lightColorScheme.shadow,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkResponse(
                      onTap: () => context.router.push(
                        const ShedueAppointmentScreen(),
                      ),
                      child: DottedBorder(
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
                              "View Appointments",
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
