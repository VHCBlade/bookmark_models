import 'package:bookmark_models/bookmark_models.dart';
import 'package:event_db/event_db.dart';
import 'package:tuple/tuple.dart';

class IncomingBookmarkShareInfo extends GenericModel {
  DateTime? lastUpdated;
  List<String>? customOrder;

  @override
  Map<String, Tuple2<Getter, Setter>> getGetterSetterMap() => {
        "lastUpdated": GenericModel.dateTime(
            () => lastUpdated, (value) => lastUpdated = value),
        "customOrder": Tuple2(() => customOrder,
            (val) => customOrder = val?.map<String>((e) => "$e").toList()),
      };

  @override
  String get type => "BookmarkShareModel";
}

class OutgoingBookmarkShareInfo extends GenericModel {
  DateTime? lastUpdated;
  bool shouldBeDeleted = false;

  @override
  Map<String, Tuple2<Getter, Setter>> getGetterSetterMap() => {
        "lastUpdated": GenericModel.dateTime(
            () => lastUpdated, (value) => lastUpdated = value),
        "shouldBeDeleted": Tuple2(
            () => shouldBeDeleted, (val) => shouldBeDeleted = val ?? false),
      };

  OutgoingBookmarkShareInfo();

  factory OutgoingBookmarkShareInfo.fromCollection(
      BookmarkCollectionModel model) {
    final retVal = OutgoingBookmarkShareInfo();
    retVal.idSuffix = model.id!;
    retVal.lastUpdated = DateTime.now();

    return retVal;
  }

  @override
  String get type => "BookmarkShareModel";
}
