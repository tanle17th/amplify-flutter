// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.describe_configuration_recorder_status_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_recorder_exception.dart'
    as _i9;

/// Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.
///
/// Currently, you can specify only one configuration recorder per region in your account.
class DescribeConfigurationRecorderStatusOperation extends _i1.HttpOperation<
    _i2.DescribeConfigurationRecorderStatusRequest,
    _i2.DescribeConfigurationRecorderStatusRequest,
    _i3.DescribeConfigurationRecorderStatusResponse,
    _i3.DescribeConfigurationRecorderStatusResponse> {
  /// Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.
  ///
  /// Currently, you can specify only one configuration recorder per region in your account.
  DescribeConfigurationRecorderStatusOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.DescribeConfigurationRecorderStatusRequest,
          _i2.DescribeConfigurationRecorderStatusRequest,
          _i3.DescribeConfigurationRecorderStatusResponse,
          _i3.DescribeConfigurationRecorderStatusResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.DescribeConfigurationRecorderStatus',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(
          _i2.DescribeConfigurationRecorderStatusRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeConfigurationRecorderStatusResponse? output]) =>
      200;
  @override
  _i3.DescribeConfigurationRecorderStatusResponse buildOutput(
    _i3.DescribeConfigurationRecorderStatusResponse payload,
    _i7.AWSStreamedHttpResponse response,
  ) =>
      _i3.DescribeConfigurationRecorderStatusResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          _i9.NoSuchConfigurationRecorderException,
          builder: _i9.NoSuchConfigurationRecorderException.fromResponse,
        )
      ];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i10.Future<_i3.DescribeConfigurationRecorderStatusResponse> run(
    _i2.DescribeConfigurationRecorderStatusRequest input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}