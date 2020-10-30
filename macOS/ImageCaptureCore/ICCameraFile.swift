
@available(macOS 10.4, *)
class ICCameraFile : ICCameraItem {
  @available(macOS 10.4, *)
  var width: Int { get }
  @available(macOS 10.4, *)
  var height: Int { get }
  @available(macOS 10.4, *)
  var originalFilename: String? { get }
  @available(macOS 10.4, *)
  var createdFilename: String? { get }
  @available(macOS 10.4, *)
  var fileSize: off_t { get }
  @available(macOS 10.4, *)
  var orientation: ICEXIFOrientationType
  @available(macOS 10.4, *)
  var duration: Double { get }
  @available(macOS 10.4, *)
  var highFramerate: Bool { get }
  @available(macOS 10.4, *)
  var timeLapse: Bool { get }
  @available(macOS 10.13, *)
  var firstPicked: Bool { get }
  @available(macOS 10.4, *)
  var originatingAssetID: String? { get }
  @available(macOS 10.13, *)
  var groupUUID: String? { get }
  @available(macOS 10.4, *)
  var gpsString: String? { get }
  @available(macOS 10.11, *)
  var relatedUUID: String? { get }
  @available(macOS 10.4, *)
  var burstUUID: String? { get }
  @available(macOS 10.10, *)
  var burstFavorite: Bool { get }
  @available(macOS 10.10, *)
  var burstPicked: Bool { get }
  @available(macOS 10.4, *)
  var sidecarFiles: [ICCameraItem]? { get }
  @available(macOS 10.4, *)
  var pairedRawImage: ICCameraFile? { get }
  @available(macOS 10.4, *)
  var fileCreationDate: Date? { get }
  @available(macOS 10.4, *)
  var fileModificationDate: Date? { get }
  @available(macOS 10.4, *)
  var exifCreationDate: Date? { get }
  @available(macOS 10.4, *)
  var exifModificationDate: Date? { get }
  @available(macOS 10.15, *)
  func requestThumbnailData(options: [ICCameraItemThumbnailOption : Any]? = nil, completion: @escaping (Data?, Error?) -> Void)
  @available(macOS 10.15, *)
  func requestThumbnailData(options: [ICCameraItemThumbnailOption : Any]? = nil) async throws -> Data
  @available(macOS 10.15, *)
  func requestMetadataDictionary(options: [ICCameraItemMetadataOption : Any]? = nil, completion: @escaping ([AnyHashable : Any]?, Error?) -> Void)
  @available(macOS 10.15, *)
  func requestMetadataDictionary(options: [ICCameraItemMetadataOption : Any]? = nil) async throws -> [AnyHashable : Any]
  @available(macOS 10.15, *)
  func requestDownload(options: [ICDownloadOption : Any]? = nil, completion: @escaping (String?, Error?) -> Void) -> Progress?
  @available(macOS 10.15, *)
  func requestReadData(atOffset offset: off_t, length: off_t, completion: @escaping (Data?, Error?) -> Void)
  @available(macOS 10.15, *)
  func requestReadData(atOffset offset: off_t, length: off_t) async throws -> Data
}
