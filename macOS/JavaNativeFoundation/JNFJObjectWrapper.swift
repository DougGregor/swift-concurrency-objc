
class JNFJObjectWrapper : NSObject {
  init!(jObject jObjectIn: jobject!, withEnv env: UnsafeMutablePointer<JNIEnv?>!)
  func setJObject(_ jObjectIn: jobject!, withEnv env: UnsafeMutablePointer<JNIEnv?>!)
  func jObject(withEnv env: UnsafeMutablePointer<JNIEnv?>!) -> jobject!
  var jObject: jobject! { get }
}
class JNFWeakJObjectWrapper : JNFJObjectWrapper {
}
