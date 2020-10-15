
struct UIPopoverArrowDirection : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var up: UIPopoverArrowDirection { get }
  static var down: UIPopoverArrowDirection { get }
  static var left: UIPopoverArrowDirection { get }
  static var right: UIPopoverArrowDirection { get }
  static var any: UIPopoverArrowDirection { get }
  static var unknown: UIPopoverArrowDirection { get }
}
extension UIViewController {
  @available(iOS, introduced: 3.2, deprecated: 13.0)
  var isModalInPopover: Bool
}
