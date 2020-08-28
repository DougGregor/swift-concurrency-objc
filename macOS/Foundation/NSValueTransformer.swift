
struct NSValueTransformerName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSValueTransformerName {
  @available(macOS 10.3, *)
  static let negateBooleanTransformerName: NSValueTransformerName
  @available(macOS 10.3, *)
  static let isNilTransformerName: NSValueTransformerName
  @available(macOS 10.3, *)
  static let isNotNilTransformerName: NSValueTransformerName
  @available(macOS, introduced: 10.3, deprecated: 10.14, renamed: "NSValueTransformerName.secureUnarchiveFromDataTransformerName")
  static let unarchiveFromDataTransformerName: NSValueTransformerName
  @available(macOS, introduced: 10.3, deprecated: 10.14, renamed: "NSValueTransformerName.secureUnarchiveFromDataTransformerName")
  static let keyedUnarchiveFromDataTransformerName: NSValueTransformerName
  @available(macOS 10.14, *)
  static let secureUnarchiveFromDataTransformerName: NSValueTransformerName
}
@available(macOS 10.3, *)
class ValueTransformer : NSObject {
  class func setValueTransformer(_ transformer: ValueTransformer?, forName name: NSValueTransformerName)
  /*not inherited*/ init?(forName name: NSValueTransformerName)
  class func valueTransformerNames() -> [NSValueTransformerName]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(_ value: Any?) -> Any?
  func reverseTransformedValue(_ value: Any?) -> Any?
}
@available(macOS 10.14, *)
class NSSecureUnarchiveFromDataTransformer : ValueTransformer {
  class var allowedTopLevelClasses: [AnyClass] { get }
}
