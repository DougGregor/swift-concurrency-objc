
@available(watchOS 2.0, *)
enum MPMediaGrouping : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case title
  case album
  case artist
  case albumArtist
  case composer
  case genre
  case playlist
  case podcastTitle
}
@available(watchOS 2.0, *)
class MPMediaQuery : NSObject, NSSecureCoding, NSCopying {
  init(filterPredicates: Set<MPMediaPredicate>?)
  var filterPredicates: Set<MPMediaPredicate>?
  func addFilterPredicate(_ predicate: MPMediaPredicate)
  func removeFilterPredicate(_ predicate: MPMediaPredicate)
  var items: [MPMediaItem]? { get }
  var collections: [MPMediaItemCollection]? { get }
  var groupingType: MPMediaGrouping
  @available(watchOS 2.0, *)
  var itemSections: [MPMediaQuerySection]? { get }
  @available(watchOS 2.0, *)
  var collectionSections: [MPMediaQuerySection]? { get }
  class func albums() -> MPMediaQuery
  class func artists() -> MPMediaQuery
  class func songs() -> MPMediaQuery
  class func playlists() -> MPMediaQuery
  class func podcasts() -> MPMediaQuery
  class func audiobooks() -> MPMediaQuery
  class func compilations() -> MPMediaQuery
  class func composers() -> MPMediaQuery
  class func genres() -> MPMediaQuery
}
@available(watchOS 2.0, *)
class MPMediaPredicate : NSObject, NSSecureCoding {
}
@available(watchOS 2.0, *)
enum MPMediaPredicateComparison : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case equalTo
  case contains
}
@available(watchOS 2.0, *)
class MPMediaPropertyPredicate : MPMediaPredicate {
  /*not inherited*/ init(value: Any?, forProperty property: String)
  /*not inherited*/ init(value: Any?, forProperty property: String, comparisonType: MPMediaPredicateComparison)
  var property: String { get }
  var value: Any? { get }
  var comparisonType: MPMediaPredicateComparison { get }
}
extension MPMediaItem {
  @available(watchOS 2.0, *)
  class func persistentIDProperty(forGroupingType groupingType: MPMediaGrouping) -> String
  @available(watchOS 2.0, *)
  class func titleProperty(forGroupingType groupingType: MPMediaGrouping) -> String
}
