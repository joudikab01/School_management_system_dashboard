import 'dart:convert';
import 'dart:html';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sms_dashboard/models/models.dart';
import 'package:sms_dashboard/providers/providers.dart';
import 'package:sms_dashboard/utill/widget_size.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import '../../services/api_response.dart';

class AddStudent extends StatefulWidget {
  final Student? student;
  final bool isEditing;
  const AddStudent({
    Key? key,
    this.student,
  })  : isEditing = (student != null),
        super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  bool isParent = true;
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final emailController = TextEditingController();

  final streetController = TextEditingController();
  final cityController = TextEditingController();
  final townController = TextEditingController();

  final fatherController = TextEditingController();
  final motherController = TextEditingController();
  final pemailController = TextEditingController();
  final nationalController = TextEditingController();

  final phoneController = TextEditingController();
  final jobController = TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();

  final FocusNode focusNode4 = FocusNode();
  final FocusNode focusNode5 = FocusNode();
  final FocusNode focusNode6 = FocusNode();

  final FocusNode focusNode7 = FocusNode();
  final FocusNode focusNode8 = FocusNode();
  final FocusNode focusNode9 = FocusNode();
  final FocusNode focusNode10 = FocusNode();

  final FocusNode focusNode11 = FocusNode();
  final FocusNode focusNode12 = FocusNode();

  int? genderDDV;
  int? nationalityDDV;
  int? bloodDDV;
  int? religionDDV;

  int? gradeDDv;
  int? classDDV;
  int? classroomDDv;
  int? mnationalityDDV;
  int? fnationalityDDV;
  int? fbloodDDV;
  int? preligionDDV;
  int? yearDDV;

  String? picture;

  String? _selectedDate;

