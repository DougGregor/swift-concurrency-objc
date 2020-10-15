
extension CSSearchableItemAttributeSet {
  var displayName: String?
  var alternateNames: [String]?
  var path: String?
  var contentURL: URL?
  var thumbnailURL: URL?
  var thumbnailData: Data?
  var relatedUniqueIdentifier: String?
  @available(iOS 10.0, *)
  var weakRelatedUniqueIdentifier: String?
  var metadataModificationDate: Date?
  var contentType: String?
  var contentTypeTree: [String]?
  var keywords: [String]?
  var title: String?
  var version: String?
  @available(iOS 11.0, *)
  var userCreated: NSNumber?
  @available(iOS 11.0, *)
  var userOwned: NSNumber?
  @available(iOS 11.0, *)
  var userCurated: NSNumber?
  @available(iOS 11.0, *)
  var rankingHint: NSNumber?
  @available(iOS 10.0, *)
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
  @available(iOS 11.0, *)
  var providerDataTypeIdentifiers: [String]?
  @available(iOS 11.0, *)
  var providerFileTypeIdentifiers: [String]?
  @available(iOS 11.0, *)
  var providerInPlaceFileTypeIdentifiers: [String]?
}
