
@available(tvOS 12.0, *)
struct TVPlaybackEvent : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(tvOS 12.0, *)
struct TVPlaybackEventProperty : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension TVMediaItem.MediaType {
  @available(tvOS 12.0, *)
  static let video: TVMediaItem.MediaType
  @available(tvOS 12.0, *)
  static let audio: TVMediaItem.MediaType
}
extension TVMediaItem.ContentRatingDomain {
  @available(tvOS 12.0, *)
  static let movie: TVMediaItem.ContentRatingDomain
  @available(tvOS 12.0, *)
  static let tvShow: TVMediaItem.ContentRatingDomain
  @available(tvOS 12.0, *)
  static let music: TVMediaItem.ContentRatingDomain
}
@available(tvOS 12.0, *)
enum TVPlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case undefined
  case begin
  case loading
  case playing
  case paused
  case scanning
  case fastForwarding
  case rewinding
  case end
}
extension TVPlaylist {
  @available(tvOS 12.0, *)
  enum RepeatMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case all
    case one
  }
  @available(tvOS 12.0, *)
  enum EndAction : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case stop
    case pause
    case waitForMoreItems
  }
}
@available(tvOS 12.0, *)
protocol TVPlaybackEventMarshaling : NSObjectProtocol {
  var properties: [TVPlaybackEventProperty : Any]? { get }
  optional func processReturnValue(value: JSValue, in jsContext: JSContext)
}
@available(tvOS 12.0, *)
class TVPlaybackCustomEventUserInfo : NSObject, TVPlaybackEventMarshaling {
  init(properties: [TVPlaybackEventProperty : Any]?, expectsReturnValue: Bool)
  var expectsReturnValue: Bool
  var returnValue: Any? { get }
}
@available(tvOS 12.0, *)
class TVPlaylist : NSObject {
  var mediaItems: [TVMediaItem] { get }
  var endAction: TVPlaylist.EndAction { get }
  var repeatMode: TVPlaylist.RepeatMode { get }
  var userInfo: [String : Any]? { get }
}
@available(tvOS 12.0, *)
class TVMediaItem : NSObject {
  var type: TVMediaItem.MediaType? { get }
  var url: URL? { get }
  var title: String? { get }
  var subtitle: String? { get }
  var itemDescription: String? { get }
  var contentRatingDomain: TVMediaItem.ContentRatingDomain? { get }
  var contentRatingRanking: NSNumber? { get }
  var artworkImageURL: URL? { get }
  var containsExplicitContent: Bool { get }
  var resumeTime: TimeInterval { get }
  var interstitials: [TVMediaItem.TimeRange] { get }
  var highlightGroups: [TVMediaItem.HighlightGroup] { get }
  var userInfo: [String : Any] { get }
}
extension TVMediaItem {
  @available(tvOS 12.0, *)
  class TimeRange : NSObject {
    var startTime: TimeInterval { get }
    var endTime: TimeInterval { get }
    var duration: TimeInterval { get }
  }
  @available(tvOS 12.0, *)
  class Highlight : NSObject {
    var localizedName: String? { get }
    var highlightDescription: String? { get }
    var timeRange: TVMediaItem.TimeRange { get }
    var imageURL: URL? { get }
  }
  @available(tvOS 12.0, *)
  class HighlightGroup : NSObject {
    var localizedName: String? { get }
    var highlights: [TVMediaItem.Highlight] { get }
  }
  @available(tvOS 12.0, *)
  struct MediaType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct ContentRatingDomain : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(tvOS 12.0, *)
class TVPlayer : NSObject {
  var playlist: TVPlaylist? { get }
  var state: TVPlaybackState { get }
  var currentMediaItem: TVMediaItem? { get }
  var nextMediaItem: TVMediaItem? { get }
  var previousMediaItem: TVMediaItem? { get }
  func dispatch(event: TVPlaybackEvent, userInfo: TVPlaybackEventMarshaling?, completion: ((Bool) -> Void)? = nil)
  func pause()
  func next()
  func previous()
  @available(tvOS 13.0, *)
  func present(animated: Bool)
  func setCurrentMediaItem(toItemAtIndex index: Int)
}
