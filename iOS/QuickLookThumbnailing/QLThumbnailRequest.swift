
@available(iOS 11.0, *)
class QLFileThumbnailRequest : NSObject {
  var maximumSize: CGSize { get }
  var minimumSize: CGSize { get }
  var scale: CGFloat { get }
  var fileURL: URL { get }
}
