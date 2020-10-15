
@available(tvOS 9.0, *)
let AVAssetExportPresetLowQuality: String
@available(tvOS 9.0, *)
let AVAssetExportPresetMediumQuality: String
@available(tvOS 9.0, *)
let AVAssetExportPresetHighestQuality: String
@available(tvOS 11.0, *)
let AVAssetExportPresetHEVCHighestQuality: String
@available(tvOS 13.0, *)
let AVAssetExportPresetHEVCHighestQualityWithAlpha: String
@available(tvOS 9.0, *)
let AVAssetExportPreset640x480: String
@available(tvOS 9.0, *)
let AVAssetExportPreset960x540: String
@available(tvOS 9.0, *)
let AVAssetExportPreset1280x720: String
@available(tvOS 9.0, *)
let AVAssetExportPreset1920x1080: String
@available(tvOS 9.0, *)
let AVAssetExportPreset3840x2160: String
@available(tvOS 11.0, *)
let AVAssetExportPresetHEVC1920x1080: String
@available(tvOS 13.0, *)
let AVAssetExportPresetHEVC1920x1080WithAlpha: String
@available(tvOS 11.0, *)
let AVAssetExportPresetHEVC3840x2160: String
@available(tvOS 13.0, *)
let AVAssetExportPresetHEVC3840x2160WithAlpha: String
@available(tvOS 9.0, *)
let AVAssetExportPresetAppleM4A: String
@available(tvOS 9.0, *)
let AVAssetExportPresetPassthrough: String
extension AVAssetExportSession {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case waiting
    case exporting
    case completed
    case failed
    case cancelled
  }
}
@available(tvOS 9.0, *)
class AVAssetExportSession : NSObject {
  init?(asset: AVAsset, presetName: String)
  var presetName: String { get }
  @available(tvOS 9.0, *)
  var asset: AVAsset { get }
  var outputFileType: AVFileType?
  var outputURL: URL?
  var shouldOptimizeForNetworkUse: Bool
  var status: AVAssetExportSession.Status { get }
  var error: Error? { get }
  func exportAsynchronously(completionHandler handler: @escaping () -> Void)
  func exportAsynchronously() async
  var progress: Float { get }
  func cancelExport()
}
extension AVAssetExportSession {
  class func allExportPresets() -> [String]
  class func exportPresets(compatibleWith asset: AVAsset) -> [String]
  @available(tvOS 9.0, *)
  class func determineCompatibility(ofExportPreset presetName: String, with asset: AVAsset, outputFileType: AVFileType?, completionHandler handler: @escaping (Bool) -> Void)
  @available(tvOS 9.0, *)
  class func determineCompatibility(ofExportPreset presetName: String, with asset: AVAsset, outputFileType: AVFileType?) async -> Bool
}
extension AVAssetExportSession {
  var supportedFileTypes: [AVFileType] { get }
  @available(tvOS 9.0, *)
  func determineCompatibleFileTypes(completionHandler handler: @escaping ([AVFileType]) -> Void)
  @available(tvOS 9.0, *)
  func determineCompatibleFileTypes() async -> [AVFileType]
}
extension AVAssetExportSession {
  var timeRange: CMTimeRange
  @available(tvOS, introduced: 9.0, deprecated: 100000)
  var maxDuration: CMTime { get }
  @available(tvOS, introduced: 5.0, deprecated: 100000)
  var estimatedOutputFileLength: Int64 { get }
  @available(tvOS 9.0, *)
  var fileLengthLimit: Int64
  @available(tvOS 13.0, *)
  func estimateMaximumDuration(completionHandler handler: @escaping (CMTime, Error?) -> Void)
  @available(tvOS 13.0, *)
  func estimateMaximumDuration() async throws -> CMTime
  @available(tvOS 13.0, *)
  func estimateOutputFileLength(completionHandler handler: @escaping (Int64, Error?) -> Void)
  @available(tvOS 13.0, *)
  func estimateOutputFileLength() async throws -> Int64
}
extension AVAssetExportSession {
  var metadata: [AVMetadataItem]?
  @available(tvOS 9.0, *)
  var metadataItemFilter: AVMetadataItemFilter?
}
extension AVAssetExportSession {
  @available(tvOS 9.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
  @NSCopying var audioMix: AVAudioMix?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(tvOS 9.0, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
extension AVAssetExportSession {
  @available(tvOS 9.0, *)
  var canPerformMultiplePassesOverSourceMediaData: Bool
  @available(tvOS 9.0, *)
  var directoryForTemporaryFiles: URL?
}
