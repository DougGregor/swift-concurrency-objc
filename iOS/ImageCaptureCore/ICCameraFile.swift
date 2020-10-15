
@available(iOS 13.0, *)
class ICCameraFile : ICCameraItem {
  @available(iOS 13.0, *)
  var width: Int { get }
  @available(iOS 13.0, *)
  var height: Int { get }
  @available(iOS 13.0, *)
  var originalFilename: String? { get }
  @available(iOS 13.0, *)
  var createdFilename: String? { get }
  @available(iOS 13.0, *)
  var fileSize: off_t { get }
  @available(iOS 13.0, *)
  var orientation: ICEXIFOrientationType
  @available(iOS 13.0, *)
  var duration: Double { get }
  @available(iOS 13.0, *)
  var highFramerate: Bool { get }
  @available(iOS 13.0, *)
  var timeLapse: Bool { get }
  @available(iOS 13.0, *)
  var firstPicked: Bool { get }
  @available(iOS 13.0, *)
  var originatingAssetID: String? { get }
  @available(iOS 13.0, *)
  var groupUUID: String? { get }
  @available(iOS 13.0, *)
  var gpsString: String? { get }
  @available(iOS 13.0, *)
  var relatedUUID: String? { get }
  @available(iOS 13.0, *)
  var burstUUID: String? { get }
  @available(iOS 13.0, *)
  var burstFavorite: Bool { get }
  @available(iOS 13.0, *)
  var burstPicked: Bool { get }
  @available(iOS 13.0, *)
  var sidecarFiles: [ICCameraItem]? { get }
  @available(iOS 13.0, *)
  var pairedRawImage: ICCameraFile? { get }
  @available(iOS 13.0, *)
  var fileCreationDate: Date? { get }
  @available(iOS 13.0, *)
  var fileModificationDate: Date? { get }
  @available(iOS 13.0, *)
  var exifCreationDate: Date? { get }
  @available(iOS 13.0, *)
  var exifModificationDate: Date? { get }
  @available(iOS 13.0, *)
  func requestThumbnailData(options: [ICCameraItemThumbnailOption : Any]? = nil, completion: @escaping (Data?, Error?) -> Void)
  @available(iOS 13.0, *)
  func requestMetadataDictionary(options: [ICCameraItemMetadataOption : Any]? = nil, completion: @escaping ([AnyHashable : Any]?, Error?) -> Void)
  @available(iOS 13.0, *)
  func requestDownload(options: [ICDownloadOption : Any]? = nil, completion: @escaping (String?, Error?) -> Void) -> Progress?
  @available(iOS 13.0, *)
  func requestReadData(atOffset offset: off_t, length: off_t, completion: @escaping (Data?, Error?) -> Void)
}
