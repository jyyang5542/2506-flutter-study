# 2506-flutter-study

## Dart에서 파일명/변수명/함수명 스타일

- 파일명: `Snake Case` → `home_screen.dart`, `login_screen.dart`

- 함수명/변수명: `Snake Case` → `fetch_user_data()`, `user_name`

- 클래스명: `Pascal Case` → `LoginScreen`, `HomeScreen`

## 디렉토리 구조 연구

```markdown
lib/
├── app/ # 앱 전체 설정 (route, theme 등)
│ ├── app.dart
│ └── router.dart
├── screens/ # 페이지 단위
│ ├── home/
│ │ ├── home_screen.dart
│ │ └── widgets/
│ │ └── post_card.dart
│ └── login/
│ └── login_screen.dart
├── shared/ # 공용 위젯, 스타일
│ ├── widgets/
│ └── constants/
├── models/ # 데이터 모델
├── services/ # API, DB
└── main.dart
```
