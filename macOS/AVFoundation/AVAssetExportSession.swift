
@available(macOS 10.11, *)
let AVAssetExportPresetLowQuality: String
@available(macOS 10.11, *)
let AVAssetExportPresetMediumQuality: String
@available(macOS 10.11, *)
let AVAssetExportPresetHighestQuality: String
@available(macOS 10.13, *)
let AVAssetExportPresetHEVCHighestQuality: String
@available(macOS 10.15, *)
let AVAssetExportPresetHEVCHighestQualityWithAlpha: String
@available(macOS 10.7, *)
let AVAssetExportPreset640x480: String
@available(macOS 10.7, *)
let AVAssetExportPreset960x540: String
@available(macOS 10.7, *)
let AVAssetExportPreset1280x720: String
@available(macOS 10.7, *)
let AVAssetExportPreset1920x1080: String
@available(macOS 10.10, *)
let AVAssetExportPreset3840x2160: String
@available(macOS 10.13, *)
let AVAssetExportPresetHEVC1920x1080: String
@available(macOS 10.15, *)
let AVAssetExportPresetHEVC1920x1080WithAlpha: String
@available(macOS 10.13, *)
let AVAssetExportPresetHEVC3840x2160: String
@available(macOS 10.15, *)
let AVAssetExportPresetHEVC3840x2160WithAlpha: String
@available(macOS 10.7, *)
let AVAssetExportPresetAppleM4A: String
@available(macOS 10.7, *)
let AVAssetExportPresetPassthrough: String
@available(macOS 10.7, *)
let AVAssetExportPresetAppleM4VCellular: String
@available(macOS 10.7, *)
let AVAssetExportPresetAppleM4ViPod: String
@available(macOS 10.7, *)
let AVAssetExportPresetAppleM4V480pSD: String
@available(macOS 10.7, *)
let AVAssetExportPresetAppleM4VAppleTV: String
@available(macOS 10.7, *)
let AVAssetExportPresetAppleM4VWiFi: String
@available(macOS 10.7, *)
let AVAssetExportPresetAppleM4V720pHD: String
@available(macOS 10.8, *)
let AVAssetExportPresetAppleM4V1080pHD: String
@available(macOS 10.7, *)
let AVAssetExportPresetAppleProRes422LPCM: String
@available(macOS 10.15, *)
let AVAssetExportPresetAppleProRes4444LPCM: String
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
@available(macOS 10.7, *)
class AVAssetExportSession : NSObject {
  init?(asset: AVAsset, presetName: String)
  var presetName: String { get }
  @available(macOS 10.8, *)
  var asset: AVAsset { get }
  var outputFileType: AVFileType?
  var outputURL: URL?
  var shouldOptimizeForNetworkUse: Bool
  var status: AVAssetExportSession.Status { get }
  var error: Error? { get }
  func exportAsynchronously(completionHandler handler: @escaping () -> Void)
  var progress: Float { get }
  func cancelExport()
}
extension AVAssetExportSession {
  class func allExportPresets() -> [String]
  class func exportPresets(compatibleWith asset: AVAsset) -> [String]
  @available(macOS 10.9, *)
  class func determineCompatibility(ofExportPreset presetName: String, with asset: AVAsset, outputFileType: AVFileType?, completionHandler handler: @escaping (Bool) -> Void)
}
extension AVAssetExportSession {
  var supportedFileTypes: [AVFileType] { get }
  @available(macOS 10.9, *)
  func determineCompatibleFileTypes(completionHandler handler: @escaping ([AVFileType]) -> Void)
}
extension AVAssetExportSession {
  var timeRange: CMTimeRange
  @available(macOS, introduced: 10.14, deprecated: 100000)
  var maxDuration: CMTime { get }
  @available(macOS, introduced: 10.9, deprecated: 100000)
  var estimatedOutputFileLength: Int64 { get }
  @available(macOS 10.14, *)
  var fileLengthLimit: Int64
  @available(macOS 10.15, *)
  func estimateMaximumDuration(completionHandler handler: @escaping (CMTime, Error?) -> Void)
  @available(macOS 10.15, *)
  func estimateOutputFileLength(completionHandler handler: @escaping (Int64, Error?) -> Void)
}
extension AVAssetExportSession {
  var metadata: [AVMetadataItem]?
  @available(macOS 10.9, *)
  var metadataItemFilter: AVMetadataItemFilter?
}
extension AVAssetExportSession {
  @available(macOS 10.9, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
  @NSCopying var audioMix: AVAudioMix?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(macOS 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
extension AVAssetExportSession {
  @available(macOS 10.10, *)
  var canPerformMultiplePassesOverSourceMediaData: Bool
  @available(macOS 10.10, *)
  var directoryForTemporaryFiles: URL?
}
