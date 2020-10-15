
@available(iOS 3.1, *)
class CADisplayLink : NSObject {
  /*not inherited*/ init(target: Any, selector sel: Selector)
  func add(to runloop: RunLoop, forMode mode: RunLoop.Mode)
  func remove(from runloop: RunLoop, forMode mode: RunLoop.Mode)
  func invalidate()
  var timestamp: CFTimeInterval { get }
  var duration: CFTimeInterval { get }
  @available(iOS 10.0, *)
  var targetTimestamp: CFTimeInterval { get }
  var isPaused: Bool
  @available(iOS, introduced: 3.1, deprecated: 10.0, message: "preferredFramesPerSecond")
  var frameInterval: Int
  @available(iOS 10.0, *)
  var preferredFramesPerSecond: Int
}
