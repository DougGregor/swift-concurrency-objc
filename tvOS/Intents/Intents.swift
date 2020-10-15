
var IntentsVersionNumber: Double
@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
enum INMediaDestination : ReferenceConvertible {
  case library
  case playlist(String)
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination {
  var playlistName: String? { get }
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : CustomStringConvertible {
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : CustomDebugStringConvertible {
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : Hashable {
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : Equatable {
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : _ObjectiveCBridgeable {
}

protocol _INIntentSetImageKeyPath {
}

extension _INIntentSetImageKeyPath {
  @available(iOS 12.0, watchOS 5.0, *)
  func setImage<Value>(_ image: INImage?, forParameterNamed parameterName: KeyPath<Self, Value>)
  @available(iOS 12.0, watchOS 5.0, *)
  func image<Value>(forParameterNamed parameterName: KeyPath<Self, Value>) -> INImage?
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaSearch {
  @nonobjc convenience init(mediaType: INMediaItemType = .unknown, sortOrder: INMediaSortOrder = .unknown, mediaName: String? = nil, artistName: String? = nil, albumName: String? = nil, genreNames: [String]? = nil, moodNames: [String]? = nil, releaseDate: INDateComponentsRange? = nil, reference: INMediaReference = .unknown, mediaIdentifier: String? = nil)
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INIntegerResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Int?) -> Self
}

@available(macOS 10.15, iOS 12.0, watchOS 5.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INPlayMediaIntent {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
  @nonobjc convenience init(mediaItems: [INMediaItem]? = nil, mediaContainer: INMediaItem? = nil, playShuffled: Bool? = nil, playbackRepeatMode: INPlaybackRepeatMode = .unknown, resumePlayback: Bool? = nil, playbackQueueLocation: INPlaybackQueueLocation = .unknown, playbackSpeed: Double? = nil, mediaSearch: INMediaSearch? = nil)
  @nonobjc final var playShuffled: Bool? { get }
  @nonobjc final var resumePlayback: Bool? { get }
  @available(iOS 13.0, watchOS 6.0, *)
  @nonobjc final var playbackSpeed: Double? { get }
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

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaUserContext {
  @available(iOS 13.0, watchOS 6.0, tvOS 14.0, *)
  @nonobjc final var numberOfLibraryItems: Int?
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INIntent : _INIntentSetImageKeyPath {
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INBooleanResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Bool?) -> Self
}

