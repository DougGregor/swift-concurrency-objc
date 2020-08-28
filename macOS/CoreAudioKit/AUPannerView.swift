
@available(macOS 10.5, *)
class AUPannerView : NSView {
  var audioUnit: AudioUnit { get }
  /*not inherited*/ init(audioUnit au: AudioUnit)
}
