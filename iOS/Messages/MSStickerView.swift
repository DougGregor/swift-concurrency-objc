
@available(iOS 10.0, *)
class MSStickerView : UIView {
  init(frame: CGRect, sticker: MSSticker?)
  var sticker: MSSticker?
  var animationDuration: TimeInterval { get }
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
}
