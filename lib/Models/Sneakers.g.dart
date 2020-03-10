// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Sneakers.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SneakersAdapter extends TypeAdapter<Sneakers> {
  @override
  final typeId = 0;

  @override
  Sneakers read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Sneakers(
      name: fields[0] as String,
      condition: fields[1] as String,
      price: fields[2] as double,
      imageURL: fields[3] as String,
      avail: fields[4] as int,
      liked: fields[5] as int,
      quantity: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Sneakers obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.condition)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.imageURL)
      ..writeByte(4)
      ..write(obj.avail)
      ..writeByte(5)
      ..write(obj.liked)
      ..writeByte(6)
      ..write(obj.quantity);
  }
}
