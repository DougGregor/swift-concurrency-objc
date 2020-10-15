
@available(macOS 10.7, *)
class AVAssetTrack : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  weak var asset: @sil_weak AVAsset? { get }
  var trackID: CMPersistentTrackID { get }
}
extension AVAssetTrack {
  var mediaType: AVMediaType { get }
  var formatDescriptions: [Any] { get }
  @available(macOS 10.8, *)
  var isPlayable: Bool { get }
  @available(macOS 10.13, *)
  var isDecodable: Bool { get }
  var isEnabled: Bool { get }
  var isSelfContained: Bool { get }
  var totalSampleDataLength: Int64 { get }
  func hasMediaCharacteristic(_ mediaCharacteristic: AVMediaCharacteristic) -> Bool
}
extension AVAssetTrack {
  var timeRange: CMTimeRange { get }
  var naturalTimeScale: CMTimeScale { get }
  var estimatedDataRate: Float { get }
}
extension AVAssetTrack {
  var languageCode: String? { get }
  var extendedLanguageTag: String? { get }
}
extension AVAssetTrack {
  var naturalSize: CGSize { get }
  var preferredTransform: CGAffineTransform { get }
}
extension AVAssetTrack {
  var preferredVolume: Float { get }
  @available(macOS 10.15, *)
  var hasAudioSampleDependencies: Bool { get }
}
extension AVAssetTrack {
  var nominalFrameRate: Float { get }
  @available(macOS 10.10, *)
  var minFrameDuration: CMTime { get }
  @available(macOS 10.10, *)
  var requiresFrameReordering: Bool { get }
}
extension AVAssetTrack {
  var segments: [AVAssetTrackSegment] { get }
  func segment(forTrackTime trackTime: CMTime) -> AVAssetTrackSegment?
  func samplePresentationTime(forTrackTime trackTime: CMTime) -> CMTime
}
extension AVAssetTrack {
  var commonMetadata: [AVMetadataItem] { get }
  @available(macOS 10.10, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [AVMetadataFormat] { get }
  func metadata(forFormat format: AVMetadataFormat) -> [AVMetadataItem]
}
extension AVAssetTrack {
  @available(macOS 10.9, *)
  var availableTrackAssociationTypes: [AVAssetTrack.AssociationType] { get }
  @available(macOS 10.9, *)
  func associatedTracks(ofType trackAssociationType: AVAssetTrack.AssociationType) -> [AVAssetTrack]
}
extension AVAssetTrack {
  struct AssociationType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension AVAssetTrack.AssociationType {
  @available(macOS 10.9, *)
  static let audioFallback: AVAssetTrack.AssociationType
  @available(macOS 10.9, *)
  static let chapterList: AVAssetTrack.AssociationType
  @available(macOS 10.9, *)
  static let forcedSubtitlesOnly: AVAssetTrack.AssociationType
  @available(macOS 10.9, *)
  static let selectionFollower: AVAssetTrack.AssociationType
  @available(macOS 10.9, *)
  static let timecode: AVAssetTrack.AssociationType
  @available(macOS 10.10, *)
  static let metadataReferent: AVAssetTrack.AssociationType
}
extension AVAssetTrack {
  @available(macOS 10.10, *)
  var canProvideSampleCursors: Bool { get }
  @available(macOS 10.10, *)
  func makeSampleCursor(presentationTimeStamp: CMTime) -> AVSampleCursor?
  @available(macOS 10.10, *)
  func makeSampleCursorAtFirstSampleInDecodeOrder() -> AVSampleCursor?
  @available(macOS 10.10, *)
  func makeSampleCursorAtLastSampleInDecodeOrder() -> AVSampleCursor?
}
extension NSNotification.Name {
  @available(macOS 10.11, *)
  static let AVAssetTrackTimeRangeDidChange: NSNotification.Name
  @available(macOS 10.11, *)
  static let AVAssetTrackSegmentsDidChange: NSNotification.Name
  @available(macOS 10.11, *)
  static let AVAssetTrackTrackAssociationsDidChange: NSNotification.Name
}
@available(macOS 10.11, *)
class AVFragmentedAssetTrack : AVAssetTrack {
}
