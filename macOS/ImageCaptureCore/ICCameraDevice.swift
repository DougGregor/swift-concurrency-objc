
extension ICDeviceCapability {
  @available(macOS 10.4, *)
  static let cameraDeviceCanTakePicture: ICDeviceCapability
  @available(macOS 10.4, *)
  static let cameraDeviceCanTakePictureUsingShutterReleaseOnCamera: ICDeviceCapability
  @available(macOS 10.4, *)
  static let cameraDeviceCanDeleteOneFile: ICDeviceCapability
  @available(macOS 10.4, *)
  static let cameraDeviceCanDeleteAllFiles: ICDeviceCapability
  @available(macOS 10.4, *)
  static let cameraDeviceCanSyncClock: ICDeviceCapability
  @available(macOS 10.4, *)
  static let cameraDeviceCanReceiveFile: ICDeviceCapability
  @available(macOS 10.4, *)
  static let cameraDeviceCanAcceptPTPCommands: ICDeviceCapability
  @available(macOS 10.11, *)
  static let cameraDeviceSupportsHEIF: ICDeviceCapability
}
@available(macOS 10.4, *)
struct ICUploadOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.15, *)
struct ICDeleteResult : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeleteResult {
  @available(macOS 10.15, *)
  static let successful: ICDeleteResult
  @available(macOS 10.15, *)
  static let canceled: ICDeleteResult
  @available(macOS 10.15, *)
  static let failed: ICDeleteResult
}
@available(macOS 10.15, *)
struct ICDeleteError : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeleteError {
  @available(macOS 10.15, *)
  static let readOnly: ICDeleteError
  @available(macOS 10.15, *)
  static let fileMissing: ICDeleteError
  @available(macOS 10.15, *)
  static let deviceMissing: ICDeleteError
  @available(macOS 10.15, *)
  static let canceled: ICDeleteError
}
@available(macOS 10.11, *)
enum ICMediaPresentation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case convertedAssets
  case originalAssets
}
@available(macOS 10.4, *)
class ICCameraDevice : ICDevice {
  @available(macOS 10.4, *)
  var contentCatalogPercentCompleted: Int { get }
  @available(macOS 10.4, *)
  var contents: [ICCameraItem]? { get }
  @available(macOS 10.4, *)
  var mediaFiles: [ICCameraItem]? { get }
  @available(macOS 10.4, *)
  var isEjectable: Bool { get }
  @available(macOS 10.4, *)
  var isLocked: Bool { get }
  @available(macOS 10.4, *)
  var isAccessRestrictedAppleDevice: Bool { get }
  @available(macOS 10.4, *)
  var iCloudPhotosEnabled: Bool { get }
  @available(macOS 10.4, *)
  var mountPoint: String? { get }
  @available(macOS 10.11, *)
  var mediaPresentation: ICMediaPresentation
  @available(macOS 10.4, *)
  func files(ofType fileUTType: String) -> [String]?
  @available(macOS 10.4, *)
  func requestReadData(from file: ICCameraFile, atOffset offset: off_t, length: off_t, readDelegate: Any, didReadDataSelector selector: Selector, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.4, *)
  func requestDownloadFile(_ file: ICCameraFile, options: [ICDownloadOption : Any] = [:], downloadDelegate: ICCameraDeviceDownloadDelegate, didDownloadSelector selector: Selector, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.4, *)
  func cancelDownload()
  @available(macOS 10.4, *)
  func requestDeleteFiles(_ files: [ICCameraItem])
  @available(macOS 10.15, *)
  func requestDeleteFiles(_ files: [ICCameraItem], deleteFailed: @escaping ([ICDeleteError : ICCameraItem]) -> Void, completion: @escaping ([ICDeleteResult : [ICCameraItem]], Error?) -> Void) -> Progress?
  @available(macOS 10.4, *)
  func cancelDelete()
  @available(macOS 10.4, *)
  func requestSyncClock()
  @available(macOS 10.4, *)
  var timeOffset: TimeInterval { get }
  @available(macOS 10.4, *)
  var batteryLevelAvailable: Bool { get }
  @available(macOS 10.4, *)
  var batteryLevel: Int { get }
  @available(macOS 10.4, *)
  func requestUploadFile(_ fileURL: URL, options: [ICUploadOption : Any] = [:], uploadDelegate: Any, didUploadSelector selector: Selector, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.4, *)
  var tetheredCaptureEnabled: Bool { get }
  @available(macOS 10.4, *)
  func requestEnableTethering()
  @available(macOS 10.4, *)
  func requestDisableTethering()
  @available(macOS 10.4, *)
  func requestTakePicture()
  @available(macOS 10.4, *)
  func requestSendPTPCommand(_ command: Data, outData data: Data?, sendCommandDelegate: Any, didSendCommand selector: Selector, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.15, *)
  func requestSendPTPCommand(_ ptpCommand: Data, outData ptpData: Data?, completion: @escaping (Data, Data, Error?) -> Void)
}
protocol ICCameraDeviceDelegate : ICDeviceDelegate {
  @available(macOS 10.4, *)
  func cameraDevice(_ camera: ICCameraDevice, didAdd items: [ICCameraItem])
  @available(macOS 10.4, *)
  func cameraDevice(_ camera: ICCameraDevice, didRemove items: [ICCameraItem])
  @available(macOS 10.15, *)
  func cameraDevice(_ camera: ICCameraDevice, didReceiveThumbnail thumbnail: CGImage?, for item: ICCameraItem, error: Error?)
  @available(macOS 10.15, *)
  func cameraDevice(_ camera: ICCameraDevice, didReceiveMetadata metadata: [AnyHashable : Any]?, for item: ICCameraItem, error: Error?)
  @available(macOS 10.4, *)
  func cameraDevice(_ camera: ICCameraDevice, didRenameItems items: [ICCameraItem])
  @available(macOS 10.4, *)
  func cameraDeviceDidChangeCapability(_ camera: ICCameraDevice)
  @available(macOS 10.4, *)
  func cameraDevice(_ camera: ICCameraDevice, didReceivePTPEvent eventData: Data)
  @available(macOS 10.4, *)
  func deviceDidBecomeReady(withCompleteContentCatalog device: ICCameraDevice)
  @available(macOS 10.4, *)
  func cameraDeviceDidRemoveAccessRestriction(_ device: ICDevice)
  @available(macOS 10.4, *)
  func cameraDeviceDidEnableAccessRestriction(_ device: ICDevice)
  @available(macOS 10.4, *)
  optional func cameraDevice(_ cameraDevice: ICCameraDevice, shouldGetThumbnailOf item: ICCameraItem) -> Bool
  @available(macOS 10.4, *)
  optional func cameraDevice(_ cameraDevice: ICCameraDevice, shouldGetMetadataOf item: ICCameraItem) -> Bool
  @available(macOS 10.4, *)
  optional func cameraDevice(_ camera: ICCameraDevice, didCompleteDeleteFilesWithError error: Error?)
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  optional func cameraDevice(_ camera: ICCameraDevice, didAdd item: ICCameraItem)
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  optional func cameraDevice(_ camera: ICCameraDevice, didRemove item: ICCameraItem)
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  optional func cameraDevice(_ camera: ICCameraDevice, didReceiveThumbnailFor item: ICCameraItem)
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  optional func cameraDevice(_ camera: ICCameraDevice, didReceiveMetadataFor item: ICCameraItem)
}
protocol ICCameraDeviceDownloadDelegate : NSObjectProtocol {
  @available(macOS 10.4, *)
  optional func didDownloadFile(_ file: ICCameraFile, error: Error?, options: [String : Any] = [:], contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.4, *)
  optional func didReceiveDownloadProgress(for file: ICCameraFile, downloadedBytes: off_t, maxBytes: off_t)
}
