
@available(tvOS 6.0, *)
class UIRefreshControl : UIControl {
  var isRefreshing: Bool { get }
  var attributedTitle: NSAttributedString?
  @available(tvOS 6.0, *)
  func beginRefreshing()
  @available(tvOS 6.0, *)
  func endRefreshing()
}
