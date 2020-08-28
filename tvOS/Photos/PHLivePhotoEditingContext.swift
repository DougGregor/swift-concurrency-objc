
@available(tvOS 10, *)
typealias PHLivePhotoFrameProcessingBlock = (PHLivePhotoFrame, NSErrorPointer) -> CIImage?
@available(tvOS 10, *)
struct PHLivePhotoEditingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(tvOS 10, *)
class PHLivePhotoEditingContext : NSObject {
  @available(tvOS 10, *)
  init?(livePhotoEditingInput livePhotoInput: PHContentEditingInput)
  @available(tvOS 10, *)
  var fullSizeImage: CIImage { get }
  @available(tvOS 10, *)
  var duration: CMTime { get }
  @available(tvOS 10, *)
  var photoTime: CMTime { get }
  @available(tvOS 10, *)
  var frameProcessor: PHLivePhotoFrameProcessingBlock?
  @available(tvOS 10, *)
  var audioVolume: Float
  @available(tvOS 10, *)
  var orientation: CGImagePropertyOrientation { get }
  @available(tvOS 10, *)
  func prepareLivePhotoForPlayback(withTargetSize targetSize: CGSize, options: [String : Any]? = nil, completionHandler handler: @escaping (PHLivePhoto?, Error?) -> Void)
  @available(tvOS 10, *)
  func prepareLivePhotoForPlayback(withTargetSize targetSize: CGSize, options: [String : Any]? = nil) async throws -> PHLivePhoto?
  @available(tvOS 10, *)
  func saveLivePhoto(to output: PHContentEditingOutput, options: [String : Any]? = nil, completionHandler handler: @escaping (Bool, Error?) -> Void)
  @available(tvOS 10, *)
  func saveLivePhoto(to output: PHContentEditingOutput, options: [String : Any]? = nil) async throws -> Bool
  @available(tvOS 10, *)
  func cancel()
}
@available(tvOS 10, tvOS 10, *)
enum PHLivePhotoFrameType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case photo
  @available(tvOS 10, *)
  case video
}
@available(tvOS 10, *)
protocol PHLivePhotoFrame {
  @available(tvOS 10, *)
  var image: CIImage { get }
  @available(tvOS 10, *)
  var time: CMTime { get }
  @available(tvOS 10, *)
  var type: PHLivePhotoFrameType { get }
  @available(tvOS 10, *)
  var renderScale: CGFloat { get }
}
extension PHLivePhotoEditingOption {
  @available(tvOS 11, *)
  static let shouldRenderAtPlaybackTime: PHLivePhotoEditingOption
}
@available(tvOS 10, *)
@available(tvOS, unavailable)
enum PHLivePhotoEditingErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case unknown
  @available(tvOS 10, *)
  case aborted
}
