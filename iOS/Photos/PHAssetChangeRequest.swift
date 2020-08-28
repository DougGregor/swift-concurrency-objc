
@available(iOS 8, *)
class PHAssetChangeRequest : PHChangeRequest {
  @available(iOS 8, *)
  class func creationRequestForAssetFromImage(atFileURL fileURL: URL) -> Self?
  @available(iOS 8, *)
  class func creationRequestForAssetFromVideo(atFileURL fileURL: URL) -> Self?
  @available(iOS 8, *)
  var placeholderForCreatedAsset: PHObjectPlaceholder? { get }
  @available(iOS 8, *)
  class func deleteAssets(_ assets: NSFastEnumeration)
  @available(iOS 8, *)
  convenience init(for asset: PHAsset)
  @available(iOS 8, *)
  var creationDate: Date?
  @available(iOS 8, *)
  var location: CLLocation?
  @available(iOS 8, *)
  var isFavorite: Bool
  @available(iOS 8, *)
  var isHidden: Bool
  @available(iOS 8, *)
  var contentEditingOutput: PHContentEditingOutput?
  @available(iOS 8, *)
  func revertAssetContentToOriginal()
}
@available(iOS 8, *)
typealias PHContentEditingInputRequestID = Int
@available(iOS 8, *)
class PHContentEditingInputRequestOptions : NSObject {
  @available(iOS 8, *)
  var canHandleAdjustmentData: (PHAdjustmentData) -> Bool
  @available(iOS 8, *)
  var isNetworkAccessAllowed: Bool
  @available(iOS 8, *)
  var progressHandler: ((Double, UnsafeMutablePointer<ObjCBool>) -> Void)?
}
@available(iOS 8, *)
extension PHAsset {
  @available(iOS 8, *)
  func requestContentEditingInput(with options: PHContentEditingInputRequestOptions?, completionHandler: @escaping (PHContentEditingInput?, [AnyHashable : Any]) -> Void) -> PHContentEditingInputRequestID
  @available(iOS 8, *)
  func cancelContentEditingInputRequest(_ requestID: PHContentEditingInputRequestID)
}
@available(iOS 8, *)
let PHContentEditingInputResultIsInCloudKey: String
@available(iOS 8, *)
let PHContentEditingInputCancelledKey: String
@available(iOS 8, *)
let PHContentEditingInputErrorKey: String
@available(iOS 8, *)
extension PHContentEditingOutput {
  @available(iOS 8, *)
  init(placeholderForCreatedAsset: PHObjectPlaceholder)
}
