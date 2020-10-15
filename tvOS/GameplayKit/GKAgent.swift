
protocol GKAgentDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func agentWillUpdate(_ agent: GKAgent)
  @available(tvOS 9.0, *)
  @asyncHandler optional func agentDidUpdate(_ agent: GKAgent)
}
@available(tvOS 9.0, *)
class GKAgent : GKComponent, NSSecureCoding {
  weak var delegate: @sil_weak GKAgentDelegate?
  var behavior: GKBehavior?
  var mass: Float
  var radius: Float
  var speed: Float
  var maxAcceleration: Float
  var maxSpeed: Float
}
@available(tvOS 9.0, *)
class GKAgent2D : GKAgent, NSSecureCoding {
  var position: vector_float2
  var velocity: vector_float2 { get }
  var rotation: Float
}
@available(tvOS 9.0, *)
class GKAgent3D : GKAgent {
  var position: vector_float3
  var velocity: vector_float3 { get }
  var rightHanded: Bool
  var rotation: matrix_float3x3
}
