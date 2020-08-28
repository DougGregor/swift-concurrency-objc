
extension NSObject {
  @available(macOS 10.4, *)
  class func webScriptName(for selector: Selector!) -> String!
  @available(macOS 10.4, *)
  class func isSelectorExcluded(fromWebScript selector: Selector!) -> Bool
  @available(macOS 10.4, *)
  class func webScriptName(forKey name: UnsafePointer<CChar>!) -> String!
  @available(macOS 10.4, *)
  class func isKeyExcluded(fromWebScript name: UnsafePointer<CChar>!) -> Bool
  @available(macOS 10.4, *)
  class func invokeUndefinedMethod(fromWebScript name: String!, withArguments arguments: [Any]!) -> Any!
  @available(macOS 10.4, *)
  func invokeUndefinedMethod(fromWebScript name: String!, withArguments arguments: [Any]!) -> Any!
  @available(macOS 10.4, *)
  class func invokeDefaultMethod(withArguments arguments: [Any]!) -> Any!
  @available(macOS 10.4, *)
  func invokeDefaultMethod(withArguments arguments: [Any]!) -> Any!
  @available(macOS 10.4, *)
  class func finalizeForWebScript()
  @available(macOS 10.4, *)
  func finalizeForWebScript()
}
@available(macOS, introduced: 10.4, deprecated: 10.14)
class WebScriptObject : NSObject {
  class func throwException(_ exceptionMessage: String!) -> Bool
  @available(macOS 10.5, *)
  func jsObject() -> JSObjectRef!
  func callWebScriptMethod(_ name: String!, withArguments arguments: [Any]!) -> Any!
  func evaluateWebScript(_ script: String!) -> Any!
  func removeWebScriptKey(_ name: String!)
  func stringRepresentation() -> String!
  func webScriptValue(at index: UInt32) -> Any!
  func setWebScriptValueAt(_ index: UInt32, value: Any!)
  func setException(_ description: String!)
  func jsValue() -> JSValue!
}
@available(macOS, introduced: 10.4, deprecated: 10.14)
class WebUndefined : NSObject, NSCoding, NSCopying {
}
