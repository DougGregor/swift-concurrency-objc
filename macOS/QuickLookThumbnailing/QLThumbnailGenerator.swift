
@available(macOS 10.15, *)
class QLThumbnailGenerator : NSObject {
  class var shared: QLThumbnailGenerator { get }
  func generateBestRepresentation(for request: QLThumbnailGenerator.Request, completion completionHandler: @escaping (QLThumbnailRepresentation?, Error?) -> Void)
  func generateRepresentations(for request: QLThumbnailGenerator.Request, update updateHandler: ((QLThumbnailRepresentation?, QLThumbnailRepresentation.RepresentationType, Error?) -> Void)? = nil)
  func cancel(_ request: QLThumbnailGenerator.Request)
  func saveBestRepresentation(for request: QLThumbnailGenerator.Request, to fileURL: URL, contentType: String, completion completionHandler: @escaping (Error?) -> Void)
}
