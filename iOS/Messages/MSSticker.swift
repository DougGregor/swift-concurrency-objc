
@available(iOS 10.0, *)
class MSSticker : NSObject {
  init(contentsOfFileURL fileURL: URL, localizedDescription: String) throws
  var imageFileURL: URL { get }
  var localizedDescription: String { get }
}
