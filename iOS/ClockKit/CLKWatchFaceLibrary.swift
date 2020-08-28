
extension CLKWatchFaceLibrary {
  @available(iOS 14.0, *)
  class let ErrorDomain: String
  @available(iOS 14.0, *)
  enum ErrorCode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case notFileURL
    case invalidFile
    case permissionDenied
    case faceNotAvailable
  }
}
@available(iOS 14.0, *)
class CLKWatchFaceLibrary : NSObject {
  func addWatchFace(at fileURL: URL, completionHandler handler: @escaping (Error?) -> Void)
  func addWatchFace(at fileURL: URL) async throws
}
