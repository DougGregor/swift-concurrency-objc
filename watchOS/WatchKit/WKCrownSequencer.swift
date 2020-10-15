
@available(watchOS 3.0, *)
class WKCrownSequencer : NSObject {
  weak var delegate: @sil_weak WKCrownDelegate?
  var rotationsPerSecond: Double { get }
  var isIdle: Bool { get }
  @available(watchOS 5.0, *)
  var isHapticFeedbackEnabled: Bool
  func focus()
  func resignFocus()
}
@available(watchOS 3.0, *)
protocol WKCrownDelegate : NSObjectProtocol {
  optional func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double)
  optional func crownDidBecomeIdle(_ crownSequencer: WKCrownSequencer?)
}
