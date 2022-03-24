java -jar openapi-generator-cli-5.4.0.jar generate -i parro.yaml -g dart -c open-generator-config.yaml --enable-post-process-file
rm -r ./lib/auth

sed -i "/import 'package:http\/http\.dart';/d" ./lib/api.dart
sed -i "/import 'package:intl\/intl\.dart';/d" ./lib/api.dart

sed -i "/part 'api_client.dart';/d" ./lib/api.dart
sed -i "/part 'api_exception.dart';/d" ./lib/api.dart
sed -i "/part 'auth\/authentication.dart';/d" ./lib/api.dart
sed -i "/part 'auth\/api_key_auth.dart';/d" ./lib/api.dart
sed -i "/part 'auth\/oauth.dart';/d" ./lib/api.dart
sed -i "/part 'auth\/http_bearer_auth.dart';/d" ./lib/api.dart
sed -i "/part 'auth\/http_basic_auth.dart';/d" ./lib/api.dart

sed -i "/final _dateFormatter = DateFormat('yyyy-MM-dd');/d" ./lib/api.dart
sed -i "/ApiClient defaultApiClient = ApiClient();/d" ./lib/api.dart

sed -i '65,73d' ./lib/api_helper.dart
