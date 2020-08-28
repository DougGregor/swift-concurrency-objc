
@available(macOS 10.15, *)
typealias PHAssetResourceDataRequestID = Int32
@available(macOS 10.15, *)
let PHInvalidAssetResourceDataRequestID: PHAssetResourceDataRequestID
@available(macOS 10.15, *)
typealias PHAssetResourceProgressHandler = (Double) -> Void
@available(macOS 10.15, *)
class PHAssetResourceRequestOptions : NSObject, NSCopying {
  @available(macOS 10.15, *)
  var isNetworkAccessAllowed: Bool
  @available(macOS 10.15, *)
  var progressHandler: PHAssetResourceProgressHandler?
}
@available(macOS 10.15, *)
class PHAssetResourceManager : NSObject {
  @available(macOS 10.15, *)
  class func `default`() -> PHAssetResourceManager
  @available(macOS 10.15, *)
  func requestData(for resource: PHAssetResource, options: PHAssetResourceRequestOptions?, dataReceivedHandler handler: @escaping (Data) -> Void, completionHandler: @escaping (Error?) -> Void) -> PHAssetResourceDataRequestID
  @available(macOS 10.15, *)
  func writeData(for resource: PHAssetResource, toFile fileURL: URL, options: PHAssetResourceRequestOptions?, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func cancelDataRequest(_ requestID: PHAssetResourceDataRequestID)
}