  void _presentDatePicker() {
    showDatePicker(
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color(0Xff2BC3BB),
            colorScheme: const ColorScheme.light(primary: Color(0Xff2BC3BB)),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate =
            '${pickedDate.year}-${pickedDate.month}-${pickedDate.day}';
      });
    });
  }

  FilePickerResult? result;
  void selectFile() async {
    try {
      result = await FilePicker.platform
          .pickFiles(type: FileType.any, allowMultiple: false);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    if (result != null && result!.files.isNotEmpty) {
      final fileBytes = result!.files.first.bytes;
      final fileName = result!.files.first.name;
      picture = base64Encode(fileBytes!);
    }
  }

  @override
  initState() {
    // Provider.of<AppProvider>(context, listen: false).getSeed();
    final student = widget.student;
    if (student != null) {
      fnameController.text = student.f_name!;
      lnameController.text = student.l_name!;
      emailController.text = student.email!;
      streetController.text = student.address!.street!;
      cityController.text = student.address!.city!;
      townController.text = student.address!.town!;
      fatherController.text = student.parent!.father_name!;
      motherController.text = student.parent!.mother_name!;
      pemailController.text = student.parent!.email!;
      nationalController.text = student.parent!.national_number!;
      phoneController.text = student.parent!.phone!;
      jobController.text = student.parent!.jop!;
      classDDV = student.class_classroom!.classes!.id!;
      genderDDV = student.gender_id;
      nationalityDDV = student.nationality_id;
      bloodDDV = student.blood_id;
      religionDDV = student.religion_id;
      gradeDDv = student.grade_id;
      classroomDDv = student.class_classroom!.classrooms!.id;
      yearDDV = student.academic_year_id;
      _selectedDate = student.birthdate;
    }
    focusNode1.addListener(() {
      setState(() {});
    });
    focusNode2.addListener(() {
      setState(() {});
    });
    focusNode3.addListener(() {
      setState(() {});
    });

    focusNode4.addListener(() {
      setState(() {});
    });
    focusNode5.addListener(() {
      setState(() {});
    });
    focusNode6.addListener(() {
      setState(() {});
    });

    focusNode7.addListener(() {
      setState(() {});
    });
    focusNode8.addListener(() {
      setState(() {});
    });
    focusNode9.addListener(() {
      setState(() {});
    });
    focusNode10.addListener(() {
      setState(() {});
    });
    focusNode11.addListener(() {
      setState(() {});
    });
    focusNode12.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, child) {
      if (provider.getSeedResponse != null) {
        switch (provider.getSeedResponse!.status) {
          case Status.LOADING:
            return const Center(child: Text('loading'));
          case Status.COMPLETED:
            return ListView(
              controller: ScrollController(),
              padding: const EdgeInsets.all(
                30,
              ),
              scrollDirection: Axis.vertical,
              children: [
                const Center(
                  child: Text(
                    'Add Student',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                //fname lname email
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: widgetSize.getWidth(
                          70,
                          context,
                        ),
                        child: TextFormField(
                          focusNode: focusNode1,
                          cursorColor: const Color(
                            0Xff2BC3BB,
                          ),
                          decoration: InputDecoration(
                            hoverColor: const Color(
                              0Xff2BC3BB,
                            ),
                            focusColor: const Color(
                              0Xff2BC3BB,
                            ),
                            labelStyle: TextStyle(
                              color: focusNode1.hasFocus
                                  ? const Color(
                                      0Xff2BC3BB,
                                    )
                                  : Colors.black54,
                            ),
                            labelText: "First name",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 1,
                              ),
                            ),
                          ),
                          controller: fnameController,
                        ),
                      ),
                      SizedBox(
                        width: widgetSize.getWidth(
                          70,
                          context,
                        ),
                        child: TextFormField(
                          focusNode: focusNode2,
                          cursorColor: const Color(
                            0Xff2BC3BB,
                          ),
                          decoration: InputDecoration(
                            hoverColor: const Color(
                              0Xff2BC3BB,
                            ),
                            focusColor: const Color(
                              0Xff2BC3BB,
                            ),
                            labelStyle: TextStyle(
                              color: focusNode2.hasFocus
                                  ? const Color(
                                      0Xff2BC3BB,
                                    )
                                  : Colors.black54,
                            ),
                            labelText: "Last name",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 1,
                              ),
                            ),
                          ),
                          controller: lnameController,
                        ),
                      ),
                      SizedBox(
                        width: widgetSize.getWidth(
                          70,
                          context,
                        ),
                        child: TextFormField(
                          focusNode: focusNode3,
                          cursorColor: const Color(
                            0Xff2BC3BB,
                          ),
                          decoration: InputDecoration(
                            hoverColor: const Color(
                              0Xff2BC3BB,
                            ),
                            focusColor: const Color(
                              0Xff2BC3BB,
                            ),
                            labelStyle: TextStyle(
                              color: focusNode3.hasFocus
                                  ? const Color(
                                      0Xff2BC3BB,
                                    )
                                  : Colors.black54,
                            ),
                            labelText: "Email address",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 1,
                              ),
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                    ],
                  ),
                ),
                //gender religion nationality blood type
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      DropdownButton<int>(
                          hint: const Text(
                            'Gender',
                          ),
                          value: genderDDV,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                            color: const Color(
                              0Xff2BC3BB,
                            ),
                          ),
                          onChanged: (int? newValue) {
                            setState(() {
                              genderDDV = newValue ?? 0;
                            });
                          },
                          items: provider
                              .getSeedResponse!.data!.data![0].genders!
                              .map((e) {
                            return DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(e.type!),
                            );
                          }).toList()),
                      DropdownButton<int>(
                          hint: const Text(
                            'Nationality',
                          ),
                          value: nationalityDDV,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                            color: const Color(
                              0Xff2BC3BB,
                            ),
                          ),
                          onChanged: (int? newValue) {
                            setState(() {
                              nationalityDDV = newValue ?? 0;
                            });
                          },
                          items: provider
                              .getSeedResponse!.data!.data![0].nationality!
                              .map((e) {
                            return DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(e.name!),
                            );
                          }).toList()),
                      DropdownButton<int>(
                          hint: const Text(
                            'Blood type',
                          ),
                          value: bloodDDV,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                            color: const Color(
                              0Xff2BC3BB,
                            ),
                          ),
                          onChanged: (int? newValue) {
                            setState(() {
                              bloodDDV = newValue ?? 0;
                            });
                          },
                          items: provider
                              .getSeedResponse!.data!.data![0].bloods!
                              .map((e) {
                            return DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(e.type!),
                            );
                          }).toList()),
                      DropdownButton<int>(
                          hint: const Text(
                            'Religion',
                          ),
                          value: religionDDV,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                            color: const Color(
                              0Xff2BC3BB,
                            ),
                          ),
                          onChanged: (int? newValue) {
                            setState(() {
                              religionDDV = newValue ?? 0;
                            });
                          },
                          items: provider
                              .getSeedResponse!.data!.data![0].religtions!
                              .map((e) {
                            return DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(e.name!),
                            );
                          }).toList()),
                    ],
                  ),
                ),
                //birthdate picture
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: widgetSize.getWidth(60, context),
                        height: widgetSize.getHeight(100, context),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(
                              0Xff2BC3BB,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                          ),
                          onPressed: () {
                            _presentDatePicker();
                          },
                          child: const Text(
                            'Date of birth',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          selectFile();
                        },
                        child: const Text(
                          'add picture',
                          style: TextStyle(
                            color: Color(
                              0Xff2BC3BB,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // grade class classroom academic year
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DropdownButton<int>(
                          hint: const Text(
                            'Grade',
                          ),
                          value: gradeDDv,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                            color: const Color(
                              0Xff2BC3BB,
                            ),
                          ),
                          onChanged: (int? newValue) {
                            setState(() {
                              gradeDDv = newValue ?? 0;
                            });
                          },
                          items: provider
                              .getSeedResponse!.data!.data![0].grades!
                              .map((e) {
                            return DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(e.name!),
                            );
                          }).toList()),
                      DropdownButton<int>(
                          hint: const Text(
                            'Class',
                          ),
                          value: classDDV,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                            color: const Color(
                              0Xff2BC3BB,
                            ),
                          ),
                          onChanged: (int? newValue) {
                            setState(() {
                              classDDV = newValue ?? 0;
                            });
                          },
                          items: provider
                              .getSeedResponse!.data!.data![0].classes!
                              .map((e) {
                            return DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(e.name!),
                            );
                          }).toList()),
                      DropdownButton<int>(
                          hint: const Text(
                            'Classroom',
                          ),
                          value: classroomDDv,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                            color: const Color(
                              0Xff2BC3BB,
                            ),
                          ),
                          onChanged: (int? newValue) {
                            setState(() {
                              classroomDDv = newValue ?? 0;
                            });
                          },
                          items: provider.getSeedResponse!.data!.data![0]
                              .classes![(classDDV ?? 1) - 1].classroom!
                              .map((e) {
                            return DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(e.name.toString()),
                            );
                          }).toList()),
                      DropdownButton<int>(
                        hint: const Text(
                          'Academic Year',
                        ),
                        value: yearDDV,
                        elevation: 16,
                        underline: Container(
                          height: 2,
                          color: const Color(
                            0Xff2BC3BB,
                          ),
                        ),
                        onChanged: (int? newValue) {
                          setState(() {
                            yearDDV = newValue ?? 0;
                          });
                        },
                        items: provider
                            .getSeedResponse!.data!.data![0].academicYears!
                            .map((e) {
                          return DropdownMenuItem<int>(
                            value: e.id,
                            child: Text(e.date!),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                //address
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: widgetSize.getWidth(
                          70,
                          context,
                        ),
                        child: TextFormField(
                          focusNode: focusNode4,
                          cursorColor: const Color(
                            0Xff2BC3BB,
                          ),
                          decoration: InputDecoration(
                            hoverColor: const Color(
                              0Xff2BC3BB,
                            ),
                            focusColor: const Color(
                              0Xff2BC3BB,
                            ),
                            labelStyle: TextStyle(
                              color: focusNode4.hasFocus
                                  ? const Color(
                                      0Xff2BC3BB,
                                    )
                                  : Colors.black54,
                            ),
                            labelText: "City",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 1,
                              ),
                            ),
                          ),
                          controller: cityController,
                        ),
                      ),
                      SizedBox(
                        width: widgetSize.getWidth(
                          70,
                          context,
                        ),
                        child: TextFormField(
                          focusNode: focusNode5,
                          cursorColor: const Color(
                            0Xff2BC3BB,
                          ),
                          decoration: InputDecoration(
                            hoverColor: const Color(
                              0Xff2BC3BB,
                            ),
                            focusColor: const Color(
                              0Xff2BC3BB,
                            ),
                            labelStyle: TextStyle(
                              color: focusNode5.hasFocus
                                  ? const Color(
                                      0Xff2BC3BB,
                                    )
                                  : Colors.black54,
                            ),
                            labelText: "Town",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 1,
                              ),
                            ),
                          ),
                          controller: townController,
                        ),
                      ),
                      SizedBox(
                        width: widgetSize.getWidth(
                          70,
                          context,
                        ),
                        child: TextFormField(
                          focusNode: focusNode6,
                          cursorColor: const Color(
                            0Xff2BC3BB,
                          ),
                          decoration: InputDecoration(
                            hoverColor: const Color(
                              0Xff2BC3BB,
                            ),
                            focusColor: const Color(
                              0Xff2BC3BB,
                            ),
                            labelStyle: TextStyle(
                              color: focusNode6.hasFocus
                                  ? const Color(
                                      0Xff2BC3BB,
                                    )
                                  : Colors.black54,
                            ),
                            labelText: "Street",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 1,
                              ),
                            ),
                          ),
                          controller: streetController,
                        ),
                      ),
                    ],
                  ),
                ),
                //parents national number
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Parents national number',
                      ),
                      SizedBox(
                        width: widgetSize.getWidth(
                          70,
                          context,
                        ),
                        child: TextFormField(
                          focusNode: focusNode10,
                          cursorColor: const Color(
                            0Xff2BC3BB,
                          ),
                          decoration: InputDecoration(
                            hoverColor: const Color(
                              0Xff2BC3BB,
                            ),
                            focusColor: const Color(
                              0Xff2BC3BB,
                            ),
                            labelStyle: TextStyle(
                              color: focusNode10.hasFocus
                                  ? const Color(
                                      0Xff2BC3BB,
                                    )
                                  : Colors.black54,
                            ),
                            labelText: "National number",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0Xff2BC3BB),
                                width: 1,
                              ),
                            ),
                          ),
                          controller: nationalController,
                        ),
                      ),
                    ],
                  ),
                ),

                //parents
                //mother father email
                isParent
                    ? const SizedBox()
                    : Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: widgetSize.getWidth(
                                70,
                                context,
                              ),
                              child: TextFormField(
                                focusNode: focusNode7,
                                cursorColor: const Color(
                                  0Xff2BC3BB,
                                ),
                                decoration: InputDecoration(
                                  hoverColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  focusColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  labelStyle: TextStyle(
                                    color: focusNode7.hasFocus
                                        ? const Color(
                                            0Xff2BC3BB,
                                          )
                                        : Colors.black54,
                                  ),
                                  labelText: "Father name",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                controller: fatherController,
                              ),
                            ),
                            SizedBox(
                              width: widgetSize.getWidth(
                                70,
                                context,
                              ),
                              child: TextFormField(
                                focusNode: focusNode8,
                                cursorColor: const Color(
                                  0Xff2BC3BB,
                                ),
                                decoration: InputDecoration(
                                  hoverColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  focusColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  labelStyle: TextStyle(
                                    color: focusNode8.hasFocus
                                        ? const Color(
                                            0Xff2BC3BB,
                                          )
                                        : Colors.black54,
                                  ),
                                  labelText: "Mother name",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                controller: motherController,
                              ),
                            ),
                            SizedBox(
                              width: widgetSize.getWidth(
                                70,
                                context,
                              ),
                              child: TextFormField(
                                focusNode: focusNode9,
                                cursorColor: const Color(
                                  0Xff2BC3BB,
                                ),
                                decoration: InputDecoration(
                                  hoverColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  focusColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  labelStyle: TextStyle(
                                    color: focusNode9.hasFocus
                                        ? const Color(
                                            0Xff2BC3BB,
                                          )
                                        : Colors.black54,
                                  ),
                                  labelText: "Parent email address",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                controller: pemailController,
                              ),
                            ),
                          ],
                        ),
                      ),

                //job and phone
                isParent
                    ? const SizedBox()
                    : Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: widgetSize.getWidth(
                                70,
                                context,
                              ),
                              child: TextFormField(
                                focusNode: focusNode11,
                                cursorColor: const Color(
                                  0Xff2BC3BB,
                                ),
                                decoration: InputDecoration(
                                  hoverColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  focusColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  labelStyle: TextStyle(
                                    color: focusNode11.hasFocus
                                        ? const Color(
                                            0Xff2BC3BB,
                                          )
                                        : Colors.black54,
                                  ),
                                  labelText: "Phone number",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                controller: phoneController,
                              ),
                            ),
                            SizedBox(
                              width: widgetSize.getWidth(
                                70,
                                context,
                              ),
                              child: TextFormField(
                                focusNode: focusNode12,
                                cursorColor: const Color(
                                  0Xff2BC3BB,
                                ),
                                decoration: InputDecoration(
                                  hoverColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  focusColor: const Color(
                                    0Xff2BC3BB,
                                  ),
                                  labelStyle: TextStyle(
                                    color: focusNode12.hasFocus
                                        ? const Color(
                                            0Xff2BC3BB,
                                          )
                                        : Colors.black54,
                                  ),
                                  labelText: "Job",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0Xff2BC3BB),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                controller: jobController,
                              ),
                            ),
                          ],
                        ),
                      ),

                //blood religion nationality
                isParent
                    ? const SizedBox()
                    : Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            DropdownButton<int>(
                                hint: const Text(
                                  'Mother nationality',
                                ),
                                value: mnationalityDDV,
                                elevation: 16,
                                underline: Container(
                                  height: 2,
                                  color: const Color(
                                    0Xff2BC3BB,
                                  ),
                                ),
                                onChanged: (int? newValue) {
                                  setState(() {
                                    mnationalityDDV = newValue ?? 0;
                                  });
                                },
                                items: provider.getSeedResponse!.data!.data![0]
                                    .nationality!
                                    .map((e) {
                                  return DropdownMenuItem<int>(
                                    value: e.id,
                                    child: Text(e.name!),
                                  );
                                }).toList()),
                            DropdownButton<int>(
                              hint: const Text(
                                'Father nationality',
                              ),
                              value: fnationalityDDV,
                              elevation: 16,
                              underline: Container(
                                height: 2,
                                color: const Color(
                                  0Xff2BC3BB,
                                ),
                              ),
                              onChanged: (int? newValue) {
                                setState(() {
                                  fnationalityDDV = newValue ?? 0;
                                });
                              },
                              items: provider
                                  .getSeedResponse!.data!.data![0].nationality!
                                  .map((e) {
                                return DropdownMenuItem<int>(
                                  value: e.id,
                                  child: Text(e.name!),
                                );
                              }).toList(),
                            ),
                            DropdownButton<int>(
                              hint: const Text(
                                'Father blood type',
                              ),
                              value: fbloodDDV,
                              elevation: 16,
                              underline: Container(
                                height: 2,
                                color: const Color(
                                  0Xff2BC3BB,
                                ),
                              ),
                              onChanged: (int? newValue) {
                                setState(() {
                                  fbloodDDV = newValue ?? 0;
                                });
                              },
                              items: provider
                                  .getSeedResponse!.data!.data![0].bloods!
                                  .map((e) {
                                return DropdownMenuItem<int>(
                                  value: e.id,
                                  child: Text(e.type!),
                                );
                              }).toList(),
                            ),
                            DropdownButton<int>(
                              hint: const Text(
                                'Parents religion',
                              ),
                              value: preligionDDV,
                              elevation: 16,
                              underline: Container(
                                height: 2,
                                color: const Color(
                                  0Xff2BC3BB,
                                ),
                              ),
                              onChanged: (int? newValue) {
                                setState(() {
                                  preligionDDV = newValue ?? 0;
                                });
                              },
                              items: provider
                                  .getSeedResponse!.data!.data![0].religtions!
                                  .map((e) {
                                return DropdownMenuItem<int>(
                                  value: e.id,
                                  child: Text(e.name!),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                //submit
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                        width: widgetSize.getWidth(
                          70,
                          context,
                        ),
                        height: widgetSize.getHeight(
                          60,
                          context,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(
                              0Xff2BC3BB,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                          ),
                          child: const Text(
                            'Submit',
                          ),
                          onPressed: () async {
                            final provider = Provider.of<AppProvider>(context,
                                listen: false);
                            if (await provider.checkInternet()) {
                              if (widget.isEditing) {
                                var response = await provider.editStudent(
                                    picture: '$picture',
                                    email: emailController.text,
                                    fName: fnameController.text,
                                    lName: lnameController.text,
                                    nationalityId: nationalityDDV!,
                                    birthdate: _selectedDate!,
                                    bloodId: bloodDDV!,
                                    genderId: genderDDV!,
                                    religionId: religionDDV!,
                                    gradeId: gradeDDv!,
                                    classId: classDDV!,
                                    classroomId: classroomDDv!,
                                    academicYearId: yearDDV!,
                                    city: cityController.text,
                                    town: townController.text,
                                    street: streetController.text,
                                    id: widget.student!.id!,
                                    parentId: widget.student!.parent_id!);
                                if (response.status == Status.LOADING) {
                                  EasyLoading.showToast(
                                    'Loading...',
                                    duration: const Duration(
                                      milliseconds: 300,
                                    ),
                                  );
                                }
                                if (response.status == Status.ERROR) {
                                  EasyLoading.showError(response.message!,
                                      dismissOnTap: true);
                                  setState(() {
                                    isParent = false;
                                  });
                                }
                                if (response.status == Status.COMPLETED) {
                                  if (response.data != null &&
                                      response.data!.status!) {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title:
                                                Text(response.data!.message!),
                                            content: Text(
                                              'The code is: ${response.data!.student![0].code}',
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        });
                                    fnameController.clear();
                                    lnameController.clear();
                                    emailController.clear();
                                    streetController.clear();
                                    cityController.clear();
                                    townController.clear();
                                    fatherController.clear();
                                    motherController.clear();
                                    pemailController.clear();
                                    nationalController.clear();
                                    phoneController.clear();
                                    jobController.clear();
                                    genderDDV = null;
                                    nationalityDDV = null;
                                    bloodDDV = null;
                                    religionDDV = null;
                                    gradeDDv = null;
                                    classDDV = null;
                                    classroomDDv = null;
                                    mnationalityDDV = null;
                                    fnationalityDDV = null;
                                    fbloodDDV = null;
                                    preligionDDV = null;
                                    yearDDV = null;
                                    Provider.of<AppProvider>(context,
                                            listen: false)
                                        .getAllStudents();
                                  }
                                }
                              } else {
                                if (isParent) {
                                  var response = await provider.addStudent(
                                      picture: '$picture',
                                      email: emailController.text,
                                      f_name: fnameController.text,
                                      l_name: lnameController.text,
                                      nationality: nationalityDDV!,
                                      birthdate: _selectedDate!,
                                      blood_id: bloodDDV!,
                                      gender_id: genderDDV!,
                                      religion_id: religionDDV!,
                                      grade_id: gradeDDv!,
                                      class_id: classDDV!,
                                      classroom_id: classroomDDv!,
                                      academic_year_id: yearDDV!,
                                      national_number: nationalController.text,
                                      city: cityController.text,
                                      town: townController.text,
                                      street: streetController.text);
                                  if (response.status == Status.LOADING) {
                                    EasyLoading.showToast(
                                      'Loading...',
                                      duration: const Duration(
                                        milliseconds: 300,
                                      ),
                                    );
                                  }
                                  if (response.status == Status.ERROR) {
                                    EasyLoading.showError(response.message!,
                                        dismissOnTap: true);
                                    setState(() {
                                      isParent = false;
                                    });
                                  }
                                  if (response.status == Status.COMPLETED) {
                                    if (response.data != null &&
                                        response.data!.status!) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title:
                                                  Text(response.data!.message!),
                                              content: Text(
                                                'The code is: ${response.data!.student![0].code}',
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    'Ok',
                                                    style: TextStyle(
                                                        color: Color(
                                                      0Xff2BC3BB,
                                                    )),
                                                  ),
                                                ),
                                              ],
                                            );
                                          });
                                      fnameController.clear();
                                      lnameController.clear();
                                      emailController.clear();
                                      streetController.clear();
                                      cityController.clear();
                                      townController.clear();
                                      fatherController.clear();
                                      motherController.clear();
                                      pemailController.clear();
                                      nationalController.clear();
                                      phoneController.clear();
                                      jobController.clear();
                                      genderDDV = null;
                                      nationalityDDV = null;
                                      bloodDDV = null;
                                      religionDDV = null;
                                      gradeDDv = null;
                                      classDDV = null;
                                      classroomDDv = null;
                                      mnationalityDDV = null;
                                      fnationalityDDV = null;
                                      fbloodDDV = null;
                                      preligionDDV = null;
                                      yearDDV = null;
                                    }
                                  }
                                } else {
                                  var response =
                                      await provider.addStudentWithParent(
                                    picture: picture!,
                                    email: emailController.text,
                                    f_name: fnameController.text,
                                    l_name: lnameController.text,
                                    nationality: nationalityDDV!,
                                    birthdate: _selectedDate!,
                                    blood_id: bloodDDV!,
                                    gender_id: genderDDV!,
                                    religion_id: religionDDV!,
                                    grade_id: gradeDDv!,
                                    class_id: classDDV!,
                                    classroom_id: classroomDDv!,
                                    academic_year_id: yearDDV!,
                                    national_number: nationalController.text,
                                    city: cityController.text,
                                    town: townController.text,
                                    street: streetController.text,
                                    mother_name: motherController.text,
                                    father_name: fatherController.text,
                                    parentEmail: pemailController.text,
                                    parentPhone: phoneController.text,
                                    parentJop: jobController.text,
                                  );
                                  if (response.status == Status.LOADING) {
                                    EasyLoading.showToast(
                                      'Loading...',
                                      duration: const Duration(
                                        milliseconds: 300,
                                      ),
                                    );
                                  }
                                  if (response.status == Status.ERROR) {
                                    EasyLoading.showError(response.message!,
                                        dismissOnTap: true);
                                  }
                                  if (response.status == Status.COMPLETED) {
                                    if (response.data != null &&
                                        response.data!.status!) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title:
                                                  Text(response.data!.message!),
                                              content: Text(
                                                'The student code is: ${response.data!.student![0].code}'
                                                ' and parent code is: ${response.data!.student![0].parent!.code}',
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    'Ok',
                                                    style: TextStyle(
                                                        color: Color(
                                                      0Xff2BC3BB,
                                                    )),
                                                  ),
                                                ),
                                              ],
                                            );
                                          });
                                      fnameController.clear();
                                      lnameController.clear();
                                      emailController.clear();
                                      streetController.clear();
                                      cityController.clear();
                                      townController.clear();
                                      fatherController.clear();
                                      motherController.clear();
                                      pemailController.clear();
                                      nationalController.clear();
                                      phoneController.clear();
                                      jobController.clear();
                                      genderDDV = null;
                                      nationalityDDV = null;
                                      bloodDDV = null;
                                      religionDDV = null;
                                      gradeDDv = null;
                                      classDDV = null;
                                      classroomDDv = null;
                                      mnationalityDDV = null;
                                      fnationalityDDV = null;
                                      fbloodDDV = null;
                                      preligionDDV = null;
                                      yearDDV = null;
                                    }
                                  }
                                }
                              }
                            } else {
                              EasyLoading.showError('No Internet Connection',
                                  dismissOnTap: true);
                            }
                            // if (isParent) {
                            //   try {
                            //     var res = await Provider.of<AppProvider>(
                            //             context,
                            //             listen: false)
                            //         .addStudent(
                            //             picture: image!,
                            //             email: emailController.text,
                            //             f_name: fnameController.text,
                            //             l_name: lnameController.text,
                            //             nationality: nationalityDDV!,
                            //             birthdate: _selectedDate!,
                            //             blood_id: bloodDDV!,
                            //             gender_id: genderDDV!,
                            //             religion_id: religionDDV!,
                            //             grade_id: gradeDDv!,
                            //             class_id: classDDV!,
                            //             classroom_id: classroomDDv!,
                            //             academic_year_id: yearDDV!,
                            //             national_number:
                            //                 nationalController.text,
                            //             city: cityController.text,
                            //             town: townController.text,
                            //             street: streetController.text);
                            //     if (res.data != null) {
                            //       if (res.data!.status!) {
                            //         print('added');
                            //       } else {
                            //         setState(() {
                            //           isParent = false;
                            //         });
                            //       }
                            //     }
                            //   } catch (e) {
                            //     setState(() {
                            //       isParent = false;
                            //     });
                            //   }
                            // } else {
                            //   try {
                            //     var res = await Provider.of<AppProvider>(
                            //             context,
                            //             listen: false)
                            //         .addStudentWithParent(
                            //             picture: image!,
                            //             email: emailController.text,
                            //             f_name: fnameController.text,
                            //             l_name: lnameController.text,
                            //             nationality: nationalityDDV!,
                            //             birthdate: _selectedDate!,
                            //             blood_id: bloodDDV!,
                            //             gender_id: genderDDV!,
                            //             religion_id: religionDDV!,
                            //             grade_id: gradeDDv!,
                            //             class_id: classDDV!,
                            //             classroom_id: classroomDDv!,
                            //             academic_year_id: yearDDV!,
                            //             mother_name: motherController.text,
                            //             father_name: fatherController.text,
                            //             parentEmail: pemailController.text,
                            //             parentJop: jobController.text,
                            //             parentPhone: phoneController.text,
                            //             national_number:
                            //                 nationalController.text,
                            //             city: cityController.text,
                            //             town: townController.text,
                            //             street: streetController.text);
                            //     if (res.data != null) {
                            //       if (res.data!.status!) {
                            //         print('added');
                            //       } else {
                            //         print('not add');
                            //       }
                            //     }
                            //   } catch (e) {
                            //     print('here');
                            //     print(e);
                            //   }
                            // }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          case Status.ERROR:
            return Center(
                child: Text(provider.getSeedResponse!.message!.toString()));
          default:
            return const Center(child: Text('def'));
        }
      }
      return const Center(child: Text('else'));
    });
  }

  @override
  dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    focusNode5.dispose();
    focusNode6.dispose();
    focusNode7.dispose();
    focusNode8.dispose();
    focusNode9.dispose();
    focusNode10.dispose();
    focusNode11.dispose();
    focusNode12.dispose();
    super.dispose();
  }
}
