
@available(watchOS 2.0, *)
enum SKTransitionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case up
  case down
  case right
  case left
}
class SKTransition : NSObject, NSCopying {
  class func crossFade(withDuration sec: TimeInterval) -> SKTransition
  class func fade(withDuration sec: TimeInterval) -> SKTransition
  class func fade(with color: UIColor, duration sec: TimeInterval) -> SKTransition
  class func flipHorizontal(withDuration sec: TimeInterval) -> SKTransition
  class func flipVertical(withDuration sec: TimeInterval) -> SKTransition
  class func reveal(with direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func moveIn(with direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func push(with direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func doorsOpenHorizontal(withDuration sec: TimeInterval) -> SKTransition
  class func doorsOpenVertical(withDuration sec: TimeInterval) -> SKTransition
  class func doorsCloseHorizontal(withDuration sec: TimeInterval) -> SKTransition
  class func doorsCloseVertical(withDuration sec: TimeInterval) -> SKTransition
  class func doorway(withDuration sec: TimeInterval) -> SKTransition
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
}
