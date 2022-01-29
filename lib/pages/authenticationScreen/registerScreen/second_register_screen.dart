import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_ui_app/pages/widgets/authWidget/welcomeMesgWidget.dart';
import 'package:starbucks_ui_app/pages/widgets/small_button.dart';
import 'package:starbucks_ui_app/utils/colors.dart';

class SecondRegisterScreen extends StatefulWidget {
  static const routeName = "/register_second_-page";

  @override
  _SecondRegisterScreenState createState() => _SecondRegisterScreenState();
}

class _SecondRegisterScreenState extends State<SecondRegisterScreen> {
  @override
  bool _isChecked = true;
  String _currText = '';
  String _selectedDay;
  List<String> listOfDays = ['1', '2', '3', '4', '5'];
  String _selectedMonth;
  List<String> listOfMonths = ['1', '2', '3', '4', '5'];
  String _selectedCity;
  List<String> listOfCities = ['1', '2', '3', '4', '5'];
  String _selectedDistrict;
  List<String> listOfDistricts = ['1', '2', '3', '4', '5'];
  String _selectedWard;
  List<String> listOfWards = ['1', '2', '3', '4', '5'];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset("assets/images/back.png"),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: welcomeMessageWidget("Hi  👋", "Welcome to", " Starbucks"),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 26.0, vertical: 10),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    smallButtonWidget(
                      context,
                      AppColors.primaryColor,
                      "Birthday",
                      14.0,
                      Colors.white,
                    ),
                    Text(
                        "We would never want to miss such a special day. Your birthday cannot be changed after submission.",
                        style: GoogleFonts.manrope(
                            fontSize: 14, color: AppColors.smallTextColor)),
                    SizedBox(height: 0),

                    // InputDatePickerFormField(
                    //   firstDate: DateTime(1988, 0, 0, 0, 0),
                    //   lastDate: DateTime(2030, 0, 0, 0, 0),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _dayWidget(context),
                        //  SizedBox(height: 20),
                        _monthWidget(context),
                      ],
                    ),

                    // CalendarDatePicker(
                    //     initialDate: DateTime.now(),
                    //     firstDate: DateTime(1988, 9, 7, 0, 0),
                    //     lastDate: DateTime(2030, 9, 7, 0, 0),
                    //     onDateChanged: (DateTime date) {}),

                    SizedBox(height: 20),

                    smallButtonWidget(
                      context,
                      AppColors.primaryColor,
                      "Contact Address",
                      14.0,
                      Colors.white,
                    ),
                    SizedBox(height: 10),
                    _addressWidget(),
                    // SizedBox(height: 20),
                    SizedBox(height: 10),
                    _cityWidget(),

                    SizedBox(height: 10),
                    _districtWidget(),

                    SizedBox(height: 10),
                    _wardWidget(),

                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _phoneNumberWidget(context),
                        //  SizedBox(height: 20),
                        _phoneWidget()
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Email preferences & Terms",
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: AppColors.smallTextColor)),
                    SizedBox(height: 20),
                    _checkBoxWidget(),
                    SizedBox(height: 20),
                    Text(
                        'By clicking this button, I agree to the Startbucks Site',
                        style: GoogleFonts.manrope(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.smallTextColor)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms of use',
                          style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor),
                        )),
                         smallButtonWidget(
                      context,
                      AppColors.primaryColor,
                      "Join now",
                      14.0,
                      Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Container _dayWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: DropdownButtonFormField(
        value: _selectedDay,
        hint: Text('Day',
            style: GoogleFonts.manrope(
                fontSize: 14, color: AppColors.smallTextColor)),
        isExpanded: true,
        onChanged: (value) {
          setState(() {
            _selectedDay = value;
          });
        },
        onSaved: (value) {
          setState(() {
            _selectedDay = value;
          });
        },
        validator: (String value) {
          if (value.isEmpty) {
            return "can't be empty";
          } else {
            return null;
          }
        },
        items: listOfDays.map((String val) {
          return DropdownMenuItem(
            value: val,
            child: Text(val,
                style: GoogleFonts.manrope(
                    fontSize: 14, color: AppColors.smallTextColor)),
          );
        }).toList(),
      ),
    );
  }

  Container _phoneNumberWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: DropdownButtonFormField(
        value: _selectedDay,
        hint: Text('+123',
            style: GoogleFonts.manrope(
                fontSize: 12, color: AppColors.smallTextColor)),
        isExpanded: true,
        onChanged: (value) {
          setState(() {
            _selectedDay = value;
          });
        },
        onSaved: (value) {
          setState(() {
            _selectedDay = value;
          });
        },
        validator: (String value) {
          if (value.isEmpty) {
            return "can't be empty";
          } else {
            return null;
          }
        },
        items: listOfDays.map((String val) {
          return DropdownMenuItem(
            value: val,
            child: Text(val,
                style: GoogleFonts.manrope(
                    fontSize: 14, color: AppColors.smallTextColor)),
          );
        }).toList(),
      ),
    );
  }

  Container _monthWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: DropdownButtonFormField(
        value: _selectedMonth,
        hint: Text('Month',
            style: GoogleFonts.manrope(
                fontSize: 14, color: AppColors.smallTextColor)),
        isExpanded: true,
        onChanged: (value) {
          setState(() {
            _selectedMonth = value;
          });
        },
        onSaved: (value) {
          setState(() {
            _selectedMonth = value;
          });
        },
        validator: (String value) {
          if (value.isEmpty) {
            return "can't be empty";
          } else {
            return null;
          }
        },
        items: listOfMonths.map((String val) {
          return DropdownMenuItem(
            value: val,
            child: Text(val,
                style: GoogleFonts.manrope(
                    fontSize: 14, color: AppColors.smallTextColor)),
          );
        }).toList(),
      ),
    );
  }

  DropdownButtonFormField<String> _wardWidget() {
    return DropdownButtonFormField(
      value: _selectedWard,
      hint: Text('Ward',
          style: GoogleFonts.manrope(
              fontSize: 14, color: AppColors.smallTextColor)),
      isExpanded: true,
      onChanged: (value) {
        setState(() {
          _selectedWard = value;
        });
      },
      onSaved: (value) {
        setState(() {
          _selectedWard = value;
        });
      },
      validator: (String value) {
        if (value.isEmpty) {
          return "can't be empty";
        } else {
          return null;
        }
      },
      items: listOfWards.map((String val) {
        return DropdownMenuItem(
          value: val,
          child: Text(val,
              style: GoogleFonts.manrope(
                  fontSize: 14, color: AppColors.smallTextColor)),
        );
      }).toList(),
    );
  }

  DropdownButtonFormField<String> _districtWidget() {
    return DropdownButtonFormField(
      value: _selectedDistrict,
      hint: Text('District',
          style: GoogleFonts.manrope(
              fontSize: 14, color: AppColors.smallTextColor)),
      isExpanded: true,
      onChanged: (value) {
        setState(() {
          _selectedDistrict = value;
        });
      },
      onSaved: (value) {
        setState(() {
          _selectedDistrict = value;
        });
      },
      validator: (String value) {
        if (value.isEmpty) {
          return "can't be empty";
        } else {
          return null;
        }
      },
      items: listOfDistricts.map((String val) {
        return DropdownMenuItem(
          value: val,
          child: Text(val,
              style: GoogleFonts.manrope(
                  fontSize: 14, color: AppColors.smallTextColor)),
        );
      }).toList(),
    );
  }

  DropdownButtonFormField<String> _cityWidget() {
    return DropdownButtonFormField(
      value: _selectedCity,
      hint: Text('City',
          style: GoogleFonts.manrope(
              fontSize: 14, color: AppColors.smallTextColor)),
      isExpanded: true,
      onChanged: (value) {
        setState(() {
          _selectedCity = value;
        });
      },
      onSaved: (value) {
        setState(() {
          _selectedCity = value;
        });
      },
      validator: (String value) {
        if (value.isEmpty) {
          return "can't be empty";
        } else {
          return null;
        }
      },
      items: listOfCities.map((String val) {
        return DropdownMenuItem(
          value: val,
          child: Text(val,
              style: GoogleFonts.manrope(
                  fontSize: 14, color: AppColors.smallTextColor)),
        );
      }).toList(),
    );
  }

  Widget _checkBoxWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
            value: _isChecked,
            splashRadius: 5.0,
            fillColor: MaterialStateProperty.all(AppColors.primaryColor),
            onChanged: (newValue) => setState(() => _isChecked = newValue)),
        Container(
          width: MediaQuery.of(context).size.width * 0.72,
          child: Text(
              'I do not wish to receive news, special offers and more form Startbucks',
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.smallTextColor)),
        ),
      ],
    );
  }

  Widget _addressWidget() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: "Address",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
      ),
    );
  }

  Widget _phoneWidget() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: TextFormField(
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.phone,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2)),
          hintText: "Mobile Number",
          hintStyle: GoogleFonts.manrope(fontSize: 13),
          focusColor: Colors.black,
        ),
      ),
    );
  }
}
