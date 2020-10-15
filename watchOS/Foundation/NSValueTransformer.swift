
struct NSValueTransformerName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSValueTransformerName {
  @available(watchOS 2.0, *)
  static let negateBooleanTransformerName: NSValueTransformerName
  @available(watchOS 2.0, *)
  static let isNilTransformerName: NSValueTransformerName
  @available(watchOS 2.0, *)
  static let isNotNilTransformerName: NSValueTransformerName
  @available(watchOS, introduced: 2.0, deprecated: 5.0, renamed: "NSValueTransformerName.secureUnarchiveFromDataTransformerName")
  static let unarchiveFromDataTransformerName: NSValueTransformerName
  @available(watchOS, introduced: 2.0, deprecated: 5.0, renamed: "NSValueTransformerName.secureUnarchiveFromDataTransformerName")
  static let keyedUnarchiveFromDataTransformerName: NSValueTransformerName
  @available(watchOS 5.0, *)
  static let secureUnarchiveFromDataTransformerName: NSValueTransformerName
}
@available(watchOS 2.0, *)
class ValueTransformer : NSObject {
  class func setValueTransformer(_ transformer: ValueTransformer?, forName name: NSValueTransformerName)
  /*not inherited*/ init?(forName name: NSValueTransformerName)
  class func valueTransformerNames() -> [NSValueTransformerName]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(_ value: Any?) -> Any?
  func reverseTransformedValue(_ value: Any?) -> Any?
}
@available(watchOS 5.0, *)
class NSSecureUnarchiveFromDataTransformer : ValueTransformer {
  class var allowedTopLevelClasses: [AnyClass] { get }
}
