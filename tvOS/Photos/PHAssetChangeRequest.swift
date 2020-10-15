
@available(tvOS 10, *)
class PHAssetChangeRequest : PHChangeRequest {
  @available(tvOS 10, *)
  class func creationRequestForAssetFromImage(atFileURL fileURL: URL) -> Self?
  @available(tvOS 10, *)
  class func creationRequestForAssetFromVideo(atFileURL fileURL: URL) -> Self?
  @available(tvOS 10, *)
  var placeholderForCreatedAsset: PHObjectPlaceholder? { get }
  @available(tvOS 10, *)
  class func deleteAssets(_ assets: NSFastEnumeration)
  @available(tvOS 10, *)
  convenience init(for asset: PHAsset)
  @available(tvOS 10, *)
  var creationDate: Date?
  @available(tvOS 10, *)
  var location: CLLocation?
  @available(tvOS 10, *)
  var isFavorite: Bool
  @available(tvOS 10, *)
  var isHidden: Bool
  @available(tvOS 10, *)
  var contentEditingOutput: PHContentEditingOutput?
  @available(tvOS 10, *)
  func revertAssetContentToOriginal()
}
@available(tvOS 10, *)
typealias PHContentEditingInputRequestID = Int
@available(tvOS 10, *)
class PHContentEditingInputRequestOptions : NSObject {
  @available(tvOS 10, *)
  var canHandleAdjustmentData: (PHAdjustmentData) -> Bool
  @available(tvOS 10, *)
  var isNetworkAccessAllowed: Bool
  @available(tvOS 10, *)
  var progressHandler: ((Double, UnsafeMutablePointer<ObjCBool>) -> Void)?
}
@available(tvOS 10, *)
extension PHAsset {
  @available(tvOS 10, *)
  func requestContentEditingInput(with options: PHContentEditingInputRequestOptions?, completionHandler: @escaping (PHContentEditingInput?, [AnyHashable : Any]) -> Void) -> PHContentEditingInputRequestID
  @available(tvOS 10, *)
  func cancelContentEditingInputRequest(_ requestID: PHContentEditingInputRequestID)
}
@available(tvOS 10, *)
let PHContentEditingInputResultIsInCloudKey: String
@available(tvOS 10, *)
let PHContentEditingInputCancelledKey: String
@available(tvOS 10, *)
let PHContentEditingInputErrorKey: String
@available(tvOS 10, *)
extension PHContentEditingOutput {
  @available(tvOS 10, *)
  init(placeholderForCreatedAsset: PHObjectPlaceholder)
}
