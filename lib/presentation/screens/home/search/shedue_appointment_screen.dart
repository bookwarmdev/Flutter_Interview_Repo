import 'package:auto_route/auto_route.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lox_corporate_services/controller/provider/provider.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:lox_corporate_services/presentation/routers/router.gr.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class ShedueAppointmentScreen extends StatefulWidget {
  const ShedueAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<ShedueAppointmentScreen> createState() =>
      _ShedueAppointmentScreenState();
}

class _ShedueAppointmentScreenState extends State<ShedueAppointmentScreen> {
  DateTime? _selectedValue;
  @override
  Widget build(BuildContext context) {
    final _appointmentProvider = Provider.of<AppointmentListProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => context.router.replaceAll([const AppNav()]),
                icon: SvgPicture.asset(
                  "assets/icons/arrow-left.svg",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat(DateFormat.MONTH_WEEKDAY_DAY).format(
                          DateTime.now(),
                        ),
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                          color: const Color(0xFF394D6D),
                        ),
                      ),
                      Text(
                        "Today",
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.4,
                          color: const Color(0xFF091F44),
                        ),
                      ),
                    ],
                  ),
                  AppButton(
                    text: "Add",
                    backgroundColor: AppColor.lightColorScheme.primary,
                    color: AppColor.lightColorScheme.background,
                    iconPath: "assets/icons/add_symbol.svg",
                    size: const Size(96, 28),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              TableCalendar(
                firstDay: DateTime.now(),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                calendarFormat: CalendarFormat.week,
                headerVisible: false,
                onDaySelected: (date, dates) {
                  setState(() {
                    // print(dates);
                    // print("-----------------");
                    // print(date);
                  });
                },
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: AppStyle.caption.copyWith(
                    color: AppColor.lightColorScheme.outline,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                  weekendStyle: AppStyle.caption.copyWith(
                    color: AppColor.lightColorScheme.outline,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  canMarkersOverflow: true,
                  todayDecoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  todayTextStyle: AppStyle.caption.copyWith(
                    color: const Color(0XFF0C9359),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                calendarBuilders: CalendarBuilders(
                  dowBuilder: (context, day) {},
                  selectedBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(30.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Text(
                      date.day.toString(),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 63, 14, 14)),
                    ),
                  ),
                  todayBuilder: (context, date, events) => Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15.0),
                        alignment: Alignment.center,
                        child: Text(
                          date.day.toString(),
                          style: AppStyle.caption.copyWith(
                            color: const Color(0XFF0C9359),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        width: 7.0,
                        height: 7.0,
                        margin: const EdgeInsets.only(top: 10.0),
                        decoration: BoxDecoration(
                          color: const Color(0XFF0C9359),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: _appointmentProvider.getNures.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 4,
                                    color: index == 0
                                        ? Colors.white
                                        : const Color(0XFF0C9359),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: const Color(0XFF0C9359),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: CircleAvatar(
                                          backgroundColor: AppColor
                                              .lightColorScheme.background,
                                          child: const Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0XFF0C9359),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 4,
                                    color:
                                        _appointmentProvider.getNures.length -
                                                    1 ==
                                                index
                                            ? Colors.white
                                            : const Color(0XFF0C9359),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _appointmentProvider.getNures[index].name,
                                    style: AppStyle.bodyText1.copyWith(
                                      color: AppColor.lightColorScheme.shadow,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    _appointmentProvider.getNures[index].time,
                                    style: AppStyle.bodyText1.copyWith(
                                      color: AppColor.lightColorScheme.outline,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black,
                            ),
                            child: Checkbox(
                              value:
                                  _appointmentProvider.getNures[index].status,
                              activeColor: Colors.black,
                              fillColor:
                                  MaterialStateProperty.all(Colors.black),
                              overlayColor:
                                  MaterialStateProperty.all(Colors.black),
                              onChanged: (value) {
                                setState(() {
                                  _appointmentProvider.getNures[index].status =
                                      value ?? true;
                                });
                              },
                            ),
                          )
                        ],
                      );
                    })),
              ),
              InkResponse(
                // onTap: () => context.router.push(
                //   const ShedueAppointmentScreen(),
                // ),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30.0),
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
                          "Add Appointment",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
