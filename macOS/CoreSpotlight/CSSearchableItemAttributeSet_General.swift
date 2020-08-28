
extension CSSearchableItemAttributeSet {
  var displayName: String?
  var alternateNames: [String]?
  var path: String?
  var contentURL: URL?
  var thumbnailURL: URL?
  var thumbnailData: Data?
  var relatedUniqueIdentifier: String?
  @available(macOS 10.11, *)
  var weakRelatedUniqueIdentifier: String?
  var metadataModificationDate: Date?
  var contentType: String?
  var contentTypeTree: [String]?
  var keywords: [String]?
  var title: String?
  var version: String?
  @available(macOS 10.11, *)
  var userCreated: NSNumber?
  @available(macOS 10.11, *)
  var userOwned: NSNumber?
  @available(macOS 10.11, *)
  var userCurated: NSNumber?
  @available(macOS 10.11, *)
  var rankingHint: NSNumber?
  @available(macOS 10.11, *)
  var domainIdentifier: String?
}
extension CSSearchableItemAttributeSet {
  var supportsPhoneCall: NSNumber?
  var supportsNavigation: NSNumber?
}
extension CSSearchableItemAttributeSet {
  var containerTitle: String?
  var containerDisplayName: String?
  var containerIdentifier: String?
  var containerOrder: NSNumber?
}
extension CSSearchableItemAttributeSet {
  @available(macOS 10.11, *)
  var providerDataTypeIdentifiers: [String]?
  @available(macOS 10.11, *)
  var providerFileTypeIdentifiers: [String]?
  @available(macOS 10.11, *)
  var providerInPlaceFileTypeIdentifiers: [String]?
}
