
@available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
enum ALAssetOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
  case up
  @available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
  case down
  @available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
  case left
  @available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
  case right
  @available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
  case upMirrored
  @available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
  case downMirrored
  @available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
  case leftMirrored
  @available(iOS, introduced: 4, deprecated: 9, message: "Use UIImageOrientation in the Photos framework instead")
  case rightMirrored
}
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
var ALAssetsGroupLibrary: UInt32 { get }
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
var ALAssetsGroupAlbum: UInt32 { get }
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
var ALAssetsGroupEvent: UInt32 { get }
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
var ALAssetsGroupFaces: UInt32 { get }
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
var ALAssetsGroupSavedPhotos: UInt32 { get }
@available(iOS, introduced: 5, deprecated: 9, message: "Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
var ALAssetsGroupPhotoStream: UInt32 { get }
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
var ALAssetsGroupAll: UInt32 { get }
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
typealias ALAssetsGroupType = Int
@available(iOS, introduced: 6, deprecated: 9, message: "Use PHAuthorizationStatus in the Photos framework instead")
enum ALAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 6, deprecated: 9, message: "Use PHAuthorizationStatus in the Photos framework instead")
  case notDetermined
  @available(iOS, introduced: 6, deprecated: 9, message: "Use PHAuthorizationStatus in the Photos framework instead")
  case restricted
  @available(iOS, introduced: 6, deprecated: 9, message: "Use PHAuthorizationStatus in the Photos framework instead")
  case denied
  @available(iOS, introduced: 6, deprecated: 9, message: "Use PHAuthorizationStatus in the Photos framework instead")
  case authorized
}
@available(iOS, introduced: 4, deprecated: 9, message: "Use the PHFetchResult returned by fetchAssetCollectionsInCollectionList:options: on PHAssetCollection from the Photos framework to enumerate the asset collections in a collection list instead")
typealias ALAssetsLibraryGroupsEnumerationResultsBlock = (ALAssetsGroup?, UnsafeMutablePointer<ObjCBool>?) -> Void
@available(iOS, introduced: 4, deprecated: 9, message: "Use fetchAssetsWithLocalIdentifiers:options: on PHAsset to fetch assets by local identifier (or to lookup PHAssets by a previously known ALAssetPropertyAssetURL use fetchAssetsWithALAssetURLs:options:) from the Photos framework instead")
typealias ALAssetsLibraryAssetForURLResultBlock = (ALAsset?) -> Void
@available(iOS, introduced: 5, deprecated: 9, message: "Use fetchAssetCollectionsWithLocalIdentifiers:options: on PHAssetCollection to fetch the asset collections by local identifier (or to lookup PHAssetCollections by a previously known ALAssetsGroupPropertyURL use fetchAssetCollectionsWithALAssetGroupURLs:options:) from the Photos framework instead")
typealias ALAssetsLibraryGroupResultBlock = (ALAssetsGroup?) -> Void
@available(iOS, introduced: 4, deprecated: 9, message: "Use the Photos framework instead")
typealias ALAssetsLibraryAccessFailureBlock = (Error?) -> Void
@available(iOS, introduced: 4, deprecated: 9, message: "Use performChanges:completionHandler: or performChangesAndWait: on the shared PHPhotoLibrary with a PHAssetChangeRequest from the Photos framework instead")
typealias ALAssetsLibraryWriteImageCompletionBlock = (URL?, Error?) -> Void
@available(iOS, introduced: 4, deprecated: 9, message: "Use performChanges:completionHandler: or performChangesAndWait: on the shared PHPhotoLibrary with a PHAssetChangeRequest from the Photos framework instead")
typealias ALAssetsLibraryWriteVideoCompletionBlock = (URL?, Error?) -> Void
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHPhotoLibrary from the Photos framework instead")
class ALAssetsLibrary : NSObject {
  @available(iOS, introduced: 4, deprecated: 9, message: "Use the PHFetchResult returned by one of the fetch... methods on PHAssetCollection from the Photos framework to enumerate asset collections instead")
  func enumerateGroups(withTypes types: ALAssetsGroupType, using enumerationBlock: ALAssetsLibraryGroupsEnumerationResultsBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  @available(iOS, introduced: 4, deprecated: 9, message: "Use fetchAssetsWithLocalIdentifiers:options: on PHAsset to fetch assets by local identifier (or to lookup PHAssets by a previously known ALAssetPropertyAssetURL use fetchAssetsWithALAssetURLs:options:) from the Photos framework instead")
  func asset(for assetURL: URL!, resultBlock: ALAssetsLibraryAssetForURLResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  @available(iOS, introduced: 5, deprecated: 9, message: "Use fetchAssetCollectionsWithLocalIdentifiers:options: on PHAssetCollection to fetch the asset collections by local identifier (or to lookup PHAssetCollections by a previously known ALAssetsGroupPropertyURL use fetchAssetCollectionsWithALAssetGroupURLs:options:) from the Photos framework instead")
  func group(for groupURL: URL!, resultBlock: ALAssetsLibraryGroupResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  @available(iOS, introduced: 5, deprecated: 9, message: "Use creationRequestForAssetCollectionWithTitle: on PHAssetCollectionChangeRequest from the Photos framework to create a new asset collection instead")
  func addAssetsGroupAlbum(withName name: String!, resultBlock: ALAssetsLibraryGroupResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  @available(iOS, introduced: 4, deprecated: 9, message: "Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImage(toSavedPhotosAlbum imageRef: CGImage!, orientation: ALAssetOrientation, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced: 4, deprecated: 9, message: "Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImage(toSavedPhotosAlbum imageRef: CGImage!, orientation: ALAssetOrientation) async throws -> URL?
  @available(iOS, introduced: 4.1, deprecated: 9, message: "Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImage(toSavedPhotosAlbum imageRef: CGImage!, metadata: [AnyHashable : Any]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced: 4.1, deprecated: 9, message: "Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImage(toSavedPhotosAlbum imageRef: CGImage!, metadata: [AnyHashable : Any]!) async throws -> URL?
  @available(iOS, introduced: 4.1, deprecated: 9, message: "Use creationRequestForAssetFromImageData: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImageData(toSavedPhotosAlbum imageData: Data!, metadata: [AnyHashable : Any]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced: 4.1, deprecated: 9, message: "Use creationRequestForAssetFromImageData: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImageData(toSavedPhotosAlbum imageData: Data!, metadata: [AnyHashable : Any]!) async throws -> URL?
  @available(iOS, introduced: 4, deprecated: 9, message: "Use creationRequestForAssetFromVideoAtFilePath: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeVideoAtPath(toSavedPhotosAlbum videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  @available(iOS, introduced: 4, deprecated: 9, message: "Use creationRequestForAssetFromVideoAtFilePath: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeVideoAtPath(toSavedPhotosAlbum videoPathURL: URL!) async throws -> URL?
  @available(iOS, introduced: 5, deprecated: 9, message: "Use isCompatibleWithSavedPhotosAlbum on AVAsset instead")
  func videoAtPathIs(compatibleWithSavedPhotosAlbum videoPathURL: URL!) -> Bool
  @available(iOS, introduced: 6, deprecated: 9, message: "Use authorizationStatus on the shared PHPhotoLibrary from the Photos framework instead")
  class func authorizationStatus() -> ALAuthorizationStatus
  @available(iOS, introduced: 6, deprecated: 9, message: "Use the Photos framework instead")
  class func disableSharedPhotoStreamsSupport()
}

extension ALAssetsLibrary {
  @available(iOS, deprecated: 9.0)
  @nonobjc func enumerateGroupsWithTypes(_ types: UInt32, usingBlock enumerationBlock: ALAssetsLibraryGroupsEnumerationResultsBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
}
extension NSNotification.Name {
  @available(iOS, introduced: 4, deprecated: 9, message: "Use photoLibraryDidChange: notification from the Photos framework instead")
  static let ALAssetsLibraryChanged: NSNotification.Name
}
@available(iOS, introduced: 6, deprecated: 9, message: "Use changeDetailsForFetchResult: and changeDetailsForObject: to get change details via the PHChange object included on photoLibraryDidChange: from the Photos framework instead")
let ALAssetLibraryUpdatedAssetsKey: String
@available(iOS, introduced: 6, deprecated: 9, message: "Use changeDetailsForFetchResult: and changeDetailsForObject: to get change details via the PHChange object included on photoLibraryDidChange: from the Photos framework instead")
let ALAssetLibraryInsertedAssetGroupsKey: String
@available(iOS, introduced: 6, deprecated: 9, message: "Use changeDetailsForFetchResult: and changeDetailsForObject: to get change details via the PHChange object included on photoLibraryDidChange: from the Photos framework instead")
let ALAssetLibraryUpdatedAssetGroupsKey: String
@available(iOS, introduced: 6, deprecated: 9, message: "Use changeDetailsForFetchResult: and changeDetailsForObject: to get change details via the PHChange object included on photoLibraryDidChange: from the Photos framework instead")
let ALAssetLibraryDeletedAssetGroupsKey: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use the Photos framework instead")
let ALAssetsLibraryErrorDomain: String
var ALAssetsLibraryUnknownError: Int { get }
var ALAssetsLibraryWriteFailedError: Int { get }
var ALAssetsLibraryWriteBusyError: Int { get }
var ALAssetsLibraryWriteInvalidDataError: Int { get }
var ALAssetsLibraryWriteIncompatibleDataError: Int { get }
var ALAssetsLibraryWriteDataEncodingError: Int { get }
var ALAssetsLibraryWriteDiskSpaceError: Int { get }
var ALAssetsLibraryDataUnavailableError: Int { get }
var ALAssetsLibraryAccessUserDeniedError: Int { get }
var ALAssetsLibraryAccessGloballyDeniedError: Int { get }
