
@available(macOS 10.7, *)
class AVAsset : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  convenience init(url URL: URL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  @available(macOS 10.15, *)
  var minimumTimeOffsetFromLive: CMTime { get }
}
extension AVAsset {
  var providesPreciseDurationAndTiming: Bool { get }
  func cancelLoading()
}
extension AVAsset {
  @available(macOS 10.7, *)
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
  @available(macOS 10.9, *)
  var trackGroups: [AVAssetTrackGroup] { get }
}
extension AVAsset {
  @available(macOS 10.8, *)
  var creationDate: AVMetadataItem? { get }
  var lyrics: String? { get }
  var commonMetadata: [AVMetadataItem] { get }
  @available(macOS 10.10, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [AVMetadataFormat] { get }
  func metadata(forFormat format: AVMetadataFormat) -> [AVMetadataItem]
}
extension AVAsset {
  @available(macOS 10.7, *)
  var availableChapterLocales: [Locale] { get }
  @available(macOS 10.7, *)
  func chapterMetadataGroups(withTitleLocale locale: Locale, containingItemsWithCommonKeys commonKeys: [AVMetadataKey]?) -> [AVTimedMetadataGroup]
  @available(macOS 10.8, *)
  func chapterMetadataGroups(bestMatchingPreferredLanguages preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(macOS 10.8, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [AVMediaCharacteristic] { get }
  @available(macOS 10.8, *)
  func mediaSelectionGroup(forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic) -> AVMediaSelectionGroup?
  @available(macOS 10.11, *)
  var preferredMediaSelection: AVMediaSelection { get }
  @available(macOS 10.13, *)
  var allMediaSelections: [AVMediaSelection] { get }
}
extension AVAsset {
  @available(macOS 10.7, *)
  var hasProtectedContent: Bool { get }
}
extension AVAsset {
  @available(macOS 10.11, *)
  var canContainFragments: Bool { get }
  @available(macOS 10.11, *)
  var containsFragments: Bool { get }
  @available(macOS 10.12.2, *)
  var overallDurationHint: CMTime { get }
}
extension AVAsset {
  @available(macOS 10.7, *)
  var isPlayable: Bool { get }
  @available(macOS 10.7, *)
  var isExportable: Bool { get }
  @available(macOS 10.7, *)
  var isReadable: Bool { get }
  @available(macOS 10.7, *)
  var isComposable: Bool { get }
  @available(macOS 10.11, *)
  var isCompatibleWithAirPlayVideo: Bool { get }
}
@available(macOS 10.7, *)
let AVURLAssetPreferPreciseDurationAndTimingKey: String
@available(macOS 10.7, *)
let AVURLAssetReferenceRestrictionsKey: String
@available(macOS 10.15, *)
let AVURLAssetHTTPCookiesKey: String
@available(macOS 10.15, *)
let AVURLAssetAllowsCellularAccessKey: String
@available(macOS 10.15, *)
let AVURLAssetAllowsExpensiveNetworkAccessKey: String
@available(macOS 10.15, *)
let AVURLAssetAllowsConstrainedNetworkAccessKey: String
@available(macOS 10.7, *)
class AVURLAsset : AVAsset {
  @available(macOS 10.7, *)
  class func audiovisualTypes() -> [AVFileType]
  @available(macOS 10.7, *)
  class func audiovisualMIMETypes() -> [String]
  @available(macOS 10.7, *)
  class func isPlayableExtendedMIMEType(_ extendedMIMEType: String) -> Bool
  init(url URL: URL, options: [String : Any]? = nil)
  var url: URL { get }
}
extension AVURLAsset {
  @available(macOS 10.9, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  @available(macOS 10.12, *)
  var assetCache: AVAssetCache? { get }
}
extension AVURLAsset {
  func compatibleTrack(for compositionTrack: AVCompositionTrack) -> AVAssetTrack?
}
extension AVURLAsset : NSItemProviderReading, NSItemProviderWriting {
}
extension NSNotification.Name {
  @available(macOS 10.11, *)
  static let AVAssetDurationDidChange: NSNotification.Name
  @available(macOS 10.11, *)
  static let AVAssetContainsFragmentsDidChange: NSNotification.Name
  @available(macOS 10.11, *)
  static let AVAssetWasDefragmented: NSNotification.Name
  @available(macOS 10.11, *)
  static let AVAssetChapterMetadataGroupsDidChange: NSNotification.Name
  @available(macOS 10.11, *)
  static let AVAssetMediaSelectionGroupsDidChange: NSNotification.Name
}
protocol AVFragmentMinding {
  @available(macOS 10.11, *)
  var isAssociatedWithFragmentMinder: Bool { get }
}
@available(macOS 10.11, *)
class AVFragmentedAsset : AVURLAsset, AVFragmentMinding {
}
extension AVFragmentedAsset {
}
@available(macOS 10.11, *)
class AVFragmentedAssetMinder : NSObject {
  init(asset: AVAsset & AVFragmentMinding, mindingInterval: TimeInterval)
  var mindingInterval: TimeInterval
  var assets: [AVAsset & AVFragmentMinding] { get }
  func addFragmentedAsset(_ asset: AVAsset & AVFragmentMinding)
  func removeFragmentedAsset(_ asset: AVAsset & AVFragmentMinding)
}
@available(macOS 10.7, *)
extension AVURLAsset : AVContentKeyRecipient {
}
