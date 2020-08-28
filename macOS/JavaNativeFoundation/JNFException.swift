
var kOutOfMemoryError: UnsafePointer<CChar>!
var kClassNotFoundException: UnsafePointer<CChar>!
var kNullPointerException: UnsafePointer<CChar>!
var kIllegalAccessException: UnsafePointer<CChar>!
var kIllegalArgumentException: UnsafePointer<CChar>!
var kNoSuchFieldException: UnsafePointer<CChar>!
var kNoSuchMethodException: UnsafePointer<CChar>!
var kRuntimeException: UnsafePointer<CChar>!
class JNFException : NSException {
  class func raiseUnnamedException(_ env: UnsafeMutablePointer<JNIEnv?>!)
  class func raise(_ env: UnsafeMutablePointer<JNIEnv?>!, throwable: jthrowable!)
  class func raise(_ env: UnsafeMutablePointer<JNIEnv?>!, as javaExceptionType: UnsafePointer<CChar>!, reason reasonMsg: UnsafePointer<CChar>!)
  init!(_ env: UnsafeMutablePointer<JNIEnv?>!, throwable: jthrowable!)
  init!(_ env: UnsafeMutablePointer<JNIEnv?>!, as javaExceptionType: UnsafePointer<CChar>!, reason reasonMsg: UnsafePointer<CChar>!)
  class func `throw`(toJava env: UnsafeMutablePointer<JNIEnv?>!, exception: NSException!)
  class func `throw`(toJava env: UnsafeMutablePointer<JNIEnv?>!, exception: NSException!, as javaExceptionType: UnsafePointer<CChar>!)
  func raise(toJava env: UnsafeMutablePointer<JNIEnv?>!)
}
