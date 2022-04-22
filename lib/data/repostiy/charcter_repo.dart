import 'package:flutter_application_1/data/api/charc_api.dart';

import '../models/charcters.dart';

class CharctersRepo {
  final CharcterApiSerices charcterApiSerices;

  CharctersRepo(this.charcterApiSerices);
  Future<List<Characterrs>> getallCharcter() async {
    final charcter = await charcterApiSerices.getallCharcter();
    return charcter.map((charct) => Characterrs.fromJson(charct)).toList();
  }
}
