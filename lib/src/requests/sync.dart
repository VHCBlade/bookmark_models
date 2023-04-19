import 'package:bookmark_models/bookmark_models.dart';
import 'package:event_db/event_db.dart';
import 'package:tuple/tuple.dart';

class BookmarkSyncRequest extends GenericModel {
  late String collectionId;
  DateTime? lastUpdated;
  @override
  Map<String, Tuple2<Getter, Setter>> getGetterSetterMap() => {
        "collectionId": Tuple2(() => collectionId, (val) => collectionId = val),
        "lastUpdated": GenericModel.dateTime(
            () => lastUpdated, (value) => lastUpdated = value),
      };

  @override
  String get type => "BookmarkSyncRequest";
}

class BookmarkSyncData extends GenericModel {
  late bool updated;
  late DateTime lastUpdated;
  BookmarkCollectionModel? collectionModel;

  @override
  String get type => "BookmarkSyncData";

  @override
  Map<String, Tuple2<Getter, Setter>> getGetterSetterMap() => {
        "updated": Tuple2(() => updated, (val) => updated = val),
        "lastUpdated": GenericModel.dateTime(
            () => lastUpdated, (value) => lastUpdated = value!),
        "collection": GenericModel.model(() => collectionModel,
            (value) => collectionModel = value!, BookmarkCollectionModel.new),
      };
}
