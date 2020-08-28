
extension AVAssetImageGenerator {
  struct ApertureMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  enum Result : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case succeeded
    case failed
    case cancelled
  }
}
extension AVAssetImageGenerator.ApertureMode {
  @available(macOS 10.7, *)
  static let cleanAperture: AVAssetImageGenerator.ApertureMode
  @available(macOS 10.7, *)
  static let productionAperture: AVAssetImageGenerator.ApertureMode
  @available(macOS 10.7, *)
  static let encodedPixels: AVAssetImageGenerator.ApertureMode
}
@available(macOS 10.7, *)
class AVAssetImageGenerator : NSObject {
  @available(macOS 10.9, *)
  var asset: AVAsset { get }
  var appliesPreferredTrackTransform: Bool
  var maximumSize: CGSize
  var apertureMode: AVAssetImageGenerator.ApertureMode?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(macOS 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
  @available(macOS 10.7, *)
  var requestedTimeToleranceBefore: CMTime
  @available(macOS 10.7, *)
  var requestedTimeToleranceAfter: CMTime
  init(asset: AVAsset)
  func copyCGImage(at requestedTime: CMTime, actualTime: UnsafeMutablePointer<CMTime>?) throws -> CGImage
  func generateCGImagesAsynchronously(forTimes requestedTimes: [NSValue], completionHandler handler: @escaping AVAssetImageGeneratorCompletionHandler)
  func generateCGImagesAsynchronously(forTimes requestedTimes: [NSValue]) async throws -> (CMTime, CGImage?, CMTime, AVAssetImageGenerator.Result)
  func cancelAllCGImageGeneration()
}
typealias AVAssetImageGeneratorCompletionHandler = (CMTime, CGImage?, CMTime, AVAssetImageGenerator.Result, Error?) -> Void
