
@available(iOS 11.0, *)
class QLThumbnailProvider : NSObject {
  func provideThumbnail(for request: QLFileThumbnailRequest, _ handler: @escaping (QLThumbnailReply?, Error?) -> Void)
}
