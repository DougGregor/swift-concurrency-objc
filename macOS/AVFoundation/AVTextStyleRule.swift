
@available(macOS 10.9, *)
class AVTextStyleRule : NSObject, NSCopying {
  class func propertyList(for textStyleRules: [AVTextStyleRule]) -> Any
  class func textStyleRules(fromPropertyList plist: Any) -> [AVTextStyleRule]?
  convenience init?(textMarkupAttributes: [String : Any] = [:])
  init?(textMarkupAttributes: [String : Any] = [:], textSelector: String?)
  var textMarkupAttributes: [String : Any] { get }
  var textSelector: String? { get }
}
