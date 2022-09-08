import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:lox_corporate_services/presentation/routers/router.gr.dart';

class NuresProfileScreen extends StatefulWidget {
  const NuresProfileScreen({Key? key}) : super(key: key);

  @override
  State<NuresProfileScreen> createState() => _NuresProfileScreenState();
}

class _NuresProfileScreenState extends State<NuresProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: AppStyle.headline6.copyWith(),
        ),
        backgroundColor: AppColor.lightColorScheme.background,
        leading: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: () {
              /* Write listener code here */
              context.router.pop();
            },
            child: SvgPicture.asset(
              "assets/icons/foward_arrow.svg",
            ),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/message.svg",
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColor.lightColorScheme.background,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.lightColorScheme.outline.withOpacity(0.2),
                    blurRadius: 6.0,
                    offset: const Offset(0, 5),
                  )
                ],
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon.png",
                    width: 100.0,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Seun Olumide",
                        style: AppStyle.bodyText1.copyWith(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Nurse",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                          color: const Color(0xFF091F44),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF5FAFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:
                                  SvgPicture.asset("assets/icons/people.svg")),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Patients",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.4,
                                  color: const Color(0xFF394D6D),
                                ),
                              ),
                              Text(
                                "345+",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.4,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "275",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4,
                                color: const Color(0xFF091F44),
                              ),
                            ),
                            Text(
                              "Articles",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.4,
                                color: const Color(0xFF091F44),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "234",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4,
                                color: const Color(0xFF091F44),
                              ),
                            ),
                            Text(
                              "Following",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.4,
                                color: const Color(0xFF091F44),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "123",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4,
                                color: const Color(0xFF091F44),
                              ),
                            ),
                            Text(
                              "Followers",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.4,
                                color: const Color(0xFF091F44),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppButton(
                          text: "Follow",
                          backgroundColor: AppColor.lightColorScheme.primary,
                          color: AppColor.lightColorScheme.background,
                        ),
                        AppButton(
                          text: "Message",
                          backgroundColor: AppColor.lightColorScheme.background,
                          color: AppColor.lightColorScheme.primary,
                          outLine: true,
                          overlayColor: AppColor.lightColorScheme.primary
                              .withOpacity(0.2),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        top: 10.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: AppColor.lightColorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.lightColorScheme.outline
                                  .withOpacity(0.2),
                              blurRadius: 6.0,
                              offset: const Offset(0, 5),
                            )
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                        vertical: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: const Color(0xFFEF802F0D)
                                              .withOpacity(0.2)),
                                      child: SvgPicture.asset(
                                          "assets/icons/start.svg")),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Rating",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4,
                                          color: const Color(0xFF394D6D),
                                        ),
                                      ),
                                      Text(
                                        "4.78 out of 5",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.4,
                                          color:
                                              AppColor.lightColorScheme.shadow,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10.0,
                                  horizontal: 10.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: AppColor.lightColorScheme.primary,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "See all",
                                      style: GoogleFonts.workSans(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor
                                            .lightColorScheme.background,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    SvgPicture.asset(
                                        "assets/icons/foward_back.svg"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Divider(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 10.0,
                                ),
                                margin: const EdgeInsets.only(
                                  right: 20.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: const Color(0xFFEFF1FC),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/question_mark.svg",
                                  width: 16.0,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Anonymous feedback",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.4,
                                      color: AppColor.lightColorScheme.shadow,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Text(
                                      "Very competent specialist. I am very happy that there are such professional doctors. My baby is in safe hands. My child's health is above all",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.4,
                                        color: AppColor.lightColorScheme.shadow,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  "assets/images/user_regular.png",
                                  width: 40.0,
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Erika Lhee",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.4,
                                      color: AppColor.lightColorScheme.shadow,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Text(
                                      "Just a wonderful doctor, very happy that she is leading our child, competent, very smart, nice.",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.4,
                                        color: AppColor.lightColorScheme.shadow,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    AppButton(
                      text: "Make an appointment",
                      iconPath: "assets/icons/apponitment.svg",
                      backgroundColor: AppColor.lightColorScheme.primary,
                      color: AppColor.lightColorScheme.background,
                      size: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                      onTap: () => context.router.push(
                        const AppointmentScreen(),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
