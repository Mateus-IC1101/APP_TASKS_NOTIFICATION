// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskEntityCollection on Isar {
  IsarCollection<TaskEntity> get taskEntitys => this.collection();
}

const TaskEntitySchema = CollectionSchema(
  name: r'TaskEntity',
  id: -2911998186285533288,
  properties: {
    r'content': PropertySchema(
      id: 0,
      name: r'content',
      type: IsarType.string,
    ),
    r'dateNotification': PropertySchema(
      id: 1,
      name: r'dateNotification',
      type: IsarType.string,
    ),
    r'timeNotification': PropertySchema(
      id: 2,
      name: r'timeNotification',
      type: IsarType.string,
    )
  },
  estimateSize: _taskEntityEstimateSize,
  serialize: _taskEntitySerialize,
  deserialize: _taskEntityDeserialize,
  deserializeProp: _taskEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _taskEntityGetId,
  getLinks: _taskEntityGetLinks,
  attach: _taskEntityAttach,
  version: '3.1.0+1',
);

int _taskEntityEstimateSize(
  TaskEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.dateNotification.length * 3;
  bytesCount += 3 + object.timeNotification.length * 3;
  return bytesCount;
}

void _taskEntitySerialize(
  TaskEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.content);
  writer.writeString(offsets[1], object.dateNotification);
  writer.writeString(offsets[2], object.timeNotification);
}

TaskEntity _taskEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskEntity();
  object.content = reader.readString(offsets[0]);
  object.dateNotification = reader.readString(offsets[1]);
  object.id = id;
  object.timeNotification = reader.readString(offsets[2]);
  return object;
}

P _taskEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taskEntityGetId(TaskEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _taskEntityGetLinks(TaskEntity object) {
  return [];
}

void _taskEntityAttach(IsarCollection<dynamic> col, Id id, TaskEntity object) {
  object.id = id;
}

extension TaskEntityQueryWhereSort
    on QueryBuilder<TaskEntity, TaskEntity, QWhere> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaskEntityQueryWhere
    on QueryBuilder<TaskEntity, TaskEntity, QWhereClause> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaskEntityQueryFilter
    on QueryBuilder<TaskEntity, TaskEntity, QFilterCondition> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateNotification',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateNotification',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateNotification',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      dateNotificationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateNotification',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeNotification',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeNotification',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeNotification',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeNotificationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeNotification',
        value: '',
      ));
    });
  }
}

extension TaskEntityQueryObject
    on QueryBuilder<TaskEntity, TaskEntity, QFilterCondition> {}

extension TaskEntityQueryLinks
    on QueryBuilder<TaskEntity, TaskEntity, QFilterCondition> {}

extension TaskEntityQuerySortBy
    on QueryBuilder<TaskEntity, TaskEntity, QSortBy> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByDateNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNotification', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy>
      sortByDateNotificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNotification', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByTimeNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeNotification', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy>
      sortByTimeNotificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeNotification', Sort.desc);
    });
  }
}

extension TaskEntityQuerySortThenBy
    on QueryBuilder<TaskEntity, TaskEntity, QSortThenBy> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByDateNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNotification', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy>
      thenByDateNotificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNotification', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByTimeNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeNotification', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy>
      thenByTimeNotificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeNotification', Sort.desc);
    });
  }
}

extension TaskEntityQueryWhereDistinct
    on QueryBuilder<TaskEntity, TaskEntity, QDistinct> {
  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByDateNotification(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateNotification',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByTimeNotification(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeNotification',
          caseSensitive: caseSensitive);
    });
  }
}

extension TaskEntityQueryProperty
    on QueryBuilder<TaskEntity, TaskEntity, QQueryProperty> {
  QueryBuilder<TaskEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaskEntity, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<TaskEntity, String, QQueryOperations>
      dateNotificationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateNotification');
    });
  }

  QueryBuilder<TaskEntity, String, QQueryOperations>
      timeNotificationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeNotification');
    });
  }
}
