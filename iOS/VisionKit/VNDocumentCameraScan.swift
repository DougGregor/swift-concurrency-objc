
@available(iOS 13.0, *)
class VNDocumentCameraScan : NSObject {
  var pageCount: Int { get }
  func imageOfPage(at index: Int) -> UIImage
  var title: String { get }
}
