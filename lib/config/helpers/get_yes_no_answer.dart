import 'package:dio/dio.dart';

import '../../domain/entities/message.dart';
import '../../infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer() async{

    const url = 'https://yesno.wtf/api';

    final response = await _dio.get(url);

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessage();
  }
}