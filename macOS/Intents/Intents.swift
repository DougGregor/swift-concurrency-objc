
var IntentsVersionNumber: Double
@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
enum INShortcut : ReferenceConvertible {
  case intent(INIntent)
  case userActivity(NSUserActivity)
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut {
  init?(intent: INIntent)
  init(userActivity: NSUserActivity)
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut {
  var intent: INIntent? { get }
  var userActivity: NSUserActivity? { get }
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : CustomStringConvertible {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : CustomDebugStringConvertible {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : Hashable {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : Equatable {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : _ObjectiveCBridgeable {
}

protocol _INIntentSetImageKeyPath {
}

extension _INIntentSetImageKeyPath {
  @available(iOS 12.0, watchOS 5.0, *)
  func setImage<Value>(_ image: INImage?, forParameterNamed parameterName: KeyPath<Self, Value>)
  @available(iOS 12.0, watchOS 5.0, *)
  func image<Value>(forParameterNamed parameterName: KeyPath<Self, Value>) -> INImage?
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INIntegerResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Int?) -> Self
}

extension NSString {
  @available(iOS 12.0, macOS 10.14, watchOS 5.0, tvOS 14.0, *)
  class func deferredLocalizedIntentsString(with format: String, _ args: CVarArg...) -> NSString
  @available(iOS 12.0, macOS 10.14, watchOS 5.0, *)
  class func deferredLocalizedIntentsString(with format: String, table: String, _ args: CVarArg...) -> NSString
  @available(iOS 12.0, macOS 10.14, watchOS 5.0, *)
  class func deferredLocalizedIntentsString(with format: String, table: String, arguments: CVaListPointer) -> NSString
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INDoubleResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Double?) -> Self
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INIntent : _INIntentSetImageKeyPath {
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INBooleanResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Bool?) -> Self
}

