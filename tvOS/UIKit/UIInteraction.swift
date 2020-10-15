
@available(tvOS 13.0, *)
protocol UIInteraction : NSObjectProtocol {
  weak var view: @sil_weak UIView? { get }
  func willMove(to view: UIView?)
  func didMove(to view: UIView?)
}
extension UIView {
  @available(tvOS 13.0, *)
  func addInteraction(_ interaction: UIInteraction)
  @available(tvOS 13.0, *)
  func removeInteraction(_ interaction: UIInteraction)
  @available(tvOS 13.0, *)
  var interactions: [UIInteraction]
}
