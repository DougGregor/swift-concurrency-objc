
@available(tvOS 7.0, *)
enum SKActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linear
  case easeIn
  case easeOut
  case easeInEaseOut
}
typealias SKActionTimingFunction = (Float) -> Float
class SKAction : NSObject, NSCopying, NSSecureCoding {
  var duration: TimeInterval
  var timingMode: SKActionTimingMode
  @available(tvOS 9.0, *)
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversed() -> SKAction
}
extension SKAction {
  class func move(by delta: CGVector, duration: TimeInterval) -> SKAction
  class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, duration: TimeInterval) -> SKAction
  class func move(to location: CGPoint, duration: TimeInterval) -> SKAction
  class func moveTo(x: CGFloat, duration: TimeInterval) -> SKAction
  class func moveTo(y: CGFloat, duration: TimeInterval) -> SKAction
  class func rotate(byAngle radians: CGFloat, duration: TimeInterval) -> SKAction
  class func rotate(toAngle radians: CGFloat, duration: TimeInterval) -> SKAction
  class func rotate(toAngle radians: CGFloat, duration: TimeInterval, shortestUnitArc: Bool) -> SKAction
  class func resize(byWidth width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resize(toWidth width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resize(toWidth width: CGFloat, duration: TimeInterval) -> SKAction
  class func resize(toHeight height: CGFloat, duration: TimeInterval) -> SKAction
  class func scale(by scale: CGFloat, duration: TimeInterval) -> SKAction
  class func scaleX(by xScale: CGFloat, y yScale: CGFloat, duration: TimeInterval) -> SKAction
  class func scale(to scale: CGFloat, duration: TimeInterval) -> SKAction
  class func scaleX(to xScale: CGFloat, y yScale: CGFloat, duration: TimeInterval) -> SKAction
  class func scaleX(to scale: CGFloat, duration: TimeInterval) -> SKAction
  class func scaleY(to scale: CGFloat, duration: TimeInterval) -> SKAction
  @available(tvOS 10.0, *)
  class func scale(to size: CGSize, duration: TimeInterval) -> SKAction
  class func sequence(_ actions: [SKAction]) -> SKAction
  class func group(_ actions: [SKAction]) -> SKAction
  class func `repeat`(_ action: SKAction, count: Int) -> SKAction
  class func repeatForever(_ action: SKAction) -> SKAction
  class func fadeIn(withDuration duration: TimeInterval) -> SKAction
  class func fadeOut(withDuration duration: TimeInterval) -> SKAction
  class func fadeAlpha(by factor: CGFloat, duration: TimeInterval) -> SKAction
  class func fadeAlpha(to alpha: CGFloat, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func hide() -> SKAction
  @available(tvOS 9.0, *)
  class func unhide() -> SKAction
  @available(tvOS 7.1, *)
  class func setTexture(_ texture: SKTexture) -> SKAction
  @available(tvOS 9.0, *)
  class func setNormalTexture(_ texture: SKTexture) -> SKAction
  @available(tvOS 7.1, *)
  class func setTexture(_ texture: SKTexture, resize: Bool) -> SKAction
  @available(tvOS 9.0, *)
  class func setNormalTexture(_ texture: SKTexture, resize: Bool) -> SKAction
  class func animate(with textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func animate(withNormalTextures textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  class func animate(with textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  @available(tvOS 9.0, *)
  class func animate(withNormalTextures textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func playSoundFileNamed(_ soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorize(with color: UIColor, colorBlendFactor: CGFloat, duration: TimeInterval) -> SKAction
  class func colorize(withColorBlendFactor colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func falloff(to falloff: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func falloff(by falloff: Float, duration: TimeInterval) -> SKAction
  class func follow(_ path: CGPath, duration: TimeInterval) -> SKAction
  class func follow(_ path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration: TimeInterval) -> SKAction
  class func follow(_ path: CGPath, speed: CGFloat) -> SKAction
  class func follow(_ path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction
  class func speed(by speed: CGFloat, duration: TimeInterval) -> SKAction
  class func speed(to speed: CGFloat, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func reach(to position: CGPoint, rootNode root: SKNode, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func reach(to position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(tvOS 9.0, *)
  class func reach(to node: SKNode, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func reach(to node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(tvOS 9.0, *)
  class func strength(to strength: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func strength(by strength: Float, duration: TimeInterval) -> SKAction
  class func wait(forDuration duration: TimeInterval) -> SKAction
  class func wait(forDuration duration: TimeInterval, withRange durationRange: TimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func perform(_ selector: Selector, onTarget target: Any) -> SKAction
  class func run(_ block: @escaping () -> Void) -> SKAction
  class func run(_ block: @escaping () -> Void, queue: DispatchQueue) -> SKAction
  class func run(_ action: SKAction, onChildWithName name: String) -> SKAction
  class func customAction(withDuration duration: TimeInterval, actionBlock block: @escaping (SKNode, CGFloat) -> Void) -> SKAction
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, duration: TimeInterval)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: URL)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: URL, duration: TimeInterval)
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func changeCharge(to v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeCharge(by v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeMass(to v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeMass(by v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyForce(_ force: CGVector, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyForce(_ force: CGVector, at point: CGPoint, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyTorque(_ torque: CGFloat, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyImpulse(_ impulse: CGVector, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyImpulse(_ impulse: CGVector, at point: CGPoint, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyAngularImpulse(_ impulse: CGFloat, duration: TimeInterval) -> SKAction
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func play() -> SKAction
  @available(tvOS 9.0, *)
  class func pause() -> SKAction
  @available(tvOS 9.0, *)
  class func stop() -> SKAction
  @available(tvOS 9.0, *)
  class func changePlaybackRate(to v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changePlaybackRate(by v: Float, duration: TimeInterval) -> SKAction
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func changeVolume(to v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeVolume(by v: Float, duration: TimeInterval) -> SKAction
}
