// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotifImpl _$$NotifImplFromJson(Map<String, dynamic> json) => _$NotifImpl(
      id: json['id'] as String,
      deleted: json['deleted'] as bool,
      creationDate: DateTime.parse(json['creationDate'] as String),
      notifyId: json['notifyId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      picture: json['picture'] as String,
      notifyFor: (json['notifyFor'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      userId: json['userId'] as String,
      isRead: json['isRead'] as bool,
      notificationDestination: (json['notificationDestination'] as num).toInt(),
    );

Map<String, dynamic> _$$NotifImplToJson(_$NotifImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deleted': instance.deleted,
      'creationDate': instance.creationDate.toIso8601String(),
      'notifyId': instance.notifyId,
      'title': instance.title,
      'description': instance.description,
      'picture': instance.picture,
      'notifyFor': instance.notifyFor,
      'date': instance.date.toIso8601String(),
      'userId': instance.userId,
      'isRead': instance.isRead,
      'notificationDestination': instance.notificationDestination,
    };
