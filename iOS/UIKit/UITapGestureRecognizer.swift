
@available(iOS 3.2, *)
class UITapGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  @available(iOS 13.4, *)
  var buttonMaskRequired: UIEvent.ButtonMask
}
