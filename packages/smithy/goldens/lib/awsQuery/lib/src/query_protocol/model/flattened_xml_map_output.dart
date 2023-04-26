// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v1.query_protocol.model.flattened_xml_map_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v1/src/query_protocol/model/foo_enum.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'flattened_xml_map_output.g.dart';

abstract class FlattenedXmlMapOutput
    with _i1.AWSEquatable<FlattenedXmlMapOutput>
    implements Built<FlattenedXmlMapOutput, FlattenedXmlMapOutputBuilder> {
  factory FlattenedXmlMapOutput({Map<String, _i2.FooEnum>? myMap}) {
    return _$FlattenedXmlMapOutput._(
        myMap: myMap == null ? null : _i3.BuiltMap(myMap));
  }

  factory FlattenedXmlMapOutput.build(
          [void Function(FlattenedXmlMapOutputBuilder) updates]) =
      _$FlattenedXmlMapOutput;

  const FlattenedXmlMapOutput._();

  /// Constructs a [FlattenedXmlMapOutput] from a [payload] and [response].
  factory FlattenedXmlMapOutput.fromResponse(
    FlattenedXmlMapOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    FlattenedXmlMapOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlattenedXmlMapOutputBuilder b) {}
  _i3.BuiltMap<String, _i2.FooEnum>? get myMap;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FlattenedXmlMapOutput');
    helper.add(
      'myMap',
      myMap,
    );
    return helper.toString();
  }
}

class FlattenedXmlMapOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<FlattenedXmlMapOutput> {
  const FlattenedXmlMapOutputAwsQuerySerializer()
      : super('FlattenedXmlMapOutput');

  @override
  Iterable<Type> get types => const [
        FlattenedXmlMapOutput,
        _$FlattenedXmlMapOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  FlattenedXmlMapOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlattenedXmlMapOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'myMap':
          if (value != null) {
            result.myMap.addAll(const _i4.XmlBuiltMapSerializer(
              flattenedKey: 'myMap',
              indexer: _i4.XmlIndexer.awsQueryMap,
            )
                .deserialize(
                  serializers,
                  value is String ? const [] : (value as Iterable<Object?>),
                  specifiedType: const FullType(
                    _i3.BuiltMap,
                    [
                      FullType(String),
                      FullType(_i2.FooEnum),
                    ],
                  ),
                )
                .toMap()
                .cast());
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as FlattenedXmlMapOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'FlattenedXmlMapOutputResponse',
        _i4.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.myMap != null) {
      result.addAll(const _i4.XmlBuiltMapSerializer(
        flattenedKey: 'myMap',
        indexer: _i4.XmlIndexer.awsQueryMap,
      ).serialize(
        serializers,
        payload.myMap!,
        specifiedType: const FullType.nullable(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(_i2.FooEnum),
          ],
        ),
      ));
    }
    return result;
  }
}