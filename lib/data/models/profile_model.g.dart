// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePageInfoImpl _$$HomePageInfoImplFromJson(Map<String, dynamic> json) =>
    _$HomePageInfoImpl(
      imageUrl: json['imageUrl'] as String,
      carPlateInfo: json['carPlateInfo'] as String,
      carType: json['carType'] as String,
      expireDate: json['expireDate'] as String,
      cardNumber: json['cardNumber'] as String,
      qrData: json['qrData'] as String,
      cardMoney: (json['cardMoney'] as num).toInt(),
      feesCardTitle: json['feesCardTitle'] as String,
      feesCardNumber: json['feesCardNumber'] as String,
      feesCardNumText: json['feesCardNumText'] as String,
      tripsCardTitle: json['tripsCardTitle'] as String,
      tripsCardNumber: json['tripsCardNumber'] as String,
      tripsCardNumText: json['tripsCardNumText'] as String,
      carLetter: json['carLetter'] as String,
      carState: json['carState'] as String,
      moneyTransfersList: (json['moneyTransfersList'] as List<dynamic>)
          .map((e) => MoneyTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestTripsList: (json['latestTripsList'] as List<dynamic>)
          .map((e) => TripInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomePageInfoImplToJson(_$HomePageInfoImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'carPlateInfo': instance.carPlateInfo,
      'carType': instance.carType,
      'expireDate': instance.expireDate,
      'cardNumber': instance.cardNumber,
      'qrData': instance.qrData,
      'cardMoney': instance.cardMoney,
      'feesCardTitle': instance.feesCardTitle,
      'feesCardNumber': instance.feesCardNumber,
      'feesCardNumText': instance.feesCardNumText,
      'tripsCardTitle': instance.tripsCardTitle,
      'tripsCardNumber': instance.tripsCardNumber,
      'tripsCardNumText': instance.tripsCardNumText,
      'carLetter': instance.carLetter,
      'carState': instance.carState,
      'moneyTransfersList': instance.moneyTransfersList,
      'latestTripsList': instance.latestTripsList,
    };
