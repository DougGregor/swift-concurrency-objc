
@available(watchOS 1.0, *)
class AVAsset : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  convenience init(url URL: URL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
  var naturalSize: CGSize { get }
  @available(watchOS 6.0, *)
  var minimumTimeOffsetFromLive: CMTime { get }
}
extension AVAsset {
  var providesPreciseDurationAndTiming: Bool { get }
  func cancelLoading()
}
extension AVAsset {
  @available(watchOS 2.0, *)
  var referenceRestrictions: AVAssetReferenceRestrictions { get }
}
struct AVAssetReferenceRestrictions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var forbidRemoteReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var forbidLocalReferenceToRemote: AVAssetReferenceRestrictions { get }
  static var forbidCrossSiteReference: AVAssetReferenceRestrictions { get }
  static var forbidLocalReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var forbidAll: AVAssetReferenceRestrictions { get }
  static var defaultPolicy: AVAssetReferenceRestrictions { get }
}
extension AVAsset {
  var tracks: [AVAssetTrack] { get }
  func track(withTrackID trackID: CMPersistentTrackID) -> AVAssetTrack?
  func tracks(withMediaType mediaType: AVMediaType) -> [AVAssetTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic) -> [AVAssetTrack]
  @available(watchOS 1.0, *)
  var trackGroups: [AVAssetTrackGroup] { get }
}
extension AVAsset {
  @available(watchOS 1.0, *)
  var creationDate: AVMetadataItem? { get }
  var lyrics: String? { get }
  var commonMetadata: [AVMetadataItem] { get }
  @available(watchOS 1.0, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [AVMetadataFormat] { get }
  func metadata(forFormat format: AVMetadataFormat) -> [AVMetadataItem]
}
extension AVAsset {
  @available(watchOS 1.0, *)
  var availableChapterLocales: [Locale] { get }
  @available(watchOS 1.0, *)
  func chapterMetadataGroups(withTitleLocale locale: Locale, containingItemsWithCommonKeys commonKeys: [AVMetadataKey]?) -> [AVTimedMetadataGroup]
  @available(watchOS 1.0, *)
  func chapterMetadataGroups(bestMatchingPreferredLanguages preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(watchOS 1.0, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [AVMediaCharacteristic] { get }
  @available(watchOS 1.0, *)
  func mediaSelectionGroup(forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic) -> AVMediaSelectionGroup?
  @available(watchOS 2.0, *)
  var preferredMediaSelection: AVMediaSelection { get }
  @available(watchOS 4.0, *)
  var allMediaSelections: [AVMediaSelection] { get }
}
extension AVAsset {
  @available(watchOS 2.0, *)
  var hasProtectedContent: Bool { get }
}
extension AVAsset {
  @available(watchOS 2.0, *)
  var canContainFragments: Bool { get }
  @available(watchOS 2.0, *)
  var containsFragments: Bool { get }
  @available(watchOS 3.2, *)
  var overallDurationHint: CMTime { get }
}
extension AVAsset {
  @available(watchOS 1.0, *)
  var isPlayable: Bool { get }
  @available(watchOS 2.0, *)
  var isExportable: Bool { get }
  @available(watchOS 2.0, *)
  var isReadable: Bool { get }
  @available(watchOS 1.0, *)
  var isComposable: Bool { get }
  @available(watchOS 2.0, *)
  var isCompatibleWithSavedPhotosAlbum: Bool { get }
  @available(watchOS 2.0, *)
  var isCompatibleWithAirPlayVideo: Bool { get }
}
@available(watchOS 1.0, *)
let AVURLAssetPreferPreciseDurationAndTimingKey: String
@available(watchOS 2.0, *)
let AVURLAssetReferenceRestrictionsKey: String
@available(watchOS 1.0, *)
let AVURLAssetHTTPCookiesKey: String
@available(watchOS 3.0, *)
let AVURLAssetAllowsCellularAccessKey: String
@available(watchOS 6.0, *)
let AVURLAssetAllowsExpensiveNetworkAccessKey: String
@available(watchOS 6.0, *)
let AVURLAssetAllowsConstrainedNetworkAccessKey: String
@available(watchOS 1.0, *)
class AVURLAsset : AVAsset {
  @available(watchOS 1.0, *)
  class func audiovisualTypes() -> [AVFileType]
  @available(watchOS 1.0, *)
  class func audiovisualMIMETypes() -> [String]
  @available(watchOS 1.0, *)
  class func isPlayableExtendedMIMEType(_ extendedMIMEType: String) -> Bool
  init(url URL: URL, options: [String : Any]? = nil)
  var url: URL { get }
}
extension AVURLAsset {
  @available(watchOS 2.0, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  @available(watchOS 3.0, *)
  var assetCache: AVAssetCache? { get }
}
extension AVURLAsset {
  func compatibleTrack(for compositionTrack: AVCompositionTrack) -> AVAssetTrack?
}
extension AVURLAsset : NSItemProviderReading, NSItemProviderWriting {
}
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let AVAssetDurationDidChange: NSNotification.Name
  @available(watchOS 2.0, *)
  static let AVAssetChapterMetadataGroupsDidChange: NSNotification.Name
  @available(watchOS 2.0, *)
  static let AVAssetMediaSelectionGroupsDidChange: NSNotification.Name
}
protocol AVFragmentMinding {
  @available(watchOS 6.0, *)
  var isAssociatedWithFragmentMinder: Bool { get }
}
@available(watchOS 6.0, *)
class AVFragmentedAsset : AVURLAsset, AVFragmentMinding {
}
extension AVFragmentedAsset {
}
@available(watchOS 6.0, *)
class AVFragmentedAssetMinder : NSObject {
  init(asset: AVAsset & AVFragmentMinding, mindingInterval: TimeInterval)
  var mindingInterval: TimeInterval
  var assets: [AVAsset & AVFragmentMinding] { get }
  func addFragmentedAsset(_ asset: AVAsset & AVFragmentMinding)
  func removeFragmentedAsset(_ asset: AVAsset & AVFragmentMinding)
}
