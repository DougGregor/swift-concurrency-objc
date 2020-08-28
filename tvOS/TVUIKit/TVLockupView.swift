
@available(tvOS 12.0, *)
protocol TVLockupViewComponent : NSObjectProtocol {
  optional func updateAppearance(forLockupViewState state: UIControl.State)
}
@available(tvOS 12.0, *)
class TVLockupView : UIControl {
  var contentView: UIView { get }
  var contentSize: CGSize
  var headerView: TVLockupHeaderFooterView?
  var footerView: TVLockupHeaderFooterView?
  var contentViewInsets: NSDirectionalEdgeInsets
  var focusSizeIncrease: NSDirectionalEdgeInsets
}
