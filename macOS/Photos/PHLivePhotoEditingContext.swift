
@available(macOS 10.12, *)
typealias PHLivePhotoFrameProcessingBlock = (PHLivePhotoFrame, NSErrorPointer) -> CIImage?
@available(macOS 10.12, *)
struct PHLivePhotoEditingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.12, *)
class PHLivePhotoEditingContext : NSObject {
  @available(macOS 10.12, *)
  init?(livePhotoEditingInput livePhotoInput: PHContentEditingInput)
  @available(macOS 10.12, *)
  var fullSizeImage: CIImage { get }
  @available(macOS 10.12, *)
  var duration: CMTime { get }
  @available(macOS 10.12, *)
  var photoTime: CMTime { get }
  @available(macOS 10.12, *)
  var frameProcessor: PHLivePhotoFrameProcessingBlock?
  @available(macOS 10.12, *)
  var audioVolume: Float
  @available(macOS 10.12, *)
  var orientation: CGImagePropertyOrientation { get }
  @available(macOS 10.12, *)
  func prepareLivePhotoForPlayback(withTargetSize targetSize: CGSize, options: [String : Any]? = nil, completionHandler handler: @escaping (PHLivePhoto?, Error?) -> Void)
  @available(macOS 10.12, *)
  func saveLivePhoto(to output: PHContentEditingOutput, options: [String : Any]? = nil, completionHandler handler: @escaping (Bool, Error?) -> Void)
  @available(macOS 10.12, *)
  func cancel()
}
@available(macOS 10.12, macOS 10.12, *)
enum PHLivePhotoFrameType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.12, *)
  case photo
  @available(macOS 10.12, *)
  case video
}
@available(macOS 10.12, *)
protocol PHLivePhotoFrame {
  @available(macOS 10.12, *)
  var image: CIImage { get }
  @available(macOS 10.12, *)
  var time: CMTime { get }
  @available(macOS 10.12, *)
  var type: PHLivePhotoFrameType { get }
  @available(macOS 10.12, *)
  var renderScale: CGFloat { get }
}
extension PHLivePhotoEditingOption {
  @available(macOS 10.12, *)
  static let shouldRenderAtPlaybackTime: PHLivePhotoEditingOption
}
@available(macOS, introduced: 10.12, deprecated: 10.15, renamed: "PHPhotosErrorDomain")
let PHLivePhotoEditingErrorDomain: String
@available(macOS 10.12, macOS 10.12, *)
enum PHLivePhotoEditingErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS, introduced: 10.12, deprecated: 10.15, renamed: "PHPhotosError.invalid")
  case unknown
  @available(macOS, introduced: 10.12, deprecated: 10.15, renamed: "PHPhotosError.userCancelled")
  case aborted
}
