// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Code generation library for Smithy AST models.
library smithy_codegen;

export 'src/config.dart';
export 'src/exception.dart';
export 'src/format/format_stub.dart'
    if (dart.library.io) 'src/format/format_io.dart';
export 'src/generate.dart';
export 'src/generator/context.dart';
export 'src/generator/generated_library.dart';
export 'src/model/smithy_library.dart';
export 'src/parse.dart';
export 'src/service/codegen.pb.dart';
export 'src/util/pubspec.dart';
export 'src/util/recase.dart';