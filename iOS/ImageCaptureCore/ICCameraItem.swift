
@available(iOS 13.0, *)
struct ICCameraItemMetadataOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 13.0, *)
struct ICCameraItemThumbnailOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICCameraItemThumbnailOption {
  @available(iOS 13.0, *)
  static let imageSourceThumbnailMaxPixelSize: ICCameraItemThumbnailOption
  @available(iOS 13.0, *)
  static let imageSourceShouldCache: ICCameraItemThumbnailOption
}
@available(iOS 13.0, *)
struct ICDownloadOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDownloadOption {
  @available(iOS 13.0, *)
  static let downloadsDirectoryURL: ICDownloadOption
  @available(iOS 13.0, *)
  static let saveAsFilename: ICDownloadOption
  @available(iOS 13.0, *)
  static let savedFilename: ICDownloadOption
  @available(iOS 13.0, *)
  static let savedAncillaryFiles: ICDownloadOption
  @available(iOS 13.0, *)
  static let overwrite: ICDownloadOption
  @available(iOS 13.0, *)
  static let deleteAfterSuccessfulDownload: ICDownloadOption
  @available(iOS 13.0, *)
  static let sidecarFiles: ICDownloadOption
  @available(iOS 14.0, *)
  static let truncateAfterSuccessfulDownload: ICDownloadOption
}
@available(iOS 13.0, *)
class ICCameraItem : NSObject {
  @available(iOS 13.0, *)
  var device: ICCameraDevice? { get }
  @available(iOS 13.0, *)
  var parentFolder: ICCameraFolder? { get }
  @available(iOS 13.0, *)
  var name: String? { get }
  @available(iOS 13.0, *)
  var uti: String? { get }
  @available(iOS 13.0, *)
  var isLocked: Bool { get }
  @available(iOS 13.0, *)
  var isRaw: Bool { get }
  @available(iOS 13.0, *)
  var isInTemporaryStore: Bool { get }
  @available(iOS 13.0, *)
  var creationDate: Date? { get }
  @available(iOS 13.0, *)
  var modificationDate: Date? { get }
  @available(iOS 13.0, *)
  var thumbnail: CGImage? { get }
  @available(iOS 13.0, *)
  var metadata: [AnyHashable : Any]? { get }
  @available(iOS 13.0, *)
  var userData: NSMutableDictionary? { get }
  @available(iOS 13.0, *)
  var ptpObjectHandle: UInt32 { get }
  @available(iOS 13.0, *)
  var wasAddedAfterContentCatalogCompleted: Bool { get }
  @available(iOS 13.0, *)
  func requestThumbnail()
  @available(iOS 13.0, *)
  func requestMetadata()
  @available(iOS 13.0, *)
  func flushThumbnailCache()
  @available(iOS 13.0, *)
  func flushMetadataCache()
  var thumbnailIfAvailable: CGImage? { get }
  var largeThumbnailIfAvailable: CGImage? { get }
  var metadataIfAvailable: [String : Any]? { get }
}
