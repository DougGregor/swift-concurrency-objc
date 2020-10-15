
@available(iOS 9, *)
typealias PHAssetResourceDataRequestID = Int32
@available(iOS 9, *)
let PHInvalidAssetResourceDataRequestID: PHAssetResourceDataRequestID
@available(iOS 9, *)
typealias PHAssetResourceProgressHandler = (Double) -> Void
@available(iOS 9, *)
class PHAssetResourceRequestOptions : NSObject, NSCopying {
  @available(iOS 9, *)
  var isNetworkAccessAllowed: Bool
  @available(iOS 9, *)
  var progressHandler: PHAssetResourceProgressHandler?
}
@available(iOS 9, *)
class PHAssetResourceManager : NSObject {
  @available(iOS 9, *)
  class func `default`() -> PHAssetResourceManager
  @available(iOS 9, *)
  func requestData(for resource: PHAssetResource, options: PHAssetResourceRequestOptions?, dataReceivedHandler handler: @escaping (Data) -> Void, completionHandler: @escaping (Error?) -> Void) -> PHAssetResourceDataRequestID
  @available(iOS 9, *)
  func writeData(for resource: PHAssetResource, toFile fileURL: URL, options: PHAssetResourceRequestOptions?, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9, *)
  func cancelDataRequest(_ requestID: PHAssetResourceDataRequestID)
}
