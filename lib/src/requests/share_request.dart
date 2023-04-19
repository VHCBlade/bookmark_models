import 'package:event_db/event_db.dart';
import 'package:tuple/tuple.dart';

import '../../bookmark_models.dart';

class BookmarkShareRequest extends GenericModel {
  late String profile;
  late BookmarkCollectionModel collectionModel;

  @override
  Map<String, Tuple2<Getter, Setter>> getGetterSetterMap() => {
        "profile": Tuple2(() => profile, (val) => profile = val),
        "collection": GenericModel.model(() => collectionModel,
            (value) => collectionModel = value!, BookmarkCollectionModel.new),
      };

  @override
  String get type => "BookmarkShareRequest";
}

class BookmarkDeleteRequest extends GenericModel {
  late String profile;
  late BookmarkCollectionModel collectionModel;

  @override
  Map<String, Tuple2<Getter, Setter>> getGetterSetterMap() => {
        "profile": Tuple2(() => profile, (val) => profile = val),
        "collection": GenericModel.model(() => collectionModel,
            (value) => collectionModel = value!, BookmarkCollectionModel.new),
      };

  @override
  String get type => "BookmarkDeleteRequest";
}
