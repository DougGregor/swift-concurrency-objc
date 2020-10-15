
protocol AVAssetResourceLoaderDelegate : NSObjectProtocol {
}
extension AVAssetResourceLoader {
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data, options: [String : Any]? = nil) throws -> Data
}
extension AVAssetResourceLoadingRequest {
}
