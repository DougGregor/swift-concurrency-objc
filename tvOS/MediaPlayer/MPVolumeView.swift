
@available(tvOS 2.0, *)
class MPVolumeView : UIView, NSCoding {
  @available(tvOS 4.2, *)
  var showsVolumeSlider: Bool
  @available(tvOS, introduced: 4.2, deprecated: 13.0, message: "Use AVRoutePickerView instead.")
  var showsRouteButton: Bool
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use AVRouteDetector.multipleRoutesDetected instead.")
  var areWirelessRoutesAvailable: Bool { get }
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use AVPlayer.externalPlaybackActive instead.")
  var isWirelessRouteActive: Bool { get }
  @available(tvOS 6.0, *)
  func setMinimumVolumeSliderImage(_ image: UIImage?, for state: UIControl.State)
  @available(tvOS 6.0, *)
  func setMaximumVolumeSliderImage(_ image: UIImage?, for state: UIControl.State)
  @available(tvOS 6.0, *)
  func setVolumeThumbImage(_ image: UIImage?, for state: UIControl.State)
  @available(tvOS 6.0, *)
  func minimumVolumeSliderImage(for state: UIControl.State) -> UIImage?
  @available(tvOS 6.0, *)
  func maximumVolumeSliderImage(for state: UIControl.State) -> UIImage?
  @available(tvOS 6.0, *)
  func volumeThumbImage(for state: UIControl.State) -> UIImage?
  @available(tvOS 7.0, *)
  var volumeWarningSliderImage: UIImage?
  @available(tvOS 6.0, *)
  func volumeSliderRect(forBounds bounds: CGRect) -> CGRect
  @available(tvOS 6.0, *)
  func volumeThumbRect(forBounds bounds: CGRect, volumeSliderRect rect: CGRect, value: Float) -> CGRect
  @available(tvOS, introduced: 6.0, deprecated: 13.0, message: "Use AVRoutePickerView.routePickerButtonStyle instead.")
  func setRouteButtonImage(_ image: UIImage?, for state: UIControl.State)
  @available(tvOS, introduced: 6.0, deprecated: 13.0, message: "See AVRoutePickerView for possible replacements.")
  func routeButtonImage(for state: UIControl.State) -> UIImage?
  @available(tvOS, introduced: 6.0, deprecated: 13.0, message: "See AVRoutePickerView for possible replacements.")
  func routeButtonRect(forBounds bounds: CGRect) -> CGRect
}
extension NSNotification.Name {
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use AVRouteDetectorMultipleRoutesDetectedDidChangeNotification instead.")
  static let MPVolumeViewWirelessRoutesAvailableDidChange: NSNotification.Name
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use AVPlayer.externalPlaybackActive KVO instead.")
  static let MPVolumeViewWirelessRouteActiveDidChange: NSNotification.Name
}
