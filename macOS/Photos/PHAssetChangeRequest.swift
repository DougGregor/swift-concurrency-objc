
@available(macOS 10.15, *)
class PHAssetChangeRequest : PHChangeRequest {
  @available(macOS 10.15, *)
  class func creationRequestForAssetFromImage(atFileURL fileURL: URL) -> Self?
  @available(macOS 10.15, *)
  class func creationRequestForAssetFromVideo(atFileURL fileURL: URL) -> Self?
  @available(macOS 10.15, *)
  var placeholderForCreatedAsset: PHObjectPlaceholder? { get }
  @available(macOS 10.15, *)
  class func deleteAssets(_ assets: NSFastEnumeration)
  @available(macOS 10.15, *)
  convenience init(for asset: PHAsset)
  @available(macOS 10.15, *)
  var creationDate: Date?
  @available(macOS 10.15, *)
  var location: CLLocation?
  @available(macOS 10.15, *)
  var isFavorite: Bool
  @available(macOS 10.15, *)
  var isHidden: Bool
  @available(macOS 10.15, *)
  var contentEditingOutput: PHContentEditingOutput?
  @available(macOS 10.15, *)
  func revertAssetContentToOriginal()
}
@available(macOS 10.15, *)
typealias PHContentEditingInputRequestID = Int
@available(macOS 10.15, *)
class PHContentEditingInputRequestOptions : NSObject {
  @available(macOS 10.15, *)
  var canHandleAdjustmentData: (PHAdjustmentData) -> Bool
  @available(macOS 10.15, *)
  var isNetworkAccessAllowed: Bool
  @available(macOS 10.15, *)
  var progressHandler: ((Double, UnsafeMutablePointer<ObjCBool>) -> Void)?
}
@available(macOS 10.15, *)
extension PHAsset {
  @available(macOS 10.15, *)
  func requestContentEditingInput(with options: PHContentEditingInputRequestOptions?, completionHandler: @escaping (PHContentEditingInput?, [AnyHashable : Any]) -> Void) -> PHContentEditingInputRequestID
  @available(macOS 10.15, *)
  func cancelContentEditingInputRequest(_ requestID: PHContentEditingInputRequestID)
}
@available(macOS 10.15, *)
let PHContentEditingInputResultIsInCloudKey: String
@available(macOS 10.15, *)
let PHContentEditingInputCancelledKey: String
@available(macOS 10.15, *)
let PHContentEditingInputErrorKey: String
@available(macOS 10.15, *)
extension PHContentEditingOutput {
  @available(macOS 10.15, *)
  init(placeholderForCreatedAsset: PHObjectPlaceholder)
}
