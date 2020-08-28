
@available(macOS 10.4, *)
class NSPropertyDescription : NSObject, NSCoding, NSCopying {
  unowned(unsafe) var entity: @sil_unmanaged NSEntityDescription { get }
  var name: String
  var isOptional: Bool
  var isTransient: Bool
  var validationPredicates: [NSPredicate] { get }
  var validationWarnings: [Any] { get }
  func setValidationPredicates(_ validationPredicates: [NSPredicate]?, withValidationWarnings validationWarnings: [String]?)
  var userInfo: [AnyHashable : Any]?
  @available(macOS, introduced: 10.5, deprecated: 10.13, message: "Use NSEntityDescription.indexes instead")
  var isIndexed: Bool
  @available(macOS 10.5, *)
  var versionHash: Data { get }
  @available(macOS 10.5, *)
  var versionHashModifier: String?
  @available(macOS 10.6, *)
  var isIndexedBySpotlight: Bool
  @available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
  var isStoredInExternalRecord: Bool
  @available(macOS 10.6, *)
  var renamingIdentifier: String?
}
