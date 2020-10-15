
class NSScriptCoercionHandler : NSObject {
  class func shared() -> NSScriptCoercionHandler
  func coerceValue(_ value: Any, to toClass: AnyClass) -> Any?
  func registerCoercer(_ coercer: Any, selector: Selector, toConvertFrom fromClass: AnyClass, to toClass: AnyClass)
}
