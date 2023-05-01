// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_role_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_role_policy_response.g.dart';

/// Contains the response to a successful GetRolePolicy request.
abstract class GetRolePolicyResponse
    with _i1.AWSEquatable<GetRolePolicyResponse>
    implements Built<GetRolePolicyResponse, GetRolePolicyResponseBuilder> {
  /// Contains the response to a successful GetRolePolicy request.
  factory GetRolePolicyResponse({
    required String roleName,
    required String policyName,
    required String policyDocument,
  }) {
    return _$GetRolePolicyResponse._(
      roleName: roleName,
      policyName: policyName,
      policyDocument: policyDocument,
    );
  }

  /// Contains the response to a successful GetRolePolicy request.
  factory GetRolePolicyResponse.build(
          [void Function(GetRolePolicyResponseBuilder) updates]) =
      _$GetRolePolicyResponse;

  const GetRolePolicyResponse._();

  /// Constructs a [GetRolePolicyResponse] from a [payload] and [response].
  factory GetRolePolicyResponse.fromResponse(
    GetRolePolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetRolePolicyResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRolePolicyResponseBuilder b) {}

  /// The role the policy is associated with.
  String get roleName;

  /// The name of the policy.
  String get policyName;

  /// The policy document.
  ///
  /// IAM stores policies in JSON format. However, resources that were created using CloudFormation templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
  String get policyDocument;
  @override
  List<Object?> get props => [
        roleName,
        policyName,
        policyDocument,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRolePolicyResponse');
    helper.add(
      'roleName',
      roleName,
    );
    helper.add(
      'policyName',
      policyName,
    );
    helper.add(
      'policyDocument',
      policyDocument,
    );
    return helper.toString();
  }
}

class GetRolePolicyResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetRolePolicyResponse> {
  const GetRolePolicyResponseAwsQuerySerializer()
      : super('GetRolePolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetRolePolicyResponse,
        _$GetRolePolicyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetRolePolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRolePolicyResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as GetRolePolicyResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetRolePolicyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        payload.roleName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        payload.policyName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('PolicyDocument'))
      ..add(serializers.serialize(
        payload.policyDocument,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
