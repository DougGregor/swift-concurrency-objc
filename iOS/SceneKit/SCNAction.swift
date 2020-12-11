
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : NSObjectProtocol {
  func runAction(_ action: SCNAction)
  func runAction(_ action: SCNAction, completionHandler block: (() -> Void)? = nil)
  func runAction(_ action: SCNAction) async
  func runAction(_ action: SCNAction, forKey key: String?)
  func runAction(_ action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)? = nil)
  func runAction(_ action: SCNAction, forKey key: String?) async
  var hasActions: Bool { get }
  func action(forKey key: String) -> SCNAction?
  func removeAction(forKey key: String)
  func removeAllActions()
  var actionKeys: [String] { get }
}
class SCNAction : NSObject, NSCopying, NSSecureCoding {
  var duration: TimeInterval
  var timingMode: SCNActionTimingMode
  var timingFunction: SCNActionTimingFunction?
  var speed: CGFloat
  func reversed() -> SCNAction
  class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration: TimeInterval) -> SCNAction
  class func move(by delta: SCNVector3, duration: TimeInterval) -> SCNAction
  class func move(to location: SCNVector3, duration: TimeInterval) -> SCNAction
  class func rotateBy(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval) -> SCNAction
  class func rotateTo(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval) -> SCNAction
  class func rotateTo(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval, usesShortestUnitArc shortestUnitArc: Bool) -> SCNAction
  class func rotate(by angle: CGFloat, around axis: SCNVector3, duration: TimeInterval) -> SCNAction
  class func rotate(toAxisAngle axisAngle: SCNVector4, duration: TimeInterval) -> SCNAction
  class func scale(by scale: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func scale(to scale: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func sequence(_ actions: [SCNAction]) -> SCNAction
  class func group(_ actions: [SCNAction]) -> SCNAction
  class func `repeat`(_ action: SCNAction, count: Int) -> SCNAction
  class func repeatForever(_ action: SCNAction) -> SCNAction
  class func fadeIn(duration sec: TimeInterval) -> SCNAction
  class func fadeOut(duration sec: TimeInterval) -> SCNAction
  class func fadeOpacity(by factor: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func fadeOpacity(to opacity: CGFloat, duration sec: TimeInterval) -> SCNAction
  @available(iOS 9.0, *)
  class func hide() -> SCNAction
  @available(iOS 9.0, *)
  class func unhide() -> SCNAction
  class func wait(duration sec: TimeInterval) -> SCNAction
  class func wait(duration sec: TimeInterval, withRange durationRange: TimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func run(_ block: @escaping (SCNNode) -> Void) -> SCNAction
  class func run(_ block: @escaping (SCNNode) -> Void, queue: DispatchQueue) -> SCNAction
  class func javaScriptAction(withScript script: String, duration seconds: TimeInterval) -> SCNAction
  class func customAction(duration seconds: TimeInterval, action block: @escaping (SCNNode, CGFloat) -> Void) -> SCNAction
  @available(iOS 9.0, *)
  class func playAudio(_ source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
}
