
@available(iOS 9.0, *)
class CSSearchableItemAttributeSet : NSObject, NSCopying, NSSecureCoding {
  @available(iOS, introduced: 9.0, deprecated: 100000, message: "Use initWithContentType instead")
  init(itemContentType: String)
  @available(iOS 14.0, *)
  init(contentType: UTType)
}
class CSLocalizedString : NSString {
  init(localizedStrings: [AnyHashable : Any])
  func localizedString() -> String
}
@available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  @NSCopying var contentAttributeSet: CSSearchableItemAttributeSet?
}
