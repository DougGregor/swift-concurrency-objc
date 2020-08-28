
@available(iOS 13.0, *)
class QLThumbnailGenerator : NSObject {
  class var shared: QLThumbnailGenerator { get }
  func generateBestRepresentation(for request: QLThumbnailGenerator.Request, completion completionHandler: @escaping (QLThumbnailRepresentation?, Error?) -> Void)
  func generateBestRepresentation(for request: QLThumbnailGenerator.Request) async throws -> QLThumbnailRepresentation?
  func generateRepresentations(for request: QLThumbnailGenerator.Request, update updateHandler: ((QLThumbnailRepresentation?, QLThumbnailRepresentation.RepresentationType, Error?) -> Void)? = nil)
  func cancel(_ request: QLThumbnailGenerator.Request)
  func saveBestRepresentation(for request: QLThumbnailGenerator.Request, to fileURL: URL, contentType: String, completion completionHandler: @escaping (Error?) -> Void)
  func saveBestRepresentation(for request: QLThumbnailGenerator.Request, to fileURL: URL, contentType: String) async throws
}
