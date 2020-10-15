
@available(tvOS 9.0, *)
class CADisplayLink : NSObject {
  /*not inherited*/ init(target: Any, selector sel: Selector)
  func add(to runloop: RunLoop, forMode mode: RunLoop.Mode)
  func remove(from runloop: RunLoop, forMode mode: RunLoop.Mode)
  func invalidate()
  var timestamp: CFTimeInterval { get }
  var duration: CFTimeInterval { get }
  @available(tvOS 10.0, *)
  var targetTimestamp: CFTimeInterval { get }
  var isPaused: Bool
  @available(tvOS, introduced: 9.0, deprecated: 10.0, message: "preferredFramesPerSecond")
  var frameInterval: Int
  @available(tvOS 10.0, *)
  var preferredFramesPerSecond: Int
}
