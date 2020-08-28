
@available(iOS 10.0, *)
enum MSStickerSize : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case small
  case regular
  case large
}
@available(iOS 10.0, *)
class MSStickerBrowserView : UIView {
  init(frame: CGRect, stickerSize: MSStickerSize)
  var stickerSize: MSStickerSize { get }
  weak var dataSource: @sil_weak MSStickerBrowserViewDataSource?
  var contentOffset: CGPoint
  var contentInset: UIEdgeInsets
  func setContentOffset(_ contentOffset: CGPoint, animated: Bool)
  func reloadData()
}
