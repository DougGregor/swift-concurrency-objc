
class JNFRunnable : NSObject {
  class func invocation(withRunnable runnable: jobject!, withEnv env: UnsafeMutablePointer<JNIEnv?>!) -> NSInvocation!
  class func block(withRunnable runnable: jobject!, withEnv env: UnsafeMutablePointer<JNIEnv?>!) -> (() -> Void)!
}
