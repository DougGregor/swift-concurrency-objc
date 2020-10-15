
@available(iOS 10, *)
typealias PHLivePhotoFrameProcessingBlock = (PHLivePhotoFrame, NSErrorPointer) -> CIImage?
@available(iOS 10, *)
struct PHLivePhotoEditingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 10, *)
class PHLivePhotoEditingContext : NSObject {
  @available(iOS 10, *)
  init?(livePhotoEditingInput livePhotoInput: PHContentEditingInput)
  @available(iOS 10, *)
  var fullSizeImage: CIImage { get }
  @available(iOS 10, *)
  var duration: CMTime { get }
  @available(iOS 10, *)
  var photoTime: CMTime { get }
  @available(iOS 10, *)
  var frameProcessor: PHLivePhotoFrameProcessingBlock?
  @available(iOS 10, *)
  var audioVolume: Float
  @available(iOS 10, *)
  var orientation: CGImagePropertyOrientation { get }
  @available(iOS 10, *)
  func prepareLivePhotoForPlayback(withTargetSize targetSize: CGSize, options: [String : Any]? = nil, completionHandler handler: @escaping (PHLivePhoto?, Error?) -> Void)
  @available(iOS 10, *)
  func prepareLivePhotoForPlayback(withTargetSize targetSize: CGSize, options: [String : Any]? = nil) async throws -> PHLivePhoto?
  @available(iOS 10, *)
  func saveLivePhoto(to output: PHContentEditingOutput, options: [String : Any]? = nil, completionHandler handler: @escaping (Bool, Error?) -> Void)
  @available(iOS 10, *)
  func saveLivePhoto(to output: PHContentEditingOutput, options: [String : Any]? = nil) async throws -> Bool
  @available(iOS 10, *)
  func cancel()
}
@available(iOS 10, iOS 10, *)
enum PHLivePhotoFrameType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 10, *)
  case photo
  @available(iOS 10, *)
  case video
}
@available(iOS 10, *)
protocol PHLivePhotoFrame {
  @available(iOS 10, *)
  var image: CIImage { get }
  @available(iOS 10, *)
  var time: CMTime { get }
  @available(iOS 10, *)
  var type: PHLivePhotoFrameType { get }
  @available(iOS 10, *)
  var renderScale: CGFloat { get }
}
extension PHLivePhotoEditingOption {
  @available(iOS 11, *)
  static let shouldRenderAtPlaybackTime: PHLivePhotoEditingOption
}
@available(iOS 10, *)
@available(iOS, unavailable)
enum PHLivePhotoEditingErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 10, *)
  case unknown
  @available(iOS 10, *)
  case aborted
}
