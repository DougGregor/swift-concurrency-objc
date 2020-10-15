
@available(macOS 10.13, *)
enum SCNInteractionMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fly
  case orbitTurntable
  case orbitAngleMapping
  case orbitCenteredArcball
  case orbitArcball
  case pan
  case truck
}
@available(macOS 10.13, *)
protocol SCNCameraControllerDelegate : NSObjectProtocol {
  optional func cameraInertiaWillStart(for cameraController: SCNCameraController)
  optional func cameraInertiaDidEnd(for cameraController: SCNCameraController)
}
@available(macOS 10.13, *)
class SCNCameraController : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged SCNCameraControllerDelegate?
  var pointOfView: SCNNode?
  var interactionMode: SCNInteractionMode
  var target: SCNVector3
  var automaticTarget: Bool
  var worldUp: SCNVector3
  var inertiaEnabled: Bool
  var inertiaFriction: Float
  var isInertiaRunning: Bool { get }
  var minimumVerticalAngle: Float
  var maximumVerticalAngle: Float
  var minimumHorizontalAngle: Float
  var maximumHorizontalAngle: Float
  func translateInCameraSpaceBy(x deltaX: Float, y deltaY: Float, z deltaZ: Float)
  func frameNodes(_ nodes: [SCNNode])
  func rotateBy(x deltaX: Float, y deltaY: Float)
  func roll(by delta: Float, aroundScreenPoint point: CGPoint, viewport: CGSize)
  func dolly(by delta: Float, onScreenPoint point: CGPoint, viewport: CGSize)
  func rollAroundTarget(_ delta: Float)
  func dolly(toTarget delta: Float)
  func clearRoll()
  func stopInertia()
  func beginInteraction(_ location: CGPoint, withViewport viewport: CGSize)
  func continueInteraction(_ location: CGPoint, withViewport viewport: CGSize, sensitivity: CGFloat)
  func endInteraction(_ location: CGPoint, withViewport viewport: CGSize, velocity: CGPoint)
}
