
extension UIImagePickerController {
  enum SourceType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(iOS, introduced: 2, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
    case photoLibrary
    case camera
    @available(iOS, introduced: 2, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
    case savedPhotosAlbum
  }
  enum QualityType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case typeHigh
    case typeMedium
    case typeLow
    @available(iOS 4.0, *)
    case type640x480
    @available(iOS 5.0, *)
    case typeIFrame1280x720
    @available(iOS 5.0, *)
    case typeIFrame960x540
  }
  enum CameraCaptureMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case photo
    case video
  }
  enum CameraDevice : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case rear
    case front
  }
  enum CameraFlashMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case off
    case auto
    case on
  }
  @available(iOS, introduced: 11, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  enum ImageURLExportPreset : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case compatible
    case current
  }
  struct InfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension UIImagePickerController.InfoKey {
  static let mediaType: UIImagePickerController.InfoKey
  static let originalImage: UIImagePickerController.InfoKey
  static let editedImage: UIImagePickerController.InfoKey
  static let cropRect: UIImagePickerController.InfoKey
  static let mediaURL: UIImagePickerController.InfoKey
  @available(iOS, introduced: 4.1, deprecated: 11.0, message: "Will be removed in a future release, use PHPicker.")
  static let referenceURL: UIImagePickerController.InfoKey
  @available(iOS 4.1, *)
  static let mediaMetadata: UIImagePickerController.InfoKey
  @available(iOS 9.1, *)
  static let livePhoto: UIImagePickerController.InfoKey
  @available(iOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  static let phAsset: UIImagePickerController.InfoKey
  @available(iOS 11.0, *)
  static let imageURL: UIImagePickerController.InfoKey
}
@available(iOS 2.0, *)
class UIImagePickerController : UINavigationController, NSCoding {
  class func isSourceTypeAvailable(_ sourceType: UIImagePickerController.SourceType) -> Bool
  class func availableMediaTypes(for sourceType: UIImagePickerController.SourceType) -> [String]?
  @available(iOS 4.0, *)
  class func isCameraDeviceAvailable(_ cameraDevice: UIImagePickerController.CameraDevice) -> Bool
  @available(iOS 4.0, *)
  class func isFlashAvailable(for cameraDevice: UIImagePickerController.CameraDevice) -> Bool
  @available(iOS 4.0, *)
  class func availableCaptureModes(for cameraDevice: UIImagePickerController.CameraDevice) -> [NSNumber]?
  var sourceType: UIImagePickerController.SourceType
  var mediaTypes: [String]
  @available(iOS 3.1, *)
  var allowsEditing: Bool
  @available(iOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  var imageExportPreset: UIImagePickerController.ImageURLExportPreset
  @available(iOS 3.1, *)
  var videoMaximumDuration: TimeInterval
  @available(iOS 3.1, *)
  var videoQuality: UIImagePickerController.QualityType
  @available(iOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  var videoExportPreset: String
  @available(iOS 3.1, *)
  var showsCameraControls: Bool
  @available(iOS 3.1, *)
  var cameraOverlayView: UIView?
  @available(iOS 3.1, *)
  var cameraViewTransform: CGAffineTransform
  @available(iOS 3.1, *)
  func takePicture()
  @available(iOS 4.0, *)
  func startVideoCapture() -> Bool
  @available(iOS 4.0, *)
  func stopVideoCapture()
  @available(iOS 4.0, *)
  var cameraCaptureMode: UIImagePickerController.CameraCaptureMode
  @available(iOS 4.0, *)
  var cameraDevice: UIImagePickerController.CameraDevice
  @available(iOS 4.0, *)
  var cameraFlashMode: UIImagePickerController.CameraFlashMode
}
protocol UIImagePickerControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  @asyncHandler optional func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
  @available(iOS 2.0, *)
  @asyncHandler optional func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
}
func UIImageWriteToSavedPhotosAlbum(_ image: UIImage, _ completionTarget: Any?, _ completionSelector: Selector?, _ contextInfo: UnsafeMutableRawPointer?)
@available(iOS 3.1, *)
func UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(_ videoPath: String) -> Bool
@available(iOS 3.1, *)
func UISaveVideoAtPathToSavedPhotosAlbum(_ videoPath: String, _ completionTarget: Any?, _ completionSelector: Selector?, _ contextInfo: UnsafeMutableRawPointer?)
