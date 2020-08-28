
protocol UIAccessibilityIdentification : NSObjectProtocol {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String? { get set }
}
extension UIView : UIAccessibilityIdentification {
}
extension UIBarItem : UIAccessibilityIdentification {
}
extension UIAlertAction : UIAccessibilityIdentification {
}
extension UIMenuElement : UIAccessibilityIdentification {
}
extension UIImage : UIAccessibilityIdentification {
}
