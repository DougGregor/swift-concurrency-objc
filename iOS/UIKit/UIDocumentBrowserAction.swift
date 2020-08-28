
extension UIDocumentBrowserAction {
  @available(iOS 11.0, *)
  struct Availability : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var menu: UIDocumentBrowserAction.Availability { get }
    static var navigationBar: UIDocumentBrowserAction.Availability { get }
  }
}
@available(iOS 11.0, *)
class UIDocumentBrowserAction : NSObject {
  init(identifier: String, localizedTitle: String, availability: UIDocumentBrowserAction.Availability, handler: @escaping ([URL]) -> Void)
  var identifier: String { get }
  var localizedTitle: String { get }
  var availability: UIDocumentBrowserAction.Availability { get }
  var image: UIImage?
  var supportedContentTypes: [String]
  var supportsMultipleItems: Bool
}
