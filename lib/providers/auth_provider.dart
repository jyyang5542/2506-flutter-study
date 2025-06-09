import 'package:flutter_riverpod/flutter_riverpod.dart';

// 로그인 상태: null(로그아웃), 문자열(이메일 주소)
final authProvider = StateProvider<String?>((ref) => null);
