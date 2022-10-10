// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.max_number_of_configuration_recorders_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_of_configuration_recorders_exceeded_exception.g.dart';

/// You have reached the limit of the number of recorders you can create.
abstract class MaxNumberOfConfigurationRecordersExceededException
    with
        _i1.AWSEquatable<MaxNumberOfConfigurationRecordersExceededException>
    implements
        Built<MaxNumberOfConfigurationRecordersExceededException,
            MaxNumberOfConfigurationRecordersExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have reached the limit of the number of recorders you can create.
  factory MaxNumberOfConfigurationRecordersExceededException(
      {String? message}) {
    return _$MaxNumberOfConfigurationRecordersExceededException._(
        message: message);
  }

  /// You have reached the limit of the number of recorders you can create.
  factory MaxNumberOfConfigurationRecordersExceededException.build(
      [void Function(MaxNumberOfConfigurationRecordersExceededExceptionBuilder)
          updates]) = _$MaxNumberOfConfigurationRecordersExceededException;

  const MaxNumberOfConfigurationRecordersExceededException._();

  /// Constructs a [MaxNumberOfConfigurationRecordersExceededException] from a [payload] and [response].
  factory MaxNumberOfConfigurationRecordersExceededException.fromResponse(
    MaxNumberOfConfigurationRecordersExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    MaxNumberOfConfigurationRecordersExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      MaxNumberOfConfigurationRecordersExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxNumberOfConfigurationRecordersExceededException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MaxNumberOfConfigurationRecordersExceededException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class MaxNumberOfConfigurationRecordersExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        MaxNumberOfConfigurationRecordersExceededException> {
  const MaxNumberOfConfigurationRecordersExceededExceptionAwsJson11Serializer()
      : super('MaxNumberOfConfigurationRecordersExceededException');

  @override
  Iterable<Type> get types => const [
        MaxNumberOfConfigurationRecordersExceededException,
        _$MaxNumberOfConfigurationRecordersExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxNumberOfConfigurationRecordersExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxNumberOfConfigurationRecordersExceededExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
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
    final payload =
        (object as MaxNumberOfConfigurationRecordersExceededException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}