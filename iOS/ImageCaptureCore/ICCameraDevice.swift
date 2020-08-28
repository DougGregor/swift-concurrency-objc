
extension ICDeviceCapability {
  @available(iOS 13.0, *)
  static let cameraDeviceCanTakePicture: ICDeviceCapability
  @available(iOS 13.0, *)
  static let cameraDeviceCanTakePictureUsingShutterReleaseOnCamera: ICDeviceCapability
  @available(iOS 13.0, *)
  static let cameraDeviceCanDeleteOneFile: ICDeviceCapability
  @available(iOS 13.0, *)
  static let cameraDeviceCanDeleteAllFiles: ICDeviceCapability
  @available(iOS 13.0, *)
  static let cameraDeviceCanSyncClock: ICDeviceCapability
  @available(iOS 13.0, *)
  static let cameraDeviceCanReceiveFile: ICDeviceCapability
  @available(iOS 13.0, *)
  static let cameraDeviceCanAcceptPTPCommands: ICDeviceCapability
  @available(iOS 14.0, *)
  static let cameraDeviceSupportsHEIF: ICDeviceCapability
}
@available(iOS 13.0, *)
struct ICUploadOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 13.0, *)
struct ICDeleteResult : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeleteResult {
  @available(iOS 13.0, *)
  static let successful: ICDeleteResult
  @available(iOS 13.0, *)
  static let canceled: ICDeleteResult
  @available(iOS 13.0, *)
  static let failed: ICDeleteResult
}
@available(iOS 13.0, *)
struct ICDeleteError : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeleteError {
  @available(iOS 13.0, *)
  static let readOnly: ICDeleteError
  @available(iOS 13.0, *)
  static let fileMissing: ICDeleteError
  @available(iOS 13.0, *)
  static let deviceMissing: ICDeleteError
  @available(iOS 13.0, *)
  static let canceled: ICDeleteError
}
@available(iOS 14.0, *)
enum ICMediaPresentation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case convertedAssets
  case originalAssets
}
@available(iOS 13.0, *)
class ICCameraDevice : ICDevice {
  @available(iOS 13.0, *)
  var contentCatalogPercentCompleted: Int { get }
  @available(iOS 13.0, *)
  var contents: [ICCameraItem]? { get }
  @available(iOS 13.0, *)
  var mediaFiles: [ICCameraItem]? { get }
  @available(iOS 13.0, *)
  var isEjectable: Bool { get }
  @available(iOS 13.0, *)
  var isLocked: Bool { get }
  @available(iOS 13.0, *)
  var isAccessRestrictedAppleDevice: Bool { get }
  @available(iOS 13.0, *)
  var iCloudPhotosEnabled: Bool { get }
  @available(iOS 14.0, *)
  var mediaPresentation: ICMediaPresentation
  @available(iOS 13.0, *)
  func files(ofType fileUTType: String) -> [String]?
  @available(iOS 13.0, *)
  func requestDownloadFile(_ file: ICCameraFile, options: [ICDownloadOption : Any] = [:], downloadDelegate: ICCameraDeviceDownloadDelegate, didDownloadSelector selector: Selector, contextInfo: UnsafeMutableRawPointer?)
  @available(iOS 13.0, *)
  func requestDeleteFiles(_ files: [ICCameraItem])
  @available(iOS 13.0, *)
  func requestDeleteFiles(_ files: [ICCameraItem], deleteFailed: @escaping ([ICDeleteError : ICCameraItem]) -> Void, completion: @escaping ([ICDeleteResult : [ICCameraItem]], Error?) -> Void) -> Progress?
  var timeOffset: TimeInterval { get }
  var batteryLevelAvailable: Bool { get }
  var batteryLevel: Int { get }
  var tetheredCaptureEnabled: Bool { get }
  @available(iOS 13.0, *)
  var ptpEventHandler: (Data) -> Void
  @available(iOS 13.0, *)
  func requestSendPTPCommand(_ ptpCommand: Data, outData ptpData: Data?, completion: @escaping (Data, Data, Error?) -> Void)
}
protocol ICCameraDeviceDelegate : ICDeviceDelegate {
  @available(iOS 13.0, *)
  func cameraDevice(_ camera: ICCameraDevice, didAdd items: [ICCameraItem])
  @available(iOS 13.0, *)
  func cameraDevice(_ camera: ICCameraDevice, didRemove items: [ICCameraItem])
  @available(iOS 13.0, *)
  func cameraDevice(_ camera: ICCameraDevice, didReceiveThumbnail thumbnail: CGImage?, for item: ICCameraItem, error: Error?)
  @available(iOS 13.0, *)
  func cameraDevice(_ camera: ICCameraDevice, didReceiveMetadata metadata: [AnyHashable : Any]?, for item: ICCameraItem, error: Error?)
  @available(iOS 13.0, *)
  func cameraDevice(_ camera: ICCameraDevice, didRenameItems items: [ICCameraItem])
  @available(iOS 13.0, *)
  func cameraDeviceDidChangeCapability(_ camera: ICCameraDevice)
  @available(iOS 13.0, *)
  func cameraDevice(_ camera: ICCameraDevice, didReceivePTPEvent eventData: Data)
  @available(iOS 13.0, *)
  func deviceDidBecomeReady(withCompleteContentCatalog device: ICCameraDevice)
  @available(iOS 13.0, *)
  func cameraDeviceDidRemoveAccessRestriction(_ device: ICDevice)
  @available(iOS 13.0, *)
  func cameraDeviceDidEnableAccessRestriction(_ device: ICDevice)
  @available(iOS 13.0, *)
  optional func cameraDevice(_ cameraDevice: ICCameraDevice, shouldGetThumbnailOf item: ICCameraItem) -> Bool
  @available(iOS 13.0, *)
  optional func cameraDevice(_ cameraDevice: ICCameraDevice, shouldGetMetadataOf item: ICCameraItem) -> Bool
  @available(iOS 13.0, *)
  optional func cameraDevice(_ camera: ICCameraDevice, didCompleteDeleteFilesWithError error: Error?)
  @available(iOS 13.0, *)
  optional func cameraDevice(_ camera: ICCameraDevice, didAdd item: ICCameraItem)
  @available(iOS 13.0, *)
  optional func cameraDevice(_ camera: ICCameraDevice, didRemove item: ICCameraItem)
  @available(iOS 13.0, *)
  optional func cameraDevice(_ camera: ICCameraDevice, didReceiveThumbnailFor item: ICCameraItem)
  @available(iOS 13.0, *)
  optional func cameraDevice(_ camera: ICCameraDevice, didReceiveMetadataFor item: ICCameraItem)
}
protocol ICCameraDeviceDownloadDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  optional func didDownloadFile(_ file: ICCameraFile, error: Error?, options: [String : Any] = [:], contextInfo: UnsafeMutableRawPointer?)
  @available(iOS 13.0, *)
  optional func didReceiveDownloadProgress(for file: ICCameraFile, downloadedBytes: off_t, maxBytes: off_t)
}
