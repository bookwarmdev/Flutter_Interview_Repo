import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:lox_corporate_services/data/models/meeting_model.dart';
import 'package:lox_corporate_services/presentation/routers/router.gr.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<MeetingModel> source) {
    appointments = source;
  }

  // get

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DateTime? _selectedValue;
  final _controller = AdvancedCalendarController.custom(DateTime.now());
  final _selectedEvents = DateTime.now();

  @override
  Widget build(BuildContext context) {
    List<MeetingModel> _getDataSource() {
      final today = DateTime.now();
      final meetings = <MeetingModel>[
        MeetingModel(
          eventName: 'Cardiologist',
          from: DateTime(today.year, today.month, today.day, 9, 0, 0),
          to: DateTime(today.year, today.month, today.day, 9, 0, 0)
              .add(const Duration(hours: 2)),
          background: const Color(0XFFFAE9E9).withGreen(200),
          isAllDay: false,
        ),
      ];
      return meetings;
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: const Color(0xFFEFF1FC),
                selectedTextColor: AppColor.lightColorScheme.primary,
                dateTextStyle: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.4,
                  color: AppColor.lightColorScheme.shadow,
                ),
                dayTextStyle: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4,
                  color: AppColor.lightColorScheme.outline,
                ),
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),
              Text(
                "Schedule Today",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.4,
                  color: const Color(0xFF091F44),
                ),
              ),
              SfCalendar(
                view: CalendarView.day,
                todayHighlightColor: AppColor.lightColorScheme.primary,
                cellBorderColor: Colors.transparent,
                dataSource: MeetingDataSource(_getDataSource()),
                monthViewSettings: const MonthViewSettings(
                  appointmentDisplayMode:
                      MonthAppointmentDisplayMode.appointment,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reminder",
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.4,
                          color: const Color(0xFF091F44),
                        ),
                      ),
                      Text(
                        "Dont forget schedule for upcoming appointment",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                          color: AppColor.lightColorScheme.outline,
                        ),
                      ),
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
                              color: AppColor.lightColorScheme.outline
                                  .withOpacity(0.2),
                              blurRadius: 6.0,
                              offset: const Offset(0, 5),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                            color: Color(0xFFEF802F0D)
                                                .withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: SvgPicture.asset(
                                              "assets/icons/start.svg"),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Ratings",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.4,
                                                color: const Color(0xFF394D6D),
                                              ),
                                            ),
                                            Text(
                                              "4.78 out of 5",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.4,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Image.asset(
                                  "assets/images/icon.png",
                                  width: 100.0,
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 20.0,
                              ),
                              margin: const EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Color(0xFFF5FAFF),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/icons/calender.svg"),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Monday, Dec 23",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.4,
                                          color:
                                              AppColor.lightColorScheme.shadow,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/icons/time.svg"),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "12:00-13:00",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.4,
                                          color:
                                              AppColor.lightColorScheme.shadow,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppButton(
                                  text: "Shedule",
                                  backgroundColor:
                                      AppColor.lightColorScheme.primary,
                                  color: AppColor.lightColorScheme.background,
                                  onTap: () => context.router.push(
                                    const PaymentScreen(),
                                  ),
                                ),
                                AppButton(
                                  text: "Cancel",
                                  backgroundColor:
                                      AppColor.lightColorScheme.background,
                                  color: AppColor.lightColorScheme.primary,
                                  outLine: true,
                                  onTap: () => context.router.pop(),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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
