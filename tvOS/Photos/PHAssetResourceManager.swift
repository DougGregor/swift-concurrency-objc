
@available(tvOS 10, *)
typealias PHAssetResourceDataRequestID = Int32
@available(tvOS 10, *)
let PHInvalidAssetResourceDataRequestID: PHAssetResourceDataRequestID
@available(tvOS 10, *)
typealias PHAssetResourceProgressHandler = (Double) -> Void
@available(tvOS 10, *)
class PHAssetResourceRequestOptions : NSObject, NSCopying {
  @available(tvOS 10, *)
  var isNetworkAccessAllowed: Bool
  @available(tvOS 10, *)
  var progressHandler: PHAssetResourceProgressHandler?
}
@available(tvOS 10, *)
class PHAssetResourceManager : NSObject {
  @available(tvOS 10, *)
  class func `default`() -> PHAssetResourceManager
  @available(tvOS 10, *)
  func requestData(for resource: PHAssetResource, options: PHAssetResourceRequestOptions?, dataReceivedHandler handler: @escaping (Data) -> Void, completionHandler: @escaping (Error?) -> Void) -> PHAssetResourceDataRequestID
  @available(tvOS 10, *)
  func writeData(for resource: PHAssetResource, toFile fileURL: URL, options: PHAssetResourceRequestOptions?, completionHandler: @escaping (Error?) -> Void)
  @available(tvOS 10, *)
  func writeData(for resource: PHAssetResource, toFile fileURL: URL, options: PHAssetResourceRequestOptions?) async throws
  @available(tvOS 10, *)
  func cancelDataRequest(_ requestID: PHAssetResourceDataRequestID)
}
