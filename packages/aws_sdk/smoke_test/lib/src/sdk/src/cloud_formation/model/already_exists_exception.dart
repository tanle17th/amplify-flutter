// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.already_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'already_exists_exception.g.dart';

/// The resource with the name requested already exists.
abstract class AlreadyExistsException
    with _i1.AWSEquatable<AlreadyExistsException>
    implements
        Built<AlreadyExistsException, AlreadyExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The resource with the name requested already exists.
  factory AlreadyExistsException({String? message}) {
    return _$AlreadyExistsException._(message: message);
  }

  /// The resource with the name requested already exists.
  factory AlreadyExistsException.build(
          [void Function(AlreadyExistsExceptionBuilder) updates]) =
      _$AlreadyExistsException;

  const AlreadyExistsException._();

  /// Constructs a [AlreadyExistsException] from a [payload] and [response].
  factory AlreadyExistsException.fromResponse(
    AlreadyExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    AlreadyExistsExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AlreadyExistsExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'AlreadyExistsException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AlreadyExistsException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class AlreadyExistsExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AlreadyExistsException> {
  const AlreadyExistsExceptionAwsQuerySerializer()
      : super('AlreadyExistsException');

  @override
  Iterable<Type> get types => const [
        AlreadyExistsException,
        _$AlreadyExistsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AlreadyExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlreadyExistsExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as AlreadyExistsException);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AlreadyExistsExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}