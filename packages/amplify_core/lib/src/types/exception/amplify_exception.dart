/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Thrown from top level Amplify APIs from the amplify-flutter package.
/// All other Amplify APIs throw subclasses of AmplifyException.
@immutable
class AmplifyException
    with AWSEquatable<AmplifyException>
    implements Exception {
  /// A descriptive message of the problem.
  final String message;

  /// How to recover from this exception.
  final String? recoverySuggestion;

  /// Underlying cause of this exception helpful for debugging.
  // TODO(dnys1): Migrate to `Exception` type when DataStore codegen can be fixed.
  final String? underlyingException;

  @override
  List<Object?> get props => [message, recoverySuggestion, underlyingException];

  /// Named constructor
  const AmplifyException(this.message,
      {this.recoverySuggestion, this.underlyingException});

  /// Instantiates and return a new `AmplifyException` from the
  /// serialized exception data
  static AmplifyException fromMap(Map<String, String> serializedException) {
    if (serializedException['message'] == null) {
      throw const FormatException(
        'Cannot create AmplifyException from map.  Message field is missing',
      );
    }

    return AmplifyException(
      serializedException['message']!,
      recoverySuggestion: serializedException['recoverySuggestion'],
      underlyingException: serializedException['underlyingException'],
    );
  }

  @override
  String toString() =>
      '$runtimeType(message: $message, recoverySuggestion: $recoverySuggestion,'
      ' underlyingException: $underlyingException)';
}
