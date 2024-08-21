// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

part 'task_entity.g.dart';

@Collection()
class TaskEntity {
  Id id = Isar.autoIncrement;
  late String content;
  late String dateNotification;
  late String timeNotification;
}
