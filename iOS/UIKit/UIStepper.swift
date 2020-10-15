
@available(iOS 5.0, *)
class UIStepper : UIControl {
  var isContinuous: Bool
  var autorepeat: Bool
  var wraps: Bool
  var value: Double
  var minimumValue: Double
  var maximumValue: Double
  var stepValue: Double
  @available(iOS 6.0, *)
  func setBackgroundImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  func backgroundImage(for state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  func setDividerImage(_ image: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State)
  @available(iOS 6.0, *)
  func dividerImage(forLeftSegmentState state: UIControl.State, rightSegmentState state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  func setIncrementImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  func incrementImage(for state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  func setDecrementImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  func decrementImage(for state: UIControl.State) -> UIImage?
}
