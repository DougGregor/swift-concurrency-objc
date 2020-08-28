
extension UIStackView {
  @available(iOS 9.0, *)
  enum Distribution : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fill
    case fillEqually
    case fillProportionally
    case equalSpacing
    case equalCentering
  }
  @available(iOS 9.0, *)
  enum Alignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fill
    case leading
    static var top: UIStackView.Alignment { get }
    case firstBaseline
    case center
    case trailing
    static var bottom: UIStackView.Alignment { get }
    case lastBaseline
  }
  @available(iOS 11.0, *)
  class let spacingUseDefault: CGFloat
  @available(iOS 11.0, *)
  class let spacingUseSystem: CGFloat
}
@available(iOS 9.0, *)
class UIStackView : UIView {
  convenience init(arrangedSubviews views: [UIView])
  var arrangedSubviews: [UIView] { get }
  func addArrangedSubview(_ view: UIView)
  func removeArrangedSubview(_ view: UIView)
  func insertArrangedSubview(_ view: UIView, at stackIndex: Int)
  var axis: NSLayoutConstraint.Axis
  var distribution: UIStackView.Distribution
  var alignment: UIStackView.Alignment
  var spacing: CGFloat
  @available(iOS 11.0, *)
  func setCustomSpacing(_ spacing: CGFloat, after arrangedSubview: UIView)
  @available(iOS 11.0, *)
  func customSpacing(after arrangedSubview: UIView) -> CGFloat
  var isBaselineRelativeArrangement: Bool
  var isLayoutMarginsRelativeArrangement: Bool
}
