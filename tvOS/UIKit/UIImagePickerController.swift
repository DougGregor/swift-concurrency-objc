
extension UIImagePickerController {
  enum SourceType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(tvOS, introduced: 2, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
    case photoLibrary
    case camera
    @available(tvOS, introduced: 2, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
    case savedPhotosAlbum
  }
  enum QualityType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case typeHigh
    case typeMedium
    case typeLow
    @available(tvOS 4.0, *)
    case type640x480
    @available(tvOS 5.0, *)
    case typeIFrame1280x720
    @available(tvOS 5.0, *)
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
  @available(tvOS, introduced: 11, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
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
  @available(tvOS, introduced: 4.1, deprecated: 11.0, message: "Will be removed in a future release, use PHPicker.")
  static let referenceURL: UIImagePickerController.InfoKey
  @available(tvOS 4.1, *)
  static let mediaMetadata: UIImagePickerController.InfoKey
  @available(tvOS 9.1, *)
  static let livePhoto: UIImagePickerController.InfoKey
  @available(tvOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  static let phAsset: UIImagePickerController.InfoKey
  @available(tvOS 11.0, *)
  static let imageURL: UIImagePickerController.InfoKey
}
@available(tvOS 2.0, *)
class UIImagePickerController : UINavigationController, NSCoding {
  class func isSourceTypeAvailable(_ sourceType: UIImagePickerController.SourceType) -> Bool
  class func availableMediaTypes(for sourceType: UIImagePickerController.SourceType) -> [String]?
  @available(tvOS 4.0, *)
  class func isCameraDeviceAvailable(_ cameraDevice: UIImagePickerController.CameraDevice) -> Bool
  @available(tvOS 4.0, *)
  class func isFlashAvailable(for cameraDevice: UIImagePickerController.CameraDevice) -> Bool
  @available(tvOS 4.0, *)
  class func availableCaptureModes(for cameraDevice: UIImagePickerController.CameraDevice) -> [NSNumber]?
  var sourceType: UIImagePickerController.SourceType
  var mediaTypes: [String]
  @available(tvOS 3.1, *)
  var allowsEditing: Bool
  @available(tvOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  var imageExportPreset: UIImagePickerController.ImageURLExportPreset
  @available(tvOS 3.1, *)
  var videoMaximumDuration: TimeInterval
  @available(tvOS 3.1, *)
  var videoQuality: UIImagePickerController.QualityType
  @available(tvOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  var videoExportPreset: String
  @available(tvOS 3.1, *)
  var showsCameraControls: Bool
  @available(tvOS 3.1, *)
  var cameraOverlayView: UIView?
  @available(tvOS 3.1, *)
  var cameraViewTransform: CGAffineTransform
  @available(tvOS 3.1, *)
  func takePicture()
  @available(tvOS 4.0, *)
  func startVideoCapture() -> Bool
  @available(tvOS 4.0, *)
  func stopVideoCapture()
  @available(tvOS 4.0, *)
  var cameraCaptureMode: UIImagePickerController.CameraCaptureMode
  @available(tvOS 4.0, *)
  var cameraDevice: UIImagePickerController.CameraDevice
  @available(tvOS 4.0, *)
  var cameraFlashMode: UIImagePickerController.CameraFlashMode
}
protocol UIImagePickerControllerDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
  @available(tvOS 2.0, *)
  optional func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
}
func UIImageWriteToSavedPhotosAlbum(_ image: UIImage, _ completionTarget: Any?, _ completionSelector: Selector?, _ contextInfo: UnsafeMutableRawPointer?)
@available(tvOS 3.1, *)
func UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(_ videoPath: String) -> Bool
@available(tvOS 3.1, *)
func UISaveVideoAtPathToSavedPhotosAlbum(_ videoPath: String, _ completionTarget: Any?, _ completionSelector: Selector?, _ contextInfo: UnsafeMutableRawPointer?)
