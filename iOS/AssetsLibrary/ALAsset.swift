
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAsset class properties from the Photos framework instead")
let ALErrorInvalidProperty: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use the mediaType property on a PHAsset from the Photos framework instead")
let ALAssetPropertyType: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use the location property on a PHAsset from the Photos framework instead")
let ALAssetPropertyLocation: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use the duration property on a PHAsset from the Photos framework instead")
let ALAssetPropertyDuration: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use the orientation of the UIImage returned for a PHAsset via the PHImageManager from the Photos framework instead")
let ALAssetPropertyOrientation: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use the creationDate property on a PHAsset from the Photos framework instead")
let ALAssetPropertyDate: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
let ALAssetPropertyRepresentations: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
let ALAssetPropertyURLs: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use the localIdentifier property on a PHAsset (or to lookup PHAssets by a previously known ALAssetPropertyAssetURL use fetchAssetsWithALAssetURLs:options:) from the Photos framework instead")
let ALAssetPropertyAssetURL: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetMediaTypeImage from the Photos framework instead")
let ALAssetTypePhoto: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetMediaTypeVideo from the Photos framework instead")
let ALAssetTypeVideo: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAssetMediaTypeAudio for audio or PHAssetMediaTypeUnknown for unknown media types from the Photos framework instead")
let ALAssetTypeUnknown: String
@available(iOS, introduced: 4, deprecated: 9, message: "Use PHAsset from the Photos framework instead")
class ALAsset : NSObject {
  @available(iOS, introduced: 4, deprecated: 9, message: "Use PHAsset class properties from the Photos framework instead")
  func value(forProperty property: String!) -> Any!
  @available(iOS, introduced: 4, deprecated: 9, message: "Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  func defaultRepresentation() -> ALAssetRepresentation!
  @available(iOS, introduced: 4, deprecated: 9, message: "Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  func representation(forUTI representationUTI: String!) -> ALAssetRepresentation!
  @available(iOS, introduced: 4, deprecated: 9, message: "Use requestImageForAsset:targetSize:contentMode:options:resultHandler: on PHImageManager to request a thumbnail sized image for a PHAsset from the Photos framework instead")
  func thumbnail() -> Unmanaged<CGImage>!
  @available(iOS, introduced: 5, deprecated: 9, message: "Use the PHImageContentMode options to request thumbnail aspect ratio in PHImageRequestOptions with the PHImageManager")
  func aspectRatioThumbnail() -> Unmanaged<CGImage>!
  @available(iOS, introduced: 5, deprecated: 9, message: "Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeModifiedImageData(toSavedPhotosAlbum imageData: Data!, metadata: [AnyHashable : Any]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced: 5, deprecated: 9, message: "Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeModifiedImageData(toSavedPhotosAlbum imageData: Data!, metadata: [AnyHashable : Any]!) async throws -> URL?
  @available(iOS, introduced: 5, deprecated: 9, message: "Use creationRequestForAssetFromVideoAtFileURL: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeModifiedVideoAtPath(toSavedPhotosAlbum videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  @available(iOS, introduced: 5, deprecated: 9, message: "Use creationRequestForAssetFromVideoAtFileURL: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeModifiedVideoAtPath(toSavedPhotosAlbum videoPathURL: URL!) async throws -> URL?
  @available(iOS, introduced: 5, deprecated: 9, message: "Use the PHImageRequestOptionsVersionOriginal or PHImageRequestOptionsVersionUnadjusted option in PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  var original: ALAsset! { get }
  @available(iOS, introduced: 5, deprecated: 9, message: "Use canPerformEditOperation: on a PHAsset from the Photos framework instead")
  var isEditable: Bool { get }
  @available(iOS, introduced: 5, deprecated: 9, message: "Use contentEditingOutput on a PHAssetChangeRequest from the Photos framework instead")
  func setImageData(_ imageData: Data!, metadata: [AnyHashable : Any]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced: 5, deprecated: 9, message: "Use contentEditingOutput on a PHAssetChangeRequest from the Photos framework instead")
  func setImageData(_ imageData: Data!, metadata: [AnyHashable : Any]!) async throws -> URL?
  @available(iOS, introduced: 5, deprecated: 9, message: "Use contentEditingOutput on a PHAssetChangeRequest from the Photos framework instead")
  func setVideoAtPath(_ videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  @available(iOS, introduced: 5, deprecated: 9, message: "Use contentEditingOutput on a PHAssetChangeRequest from the Photos framework instead")
  func setVideoAtPath(_ videoPathURL: URL!) async throws -> URL?
}
