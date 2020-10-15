
@available(macOS 10.11, *)
class CSSearchableItemAttributeSet : NSObject, NSCopying, NSSecureCoding {
  @available(macOS, introduced: 10.13, deprecated: 100000, message: "Use initWithContentType instead")
  init(itemContentType: String)
  @available(macOS 11.0, *)
  init(contentType: UTType)
}
class CSLocalizedString : NSString {
  init(localizedStrings: [AnyHashable : Any])
  func localizedString() -> String
}
@available(macOS 10.11, *)
class CSCustomAttributeKey : NSObject, NSCopying, NSSecureCoding {
  convenience init?(keyName: String)
  init?(keyName: String, searchable: Bool, searchableByDefault: Bool, unique: Bool, multiValued: Bool)
  var keyName: String { get }
  var isSearchable: Bool { get }
  var isSearchableByDefault: Bool { get }
  var isUnique: Bool { get }
  var isMultiValued: Bool { get }
}
extension CSSearchableItemAttributeSet {
  func setValue(_ value: NSSecureCoding?, forCustomKey key: CSCustomAttributeKey)
  func value(forCustomKey key: CSCustomAttributeKey) -> NSSecureCoding?
}
extension NSUserActivity {
  @available(macOS 10.11, *)
  @NSCopying var contentAttributeSet: CSSearchableItemAttributeSet?
}
