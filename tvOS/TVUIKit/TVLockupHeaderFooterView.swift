
@available(tvOS 12.0, *)
class TVLockupHeaderFooterView : UIView, TVLockupViewComponent {
  var titleLabel: UILabel? { get }
  var subtitleLabel: UILabel? { get }
  var showsOnlyWhenAncestorFocused: Bool
}
