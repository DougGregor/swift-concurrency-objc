
let NSOperationNotSupportedForKeyException: String
extension NSObject {
  class func value(at index: Int, inPropertyWithKey key: String) -> Any?
  func value(at index: Int, inPropertyWithKey key: String) -> Any?
  class func value(withName name: String, inPropertyWithKey key: String) -> Any?
  func value(withName name: String, inPropertyWithKey key: String) -> Any?
  class func value(withUniqueID uniqueID: Any, inPropertyWithKey key: String) -> Any?
  func value(withUniqueID uniqueID: Any, inPropertyWithKey key: String) -> Any?
  class func insertValue(_ value: Any, at index: Int, inPropertyWithKey key: String)
  func insertValue(_ value: Any, at index: Int, inPropertyWithKey key: String)
  class func removeValue(at index: Int, fromPropertyWithKey key: String)
  func removeValue(at index: Int, fromPropertyWithKey key: String)
  class func replaceValue(at index: Int, inPropertyWithKey key: String, withValue value: Any)
  func replaceValue(at index: Int, inPropertyWithKey key: String, withValue value: Any)
  class func insertValue(_ value: Any, inPropertyWithKey key: String)
  func insertValue(_ value: Any, inPropertyWithKey key: String)
  class func coerceValue(_ value: Any?, forKey key: String) -> Any?
  func coerceValue(_ value: Any?, forKey key: String) -> Any?
}
