
@available(iOS 14.0, *)
protocol CPListTemplateItem : NSObjectProtocol {
  var text: String? { get }
  var userInfo: Any? { get set }
}
@available(iOS 14.0, *)
protocol CPSelectableListItem : CPListTemplateItem {
  var handler: ((CPSelectableListItem, @escaping () -> Void) -> Void)? { get set }
}
