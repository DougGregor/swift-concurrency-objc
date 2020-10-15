
@available(watchOS 3.2, *)
class INIntent : NSObject, NSCopying, NSSecureCoding {
  var identifier: String? { get }
  @available(watchOS 4.0, *)
  var intentDescription: String? { get }
  @available(watchOS 5.0, *)
  var suggestedInvocationPhrase: String?
  @available(watchOS 7.0, *)
  var shortcutAvailability: INShortcutAvailabilityOptions
  @available(watchOS 5.0, *)
  func __setImage(_ image: INImage?, forParameterNamed parameterName: String)
  @available(watchOS 5.0, *)
  func __image(forParameterNamed parameterName: String) -> INImage?
  func keyImage() -> INImage?
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INIntent : _INIntentSetImageKeyPath {
}
