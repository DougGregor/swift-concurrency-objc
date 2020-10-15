
extension UIActivityViewController {
  typealias CompletionHandler = (UIActivity.ActivityType?, Bool) -> Void
  typealias CompletionWithItemsHandler = (UIActivity.ActivityType?, Bool, [Any]?, Error?) -> Void
}
@available(iOS 6.0, *)
class UIActivityViewController : UIViewController {
  init(activityItems: [Any], applicationActivities: [UIActivity]?)
  @available(iOS, introduced: 6.0, deprecated: 8.0)
  var completionHandler: UIActivityViewController.CompletionHandler?
  @available(iOS 8.0, *)
  var completionWithItemsHandler: UIActivityViewController.CompletionWithItemsHandler?
  var excludedActivityTypes: [UIActivity.ActivityType]?
}
extension UIActivityViewController {
  @available(iOS 14.0, *)
  convenience init(activityItemsConfiguration: UIActivityItemsConfigurationReading)
}
