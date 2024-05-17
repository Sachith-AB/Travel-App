// native_function.dart
import 'dart:ffi';
import 'dart:io';

// Define the path to the shared library
final String libraryPath = (Platform.isWindows
    ? 'example.dll'
    : Platform.isMacOS
        ? 'example.dylib'
        : 'example.so');

// Load the shared library
final DynamicLibrary nativeLib = DynamicLibrary.open(libraryPath);

// Define the C function signature
typedef CFunc = Int32 Function(Int32 x);

// Define the Dart function signature
typedef DartFunc = int Function(int x);

// Look up the function
final DartFunc nativeFunction = nativeLib
    .lookup<NativeFunction<CFunc>>('function_name')
    .asFunction<DartFunc>();

int callNativeFunction(int value) {
  return nativeFunction(value);
}
