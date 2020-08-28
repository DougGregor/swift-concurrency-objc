
@available(macOS 10.9, *)
class JSValue : NSObject {
  var context: JSContext! { get }
  /*not inherited*/ init!(object value: Any!, in context: JSContext!)
  /*not inherited*/ init!(bool value: Bool, in context: JSContext!)
  /*not inherited*/ init!(double value: Double, in context: JSContext!)
  /*not inherited*/ init!(int32 value: Int32, in context: JSContext!)
  /*not inherited*/ init!(uInt32 value: UInt32, in context: JSContext!)
  /*not inherited*/ init!(newObjectIn context: JSContext!)
  /*not inherited*/ init!(newArrayIn context: JSContext!)
  /*not inherited*/ init!(newRegularExpressionFromPattern pattern: String!, flags: String!, in context: JSContext!)
  /*not inherited*/ init!(newErrorFromMessage message: String!, in context: JSContext!)
  @available(macOS 10.15, *)
  /*not inherited*/ init!(newPromiseIn context: JSContext!, fromExecutor callback: ((JSValue?, JSValue?) -> Void)!)
  @available(macOS 10.15, *)
  /*not inherited*/ init!(newPromiseResolvedWithResult result: Any!, in context: JSContext!)
  @available(macOS 10.15, *)
  /*not inherited*/ init!(newPromiseRejectedWithReason reason: Any!, in context: JSContext!)
  @available(macOS 10.15, *)
  /*not inherited*/ init!(newSymbolFromDescription description: String!, in context: JSContext!)
  /*not inherited*/ init!(nullIn context: JSContext!)
  /*not inherited*/ init!(undefinedIn context: JSContext!)
  func toObject() -> Any!
  func toObjectOf(_ expectedClass: AnyClass!) -> Any!
  func toBool() -> Bool
  func toDouble() -> Double
  func toInt32() -> Int32
  func toUInt32() -> UInt32
  func toNumber() -> NSNumber!
  func toString() -> String!
  func toDate() -> Date!
  func toArray() -> [Any]!
  func toDictionary() -> [AnyHashable : Any]!
  var isUndefined: Bool { get }
  var isNull: Bool { get }
  var isBoolean: Bool { get }
  var isNumber: Bool { get }
  var isString: Bool { get }
  var isObject: Bool { get }
  @available(macOS 10.11, *)
  var isArray: Bool { get }
  @available(macOS 10.11, *)
  var isDate: Bool { get }
  @available(macOS 10.15, *)
  var isSymbol: Bool { get }
  func isEqual(to value: Any!) -> Bool
  func isEqualWithTypeCoercion(to value: Any!) -> Bool
  func isInstance(of value: Any!) -> Bool
  func call(withArguments arguments: [Any]!) -> JSValue!
  func construct(withArguments arguments: [Any]!) -> JSValue!
  func invokeMethod(_ method: String!, withArguments arguments: [Any]!) -> JSValue!
}
extension JSValue {
  /*not inherited*/ init!(point: CGPoint, in context: JSContext!)
  /*not inherited*/ init!(range: NSRange, in context: JSContext!)
  /*not inherited*/ init!(rect: CGRect, in context: JSContext!)
  /*not inherited*/ init!(size: CGSize, in context: JSContext!)
  func toPoint() -> CGPoint
  func toRange() -> NSRange
  func toRect() -> CGRect
  func toSize() -> CGSize
}
extension JSValue {
  func forProperty(_ property: String!) -> JSValue!
  func setValue(_ value: Any!, forProperty property: String!)
  func deleteProperty(_ property: String!) -> Bool
  func hasProperty(_ property: String!) -> Bool
  func defineProperty(_ property: String!, descriptor: Any!)
  func atIndex(_ index: Int) -> JSValue!
  func setValue(_ value: Any!, at index: Int)
}
typealias JSValueProperty = NSString
extension JSValue {
  func objectForKeyedSubscript(_ key: Any!) -> JSValue!
  func objectAtIndexedSubscript(_ index: Int) -> JSValue!
  func setObject(_ object: Any!, forKeyedSubscript key: Any!)
  func setObject(_ object: Any!, atIndexedSubscript index: Int)
}
extension JSValue {
  /*not inherited*/ init!(jsValueRef value: JSValueRef!, in context: JSContext!)
  var jsValueRef: JSValueRef! { get }
}
let JSPropertyDescriptorWritableKey: String
let JSPropertyDescriptorEnumerableKey: String
let JSPropertyDescriptorConfigurableKey: String
let JSPropertyDescriptorValueKey: String
let JSPropertyDescriptorGetKey: String
let JSPropertyDescriptorSetKey: String
