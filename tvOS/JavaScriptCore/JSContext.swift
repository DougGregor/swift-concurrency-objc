
class JSContext : NSObject {
  init!(virtualMachine: JSVirtualMachine!)
  func evaluateScript(_ script: String!) -> JSValue!
  func evaluateScript(_ script: String!, withSourceURL sourceURL: URL!) -> JSValue!
  class func current() -> JSContext!
  class func currentCallee() -> JSValue!
  class func currentThis() -> JSValue!
  class func currentArguments() -> [Any]!
  var globalObject: JSValue! { get }
  var exception: JSValue!
  var exceptionHandler: ((JSContext?, JSValue?) -> Void)!
  var virtualMachine: JSVirtualMachine! { get }
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
