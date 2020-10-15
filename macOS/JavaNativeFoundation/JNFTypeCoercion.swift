
protocol JNFTypeCoercion {
}
class JNFTypeCoercer : NSObject, JNFTypeCoercion {
  init!(parent parentIn: (JNFTypeCoercion & NSObjectProtocol)!)
  func derive() -> JNFTypeCoercer!
  func add(_ coercion: (JNFTypeCoercion & NSObjectProtocol)!, forNSClass nsClass: AnyClass!, javaClass javaClassName: String!)
  func coerceNSObject(_ obj: Any!, withEnv env: UnsafeMutablePointer<JNIEnv?>!) -> jobject!
  func coerceJavaObject(_ obj: jobject!, withEnv env: UnsafeMutablePointer<JNIEnv?>!) -> Any!
}
class JNFDefaultCoercions : NSObject {
  class func addStringCoercion(to coercer: JNFTypeCoercer!)
  class func addNumberCoercion(to coercer: JNFTypeCoercer!)
  class func addDateCoercion(to coercer: JNFTypeCoercer!)
  class func addListCoercion(to coercer: JNFTypeCoercer!)
  class func addMapCoercion(to coercer: JNFTypeCoercer!)
  class func addSetCoercion(to coercer: JNFTypeCoercer!)
  class func defaultCoercer() -> JNFTypeCoercer!
}
