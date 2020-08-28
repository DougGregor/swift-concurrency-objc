
@available(tvOS 3.0, *)
class NSPropertyDescription : NSObject, NSCoding, NSCopying {
  unowned(unsafe) var entity: @sil_unmanaged NSEntityDescription { get }
  var name: String
  var isOptional: Bool
  var isTransient: Bool
  var validationPredicates: [NSPredicate] { get }
  var validationWarnings: [Any] { get }
  func setValidationPredicates(_ validationPredicates: [NSPredicate]?, withValidationWarnings validationWarnings: [String]?)
  var userInfo: [AnyHashable : Any]?
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use NSEntityDescription.indexes instead")
  var isIndexed: Bool
  @available(tvOS 3.0, *)
  var versionHash: Data { get }
  @available(tvOS 3.0, *)
  var versionHashModifier: String?
  @available(tvOS 3.0, *)
  var isIndexedBySpotlight: Bool
  @available(tvOS, introduced: 3.0, deprecated: 11.0, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
  var isStoredInExternalRecord: Bool
  @available(tvOS 3.0, *)
  var renamingIdentifier: String?
}
