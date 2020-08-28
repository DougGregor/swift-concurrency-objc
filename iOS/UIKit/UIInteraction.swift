
@available(iOS 11.0, *)
protocol UIInteraction : NSObjectProtocol {
  weak var view: @sil_weak UIView? { get }
  func willMove(to view: UIView?)
  func didMove(to view: UIView?)
}
extension UIView {
  @available(iOS 11.0, *)
  func addInteraction(_ interaction: UIInteraction)
  @available(iOS 11.0, *)
  func removeInteraction(_ interaction: UIInteraction)
  @available(iOS 11.0, *)
  var interactions: [UIInteraction]
}
