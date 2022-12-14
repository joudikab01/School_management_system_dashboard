// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApiService implements ApiService {
  _ApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://127.0.0.1:8000/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<FTeacher> getAllTeachers() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FTeacher>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'teacher/all',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FTeacher.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FTeacher> addTeacher(formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FTeacher>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'teacher/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FTeacher.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FTeacher> editTeacher(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FTeacher>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'teacher/edit/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FTeacher.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> deleteTeacher(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, 'teacher/delete/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FStudent> getAllStudents(formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FStudent>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'student/all',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FStudent.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FStudent> addStudent(formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FStudent>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'student/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FStudent.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FStudent> editStudent(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FStudent>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'student/edit/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FStudent.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> deleteStudent(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, 'student/delete/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FSubject> getAllSubjects() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FSubject>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'subject/all',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FSubject.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FSubject> addSubject(formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FSubject>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'subject/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FSubject.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FSubject> editSubject(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FSubject>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'subject/edit/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FSubject.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> deleteSubject(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, 'subject/delete/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FMentor> getAllMentors() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FMentor>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'mentor/all',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FMentor.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FMentor> addMentor(formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FMentor>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'mentor/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FMentor.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FMentor> editMentor(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FMentor>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'mentor/edit/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FMentor.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> deleteMentor(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, 'mentor/delete/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FClassroom> getAllClassrooms() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FClassroom>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'classroom/all',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FClassroom.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FClassroom> addClassroom(formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FClassroom>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'classroom/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FClassroom.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FClassroom> editClassroom(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FClassroom>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'classroom/edit/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FClassroom.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> deleteClassroom(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, 'classroom/delete/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FAdmin> login(formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FAdmin>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'admin',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FAdmin.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FAcademicYears> addAcademicYear(formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FAcademicYears>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'AcademicYear/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FAcademicYears.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FAcademicYears> editAcademicYear(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FAcademicYears>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'AcademicYear/update/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FAcademicYears.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> deleteAcademicYear(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, 'AcademicYear/delete/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FSeed> getSeed() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FSeed>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'general/allSeed',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FSeed.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FParent> editParent(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FParent>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'parent/edit/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FParent.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> addLessonsToDay(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'management/add/lessons/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> addSubjectsToTeacher(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'management/add/subject/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> addClassroomToClass(formData, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'management/add/ClassroomToClass/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> addSubjectsToClass(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/management/subject/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FAllSubjectsModel> getSubjectClassClassroom() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FAllSubjectsModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'management/get-subjects',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FAllSubjectsModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ClassClassRooms> getClassClassrooms(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClassClassRooms>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'management/get-classrooms/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClassClassRooms.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> addTimeTable(data) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(data);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'timetable/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> addExam() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'exam/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> deleteExam(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, 'exam/delete/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FMark> setStudentExamMark(id1, id2) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FMark>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'exam/mark/${id1}/${id2}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FMark.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FExam> getStudentExam(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FExam>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'exam/getExam/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FExam.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FExam> getClassExam(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FExam>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'exam/classExam/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FExam.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FAllExams> getAllExams() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FAllExams>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'admin/all-exam',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FAllExams.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> acceptExam(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'admin/accept-exam/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> editExamDate(id, formData) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'admin/edit-exam-date/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FSyllabi> getSyllabi() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FSyllabi>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'admin/all-syllabi',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FSyllabi.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> acceptSyllabi(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'admin/accept-syllabi/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Delete> deleteSyllabi(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Delete>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, 'syllabi/delete/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Delete.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Settings> getSettings() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Settings>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'admin/show-settings',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Settings.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Settings> editSettings(
      phone, name, color, city, town, street, email, method,
      {picture, oldP, newP}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'phone': phone,
      'name': name,
      'color': color,
      'city': city,
      'town': town,
      'street': street,
      'email': email,
      '_method': method,
      'picture': picture,
      'old_password': oldP,
      'new_password': newP
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Settings>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'admin/edit-settings',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Settings.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
