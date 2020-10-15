
@available(iOS 7.0, *)
class JSContext : NSObject {
  init!(virtualMachine: JSVirtualMachine!)
  func evaluateScript(_ script: String!) -> JSValue!
  @available(iOS 8.0, *)
  func evaluateScript(_ script: String!, withSourceURL sourceURL: URL!) -> JSValue!
  class func current() -> JSContext!
  @available(iOS 8.0, *)
  class func currentCallee() -> JSValue!
  class func currentThis() -> JSValue!
  class func currentArguments() -> [Any]!
  var globalObject: JSValue! { get }
  var exception: JSValue!
  var exceptionHandler: ((JSContext?, JSValue?) -> Void)!
  var virtualMachine: JSVirtualMachine! { get }
  @available(iOS 8.0, *)
  var name: String!
}
extension JSContext {
  func objectForKeyedSubscript(_ key: Any!) -> JSValue!
  func setObject(_ object: Any!, forKeyedSubscript key: (NSCopying & NSObjectProtocol)!)
}
extension JSContext {
  /*not inherited*/ init!(jsGlobalContextRef: JSGlobalContextRef!)
  var jsGlobalContextRef: JSGlobalContextRef! { get }
}
