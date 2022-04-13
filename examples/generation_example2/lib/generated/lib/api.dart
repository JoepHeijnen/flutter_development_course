//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';


part 'model/geon_linkable.dart';
part 'model/link.dart';
part 'model/linkable.dart';
part 'model/r_absence_daypart.dart';
part 'model/r_absence_reason.dart';
part 'model/r_absence_reason_primer.dart';
part 'model/r_absence_reason_type.dart';
part 'model/r_absence_report.dart';
part 'model/r_absence_setting.dart';
part 'model/r_absent_child.dart';
part 'model/r_absent_child_primer.dart';
part 'model/r_attachment.dart';
part 'model/r_attachment_entry.dart';
part 'model/r_attachment_type.dart';
part 'model/r_avatar_attachment.dart';
part 'model/r_child_primer.dart';
part 'model/r_daily_absence_count.dart';
part 'model/rdo_not_disturb_primer.dart';
part 'model/r_guardian_primer.dart';
part 'model/r_identity.dart';
part 'model/r_identity_linked_primer.dart';
part 'model/r_identity_primer.dart';
part 'model/r_organisation_primer.dart';
part 'model/r_parnas_sys_absence_reason.dart';
part 'model/r_parnas_sys_absence_report.dart';
part 'model/r_pricing_plan.dart';
part 'model/r_remote_absence_reason.dart';
part 'model/r_teacher.dart';
part 'model/r_teacher_primer.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
