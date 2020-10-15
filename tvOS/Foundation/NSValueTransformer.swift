
struct NSValueTransformerName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSValueTransformerName {
  @available(tvOS 9.0, *)
  static let negateBooleanTransformerName: NSValueTransformerName
  @available(tvOS 9.0, *)
  static let isNilTransformerName: NSValueTransformerName
  @available(tvOS 9.0, *)
  static let isNotNilTransformerName: NSValueTransformerName
  @available(tvOS, introduced: 9.0, deprecated: 12.0, renamed: "NSValueTransformerName.secureUnarchiveFromDataTransformerName")
  static let unarchiveFromDataTransformerName: NSValueTransformerName
  @available(tvOS, introduced: 9.0, deprecated: 12.0, renamed: "NSValueTransformerName.secureUnarchiveFromDataTransformerName")
  static let keyedUnarchiveFromDataTransformerName: NSValueTransformerName
  @available(tvOS 12.0, *)
  static let secureUnarchiveFromDataTransformerName: NSValueTransformerName
}
@available(tvOS 9.0, *)
class ValueTransformer : NSObject {
  class func setValueTransformer(_ transformer: ValueTransformer?, forName name: NSValueTransformerName)
  /*not inherited*/ init?(forName name: NSValueTransformerName)
  class func valueTransformerNames() -> [NSValueTransformerName]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(_ value: Any?) -> Any?
  func reverseTransformedValue(_ value: Any?) -> Any?
}
@available(tvOS 12.0, *)
class NSSecureUnarchiveFromDataTransformer : ValueTransformer {
  class var allowedTopLevelClasses: [AnyClass] { get }
}
