
protocol UIActivityItemSource : NSObjectProtocol {
  @available(iOS 6.0, *)
  func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any
  @available(iOS 6.0, *)
  func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any?
  @available(iOS 6.0, *)
  optional func activityViewController(_ activityViewController: UIActivityViewController, subjectForActivityType activityType: UIActivity.ActivityType?) -> String
  @available(iOS 6.0, *)
  optional func activityViewController(_ activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: UIActivity.ActivityType?) -> String
  @available(iOS 6.0, *)
  optional func activityViewController(_ activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: UIActivity.ActivityType?, suggestedSize size: CGSize) -> UIImage?
}
@available(iOS 6.0, *)
class UIActivityItemProvider : Operation, UIActivityItemSource {
  init(placeholderItem: Any)
  var placeholderItem: Any? { get }
  var activityType: UIActivity.ActivityType? { get }
  var item: Any { get }
}
