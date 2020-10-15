
extension SCNParticleSystem {
  struct ParticleProperty : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNParticleSystem.ParticleProperty {
  @available(macOS 10.10, *)
  static let position: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let angle: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let rotationAxis: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let velocity: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let angularVelocity: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let life: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let color: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let opacity: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let size: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let frame: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let frameRate: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let bounce: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let charge: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let friction: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let contactPoint: SCNParticleSystem.ParticleProperty
  @available(macOS 10.10, *)
  static let contactNormal: SCNParticleSystem.ParticleProperty
}
typealias SCNParticleEventBlock = (UnsafeMutablePointer<UnsafeMutableRawPointer>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<UInt32>?, Int) -> Void
typealias SCNParticleModifierBlock = (UnsafeMutablePointer<UnsafeMutableRawPointer>, UnsafeMutablePointer<Int>, Int, Int, Float) -> Void
@available(macOS 10.10, *)
enum SCNParticleSortingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case projectedDepth
  case distance
  case oldestFirst
  case youngestFirst
}
@available(macOS 10.10, *)
enum SCNParticleBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case additive
  case subtract
  case multiply
  case screen
  case alpha
  case replace
}
@available(macOS 10.10, *)
enum SCNParticleOrientationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case billboardScreenAligned
  case billboardViewAligned
  case free
  case billboardYAligned
}
@available(macOS 10.10, *)
enum SCNParticleBirthLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case surface
  case volume
  case vertex
}
@available(macOS 10.10, *)
enum SCNParticleBirthDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case constant
  case surfaceNormal
  case random
}
@available(macOS 10.10, *)
enum SCNParticleImageSequenceAnimationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `repeat`
  case clamp
  case autoReverse
}
@available(macOS 10.10, *)
enum SCNParticleInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case overLife
  case overDistance
  case overOtherProperty
}
@available(macOS 10.10, *)
enum SCNParticleModifierStage : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case preDynamics
  case postDynamics
  case preCollision
  case postCollision
}
@available(macOS 10.10, *)
enum SCNParticleEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case birth
  case death
  case collision
}
@available(macOS 10.10, *)
class SCNParticlePropertyController : NSObject, NSSecureCoding, NSCopying {
  convenience init(animation: CAAnimation)
  var animation: CAAnimation
  var inputMode: SCNParticleInputMode
  var inputScale: CGFloat
  var inputBias: CGFloat
  weak var inputOrigin: @sil_weak SCNNode?
  var inputProperty: SCNParticleSystem.ParticleProperty?
}
@available(macOS 10.10, *)
class SCNParticleSystem : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  convenience init?(named name: String, inDirectory directory: String?)
  var emissionDuration: CGFloat
  var emissionDurationVariation: CGFloat
  var idleDuration: CGFloat
  var idleDurationVariation: CGFloat
  var loops: Bool
  var birthRate: CGFloat
  var birthRateVariation: CGFloat
  var warmupDuration: CGFloat
  var emitterShape: SCNGeometry?
  var birthLocation: SCNParticleBirthLocation
  var birthDirection: SCNParticleBirthDirection
  var spreadingAngle: CGFloat
  var emittingDirection: SCNVector3
  @available(macOS 10.13, *)
  var orientationDirection: SCNVector3
  var acceleration: SCNVector3
  var isLocal: Bool
  var particleAngle: CGFloat
  var particleAngleVariation: CGFloat
  var particleVelocity: CGFloat
  var particleVelocityVariation: CGFloat
  var particleAngularVelocity: CGFloat
  var particleAngularVelocityVariation: CGFloat
  var particleLifeSpan: CGFloat
  var particleLifeSpanVariation: CGFloat
  var systemSpawnedOnDying: SCNParticleSystem?
  var systemSpawnedOnCollision: SCNParticleSystem?
  var systemSpawnedOnLiving: SCNParticleSystem?
  var particleImage: Any?
  var imageSequenceColumnCount: Int
  var imageSequenceRowCount: Int
  var imageSequenceInitialFrame: CGFloat
  var imageSequenceInitialFrameVariation: CGFloat
  var imageSequenceFrameRate: CGFloat
  var imageSequenceFrameRateVariation: CGFloat
  var imageSequenceAnimationMode: SCNParticleImageSequenceAnimationMode
  var particleColor: NSColor
  var particleColorVariation: SCNVector4
  var particleSize: CGFloat
  var particleSizeVariation: CGFloat
  @available(macOS 10.13, *)
  var particleIntensity: CGFloat
  @available(macOS 10.13, *)
  var particleIntensityVariation: CGFloat
  var blendMode: SCNParticleBlendMode
  var isBlackPassEnabled: Bool
  var orientationMode: SCNParticleOrientationMode
  var sortingMode: SCNParticleSortingMode
  var isLightingEnabled: Bool
  var isAffectedByGravity: Bool
  var isAffectedByPhysicsFields: Bool
  var particleDiesOnCollision: Bool
  var colliderNodes: [SCNNode]?
  var particleMass: CGFloat
  var particleMassVariation: CGFloat
  var particleBounce: CGFloat
  var particleBounceVariation: CGFloat
  var particleFriction: CGFloat
  var particleFrictionVariation: CGFloat
  var particleCharge: CGFloat
  var particleChargeVariation: CGFloat
  var dampingFactor: CGFloat
  var speedFactor: CGFloat
  var stretchFactor: CGFloat
  var fresnelExponent: CGFloat
  var propertyControllers: [SCNParticleSystem.ParticleProperty : SCNParticlePropertyController]?
  func reset()
  func handle(_ event: SCNParticleEvent, forProperties properties: [SCNParticleSystem.ParticleProperty], handler block: @escaping SCNParticleEventBlock)
  func addModifier(forProperties properties: [SCNParticleSystem.ParticleProperty], at stage: SCNParticleModifierStage, modifier block: @escaping SCNParticleModifierBlock)
  func removeModifiers(at stage: SCNParticleModifierStage)
  func removeAllModifiers()
}
extension SCNNode {
  @available(macOS 10.10, *)
  func addParticleSystem(_ system: SCNParticleSystem)
  @available(macOS 10.10, *)
  func removeAllParticleSystems()
  @available(macOS 10.10, *)
  func removeParticleSystem(_ system: SCNParticleSystem)
  @available(macOS 10.10, *)
  var particleSystems: [SCNParticleSystem]? { get }
}
extension SCNScene {
  @available(macOS 10.10, *)
  func addParticleSystem(_ system: SCNParticleSystem, transform: SCNMatrix4)
  @available(macOS 10.10, *)
  func removeAllParticleSystems()
  @available(macOS 10.10, *)
  func removeParticleSystem(_ system: SCNParticleSystem)
  @available(macOS 10.10, *)
  var particleSystems: [SCNParticleSystem]? { get }
}
