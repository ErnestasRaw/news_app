import 'package:intl/intl.dart';

const String baseUrl = 'https://newsapi.org';
const String apiKey = 'fba50b58b8a540b68fb9b7a67f210720';

const Duration timeoutShort = Duration(seconds: 5);
const Duration timeoutMedium = Duration(seconds: 15);
const Duration timeoutLong = Duration(seconds: 30);

DateFormat dateFormat = DateFormat('yyyy-MM-dd');
DateFormat dateTimeFormat = DateFormat('yyyy-MM-dd HH:mm:ss');

const String replacementImageURL =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLWPcc5BqySe8f-fYQrAEsX3xVrEdDPgcPKKjESx-sMA&s';
