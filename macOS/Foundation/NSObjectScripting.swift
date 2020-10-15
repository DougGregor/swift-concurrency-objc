
extension NSObject {
  @available(macOS 10.5, *)
  class func scriptingValue(for objectSpecifier: NSScriptObjectSpecifier) -> Any?
  @available(macOS 10.5, *)
  func scriptingValue(for objectSpecifier: NSScriptObjectSpecifier) -> Any?
  var scriptingProperties: [String : Any]?
  @available(macOS 10.5, *)
  class func copyScriptingValue(_ value: Any, forKey key: String, withProperties properties: [String : Any]) -> Any?
  @available(macOS 10.5, *)
  func copyScriptingValue(_ value: Any, forKey key: String, withProperties properties: [String : Any]) -> Any?
  @available(macOS 10.5, *)
  class func newScriptingObject(of objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: Any?, properties: [String : Any]) -> Any?
  @available(macOS 10.5, *)
  func newScriptingObject(of objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: Any?, properties: [String : Any]) -> Any?
  class func scriptingProperties() -> [String : Any]?
  class func setScriptingProperties(_ scriptingProperties: [String : Any]?)
}
