
@available(iOS, introduced: 8.0, deprecated: 13.0, message: "Inter-App Audio API is deprecated in favor of Audio Units")
class CAInterAppAudioSwitcherView : UIView {
  var isShowingAppNames: Bool
  func setOutputAudioUnit(_ au: AudioUnit?)
  func contentWidth() -> CGFloat
}
