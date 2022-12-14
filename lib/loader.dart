import 'dart:ffi' as ffi;
import 'dart:io' show Platform, Directory;
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;

ffi.DynamicLibrary loadLibrary() {
  var libraryPath = path.join(Directory.current.path, "libxxh.so");

  if (Platform.isMacOS) {
    libraryPath = path.join(Directory.current.path, "libxxh.dylib");
  }

  if (Platform.isWindows) {
    libraryPath = path.join(Directory.current.path, "xxh.dll");
  }

  return ffi.DynamicLibrary.open(libraryPath);
}
