import 'package:event_db/event_db.dart';
import 'package:tuple/tuple.dart';

class BookmarkShareInfo extends GenericModel {
  DateTime? lastUpdated;
  List<String>? customOrder;

  @override
  Map<String, Tuple2<Getter, Setter>> getGetterSetterMap() => {
        "lastUpdated": GenericModel.dateTime(
            () => lastUpdated, (value) => lastUpdated = value),
        "customOrder": Tuple2(() => customOrder,
            (val) => customOrder = val?.map<String>((e) => "$e").toList())
      };

  @override
  String get type => "BookmarkShareModel";
}
