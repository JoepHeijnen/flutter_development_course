rm -r ../lib/generated
java -jar openapi-generator-cli-6.0.0-SNAPSHOT.jar generate -i parro.yaml -g dart -c open-generator-config.yaml --global-property models,supportingFiles --enable-post-process-file
rm -r ../lib/generated/lib/auth
rm -r ../lib/generated/lib/api_client.dart
rm -r ../lib/generated/lib/api_exception.dart

sed -i "/import 'package:http\/http\.dart';/d" ../lib/generated/lib/api.dart
sed -i "/import 'package:intl\/intl\.dart';/d" ../lib/generated/lib/api.dart

sed -i "/part 'api_client.dart';/d" ../lib/generated/lib/api.dart
sed -i "/part 'api_exception.dart';/d" ../lib/generated/lib/api.dart
sed -i "/part 'auth\/authentication.dart';/d" ../lib/generated/lib/api.dart
sed -i "/part 'auth\/api_key_auth.dart';/d" ../lib/generated/lib/api.dart
sed -i "/part 'auth\/oauth.dart';/d" ../lib/generated/lib/api.dart
sed -i "/part 'auth\/http_bearer_auth.dart';/d" ../lib/generated/lib/api.dart
sed -i "/part 'auth\/http_basic_auth.dart';/d" ../lib/generated/lib/api.dart

sed -i "/final _dateFormatter = DateFormat('yyyy-MM-dd');/d" ../lib/generated/lib/api.dart
sed -i "/ApiClient defaultApiClient = ApiClient();/d" ../lib/generated/lib/api.dart

sed -i '61,69d' ../lib/generated/lib/api_helper.dart
