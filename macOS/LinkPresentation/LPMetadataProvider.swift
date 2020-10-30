
@available(macOS 10.15, *)
class LPMetadataProvider : NSObject {
  func startFetchingMetadata(for URL: URL, completionHandler: @escaping (LPLinkMetadata?, Error?) -> Void)
  func startFetchingMetadata(for URL: URL) async throws -> LPLinkMetadata
  func cancel()
  var shouldFetchSubresources: Bool
  var timeout: TimeInterval
}
