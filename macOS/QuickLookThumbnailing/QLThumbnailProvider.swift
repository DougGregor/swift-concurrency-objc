
@available(macOS 10.15, *)
class QLThumbnailProvider : NSObject {
  func provideThumbnail(for request: QLFileThumbnailRequest, _ handler: @escaping (QLThumbnailReply?, Error?) -> Void)
}
