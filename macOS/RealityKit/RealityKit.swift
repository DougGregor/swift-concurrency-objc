
@available(macOS 10.15, iOS 13.0, *)
@objc class ARView : ARViewBase {
  var __services: __ServiceLocator { get }
  var scene: Scene { get }
  weak var __delegatePrivate: @sil_weak __ARViewDelegatePrivate?
  var __automaticallyInvokesStartTrigger: Bool
  var debugOptions: ARView.DebugOptions
  var environment: ARView.Environment
  var cameraTransform: Transform { get }
  var audioListener: Entity?
  var __environmentEntity: Entity!
  var __enableAutomaticFrameRate: Bool
  var __preferredFrameRate: Float
  func __customizeMetalLayer()
  var __renderGraphEmitter: __RERenderGraphEmitter!
  func __setWireframeMode(displayWireframe: Bool)
  var __forceLocalizedProbes: Bool
  var __parallaxBackgroundProbe: Bool
  var __targetIdentifier: UInt { get }
  func __didInitializeEngine()
  var __disableComposition: Bool
  var __nonARKitDevices: Bool
  func __handleTapAtPoint(point: CGPoint)
  struct DebugOptions : OptionSet {
    static let none: ARView.DebugOptions
    static let showPhysics: ARView.DebugOptions
    static let showStatistics: ARView.DebugOptions
  }
  var __statisticsOptions: ARView.__StatisticsOptions
  var __disableStatisticsRendering: Bool
  func __getStatisticsStringForSingleOption(statisticOption: ARView.__StatisticsOptions) -> String
  struct __StatisticsOptions : OptionSet {
    static let frameTimeStatistics: ARView.__StatisticsOptions
    static let animationStatistics: ARView.__StatisticsOptions
    static let assetPipelineStatistics: ARView.__StatisticsOptions
    static let audioStatistics: ARView.__StatisticsOptions
    static let ecsStatistics: ARView.__StatisticsOptions
    static let meshStatistics: ARView.__StatisticsOptions
    static let networkStatistics: ARView.__StatisticsOptions
    static let physicsStatistics: ARView.__StatisticsOptions
    static let renderingStatistics: ARView.__StatisticsOptions
    static let memoryStatistics: ARView.__StatisticsOptions
    static let thermalStatistics: ARView.__StatisticsOptions
    static let sceneUnderstandingStatistics: ARView.__StatisticsOptions
  }
  func __setProfilerUpdateInterval(newInterval: Float)
  func __frameTime() -> Float
  typealias Image = NSImage
  func snapshot(saveToHDR: Bool, completion: @escaping (ARView.Image?) -> Void)
  func __startAudioEngine()
  func __stopAudioEngine()
}

extension ARView {
}

extension ARView {
  struct Environment {
    typealias Color = NSColor
    struct Background {
      static func skybox(_ resource: EnvironmentResource) -> ARView.Environment.Background
      static func color(_ color: ARView.Environment.Color) -> ARView.Environment.Background
    }
    struct ImageBasedLight {
      var resource: EnvironmentResource?
      var intensityExponent: Float
    }
    enum Reverb {
      enum Preset {
        case smallRoom
        case mediumRoom
        case largeRoom
        case mediumHall
        case largeHall
        case cathedral
      }
      case noReverb
      case preset(ARView.Environment.Reverb.Preset)
      static var automatic: ARView.Environment.Reverb { get }
    }
    var background: ARView.Environment.Background
    var lighting: ARView.Environment.ImageBasedLight
    var reverb: ARView.Environment.Reverb
    init(background: ARView.Environment.Background, lighting: ARView.Environment.ImageBasedLight, reverb: ARView.Environment.Reverb)
  }
}

extension ARView {
  func project(_ point: SIMD3<Float>) -> CGPoint?
  func unproject(_ point: CGPoint, viewport: CGRect) -> SIMD3<Float>?
  func unproject(_ point: CGPoint, ontoPlane planeTransform: float4x4) -> SIMD3<Float>?
  @available(macOS 11.0, iOS 14.0, *)
  func unproject(_ point: CGPoint, ontoPlane planeTransform: float4x4, relativeToCamera: Bool) -> SIMD3<Float>?
  func ray(through screenPoint: CGPoint) -> (origin: SIMD3<Float>, direction: SIMD3<Float>)?
  func hitTest(_ point: CGPoint, query: CollisionCastQueryType = .all, mask: CollisionGroup = .all) -> [CollisionCastHit]
  func entity(at point: CGPoint) -> Entity?
  func entities(at point: CGPoint) -> [Entity]
}

extension ARView {
  var physicsOrigin: Entity?
}

extension ARView.Environment.Reverb.Preset : Equatable {
}

extension ARView.Environment.Reverb.Preset : Hashable {
}

@available(macOS 10.15, iOS 13.0, *)
typealias ARViewBase = NSView

@available(macOS 10.15, iOS 13.0, *)
class AnchorEntity : Entity, HasAnchoring {
  init(_ target: AnchoringComponent.Target)
  convenience init(world position: SIMD3<Float>)
  convenience init(world transform: float4x4)
}

@available(macOS 10.15, iOS 13.0, *)
struct AnchoringComponent : Component, Equatable {
  enum Target : Hashable {
    case camera
    case world(transform: float4x4)
  }
  let target: AnchoringComponent.Target
  init(_ target: AnchoringComponent.Target)
}

@available(macOS 10.15, iOS 13.0, *)
enum AnimationEvents {
  struct PlaybackCompleted : Event {
    let playbackController: AnimationPlaybackController
  }
  struct PlaybackLooped : Event {
    let playbackController: AnimationPlaybackController
  }
  struct PlaybackTerminated : Event {
    let playbackController: AnimationPlaybackController
  }
}

@available(macOS 10.15, iOS 13.0, *)
class AnimationPlaybackController : Hashable {
  var __identifier: __AnimationPlaybackTokenRef { get }
  weak var entity: @sil_weak Entity? { get }
  var isPaused: Bool { get }
  var isComplete: Bool { get }
  func pause()
  func resume()
  func stop()
}

@available(macOS 10.15, iOS 13.0, *)
class AnimationResource : Resource {
  var __coreAsset: __AssetRef { get }
  final let name: String?
}

extension AnimationResource {
  func `repeat`(duration: TimeInterval = .infinity) -> AnimationResource
  func `repeat`(count: Int) -> AnimationResource
}

@available(macOS 10.15, iOS 13.0, *)
struct AnimationTimingFunction : Hashable {
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  enum __Mode {
    case easeIn
    case easeOut
    case easeInOut
  }
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __smooth(_ mode: AnimationTimingFunction.__Mode = .easeInOut) -> AnimationTimingFunction
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __back(_ mode: AnimationTimingFunction.__Mode = .easeIn, amplitude: Float = 1) -> AnimationTimingFunction
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __bounce(_ mode: AnimationTimingFunction.__Mode = .easeOut, bounces: Int = 3, bounciness: Float = 2) -> AnimationTimingFunction
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __circle(_ mode: AnimationTimingFunction.__Mode = .easeIn) -> AnimationTimingFunction
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __exponential(_ mode: AnimationTimingFunction.__Mode = .easeIn, exponent: Float = 2) -> AnimationTimingFunction
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __logarithmic(_ mode: AnimationTimingFunction.__Mode = .easeIn, base: Float = 2) -> AnimationTimingFunction
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __power(_ mode: AnimationTimingFunction.__Mode = .easeIn, power: Float = 2) -> AnimationTimingFunction
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __sine(_ mode: AnimationTimingFunction.__Mode = .easeIn) -> AnimationTimingFunction
  @available(*, deprecated, message: "Renamed to `elastic`.")
  static func __spring(_ mode: AnimationTimingFunction.__Mode = .easeOut, oscillations: Int = 2, springiness: Float = 2) -> AnimationTimingFunction
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  static func __elastic(_ mode: AnimationTimingFunction.__Mode = .easeOut, oscillations: Int = 2, springiness: Float = 2) -> AnimationTimingFunction
  static var `default`: AnimationTimingFunction { get }
  static var linear: AnimationTimingFunction { get }
  static var easeIn: AnimationTimingFunction { get }
  static var easeOut: AnimationTimingFunction { get }
  static var easeInOut: AnimationTimingFunction { get }
  static func cubicBezier(controlPoint1: SIMD2<Float>, controlPoint2: SIMD2<Float>) -> AnimationTimingFunction
}

@available(macOS 10.15, iOS 13.0, *)
@available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
extension AnimationTimingFunction.__Mode : Equatable {
}

@available(macOS 10.15, iOS 13.0, *)
@available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
extension AnimationTimingFunction.__Mode : Hashable {
}

@available(macOS 10.15, iOS 13.0, *)
enum AudioEvents {
  struct PlaybackCompleted : Event {
    var playbackController: AudioPlaybackController
  }
}

@available(macOS 10.15, iOS 13.0, *)
class AudioFileResource : AudioResource {
  enum LoadingStrategy {
    case stream
    case preload
  }
  var loadingStrategy: AudioFileResource.LoadingStrategy
  var shouldLoop: Bool
  var __duration: TimeInterval { get }
}

extension AudioFileResource {
  static func load(named name: String, in bundle: Bundle? = nil, inputMode: AudioResource.InputMode = .spatial, loadingStrategy: AudioFileResource.LoadingStrategy = .preload, shouldLoop: Bool = false) throws -> AudioFileResource
  static func load(contentsOf url: URL, withName resourceName: String? = nil, inputMode: AudioResource.InputMode = .spatial, loadingStrategy: AudioFileResource.LoadingStrategy = .preload, shouldLoop: Bool = false) throws -> AudioFileResource
}

extension AudioFileResource {
  static func loadAsync(named name: String, in bundle: Bundle? = nil, inputMode: AudioResource.InputMode = .spatial, loadingStrategy: AudioFileResource.LoadingStrategy = .preload, shouldLoop: Bool = false) -> LoadRequest<AudioFileResource>
  static func loadAsync(contentsOf url: URL, withName resourceName: String? = nil, inputMode: AudioResource.InputMode = .spatial, loadingStrategy: AudioFileResource.LoadingStrategy = .preload, shouldLoop: Bool = false) -> LoadRequest<AudioFileResource>
}

extension AudioFileResource.LoadingStrategy : Hashable {
}

@available(macOS 10.15, iOS 13.0, *)
class AudioPlaybackController {
  typealias Decibel = Double
  weak var entity: @sil_weak Entity? { get }
  final let resource: AudioResource
  var completionHandler: (() -> Void)?
}

extension AudioPlaybackController {
  var speed: Double
  var gain: AudioPlaybackController.Decibel
  func fade(to gain: AudioPlaybackController.Decibel, duration: TimeInterval)
  var reverbSendLevel: AudioPlaybackController.Decibel
}

extension AudioPlaybackController {
  var isPlaying: Bool { get }
  func play()
  func pause()
  func stop()
}

extension AudioPlaybackController {
  var __playbackPosition: TimeInterval
}

extension AudioPlaybackController : Identifiable {
}

@available(macOS 10.15, iOS 13.0, *)
class AudioResource : Resource {
  enum InputMode {
    case nonSpatial
    case spatial
    case ambient
  }
  var inputMode: AudioResource.InputMode
}

@available(macOS 10.15, iOS 13.0, *)
extension AudioResource.InputMode : Equatable {
}

@available(macOS 10.15, iOS 13.0, *)
extension AudioResource.InputMode : Hashable {
}

@available(macOS 10.15, iOS 13.0, *)
struct BoundingBox : Hashable {
  static let empty: BoundingBox
  var min: SIMD3<Float>
  var max: SIMD3<Float>
  init()
  init(min: SIMD3<Float>, max: SIMD3<Float>)
}

extension BoundingBox {
  var center: SIMD3<Float> { get }
  var extents: SIMD3<Float> { get }
  var boundingRadius: Float { get }
  var isEmpty: Bool { get }
  func union(_ point: SIMD3<Float>) -> BoundingBox
  mutating func formUnion(_ point: SIMD3<Float>)
  func union(_ other: BoundingBox) -> BoundingBox
  mutating func formUnion(_ other: BoundingBox)
  func contains(_ point: SIMD3<Float>) -> Bool
  func contains(_ boundingBox: BoundingBox) -> Bool
  func intersects(_ boundingBox: BoundingBox) -> Bool
  func transformed(by transform: float4x4) -> BoundingBox
  mutating func transform(by transform: float4x4)
  func distanceSquared(toPoint: SIMD3<Float>) -> Float
}

@available(macOS 10.15, iOS 13.0, *)
struct CollisionCastHit : Equatable {
  var entity: Entity { get }
  var position: SIMD3<Float> { get }
  var normal: SIMD3<Float> { get }
  var distance: Float { get }
}

@available(macOS 10.15, iOS 13.0, *)
enum CollisionCastQueryType : Hashable {
  case nearest
  case all
  case any
}

@available(macOS 10.15, iOS 13.0, *)
struct CollisionComponent : Component, Equatable {
  enum Mode {
    case `default`
    case trigger
  }
  var shapes: [ShapeResource]
  var mode: CollisionComponent.Mode
  var filter: CollisionFilter
  init(shapes: [ShapeResource], mode: CollisionComponent.Mode = .default, filter: CollisionFilter = .default)
}

@available(macOS 10.15, iOS 13.0, *)
extension CollisionComponent.Mode : Equatable {
}

@available(macOS 10.15, iOS 13.0, *)
extension CollisionComponent.Mode : Hashable {
}

@available(macOS 10.15, iOS 13.0, *)
enum CollisionEvents {
  struct Began : Event {
    let entityA: Entity
    let entityB: Entity
    let position: SIMD3<Float>
    let impulse: Float
  }
  struct Updated : Event {
    let entityA: Entity
    let entityB: Entity
    let position: SIMD3<Float>
    let impulse: Float
  }
  struct Ended : Event {
    let entityA: Entity
    let entityB: Entity
  }
}

@available(macOS 10.15, iOS 13.0, *)
struct CollisionFilter : Equatable {
  static let `default`: CollisionFilter
  static let sensor: CollisionFilter
  var group: CollisionGroup
  var mask: CollisionGroup
  init(group: CollisionGroup, mask: CollisionGroup)
}

@available(macOS 10.15, iOS 13.0, *)
struct CollisionGroup : OptionSet {
  static let `default`: CollisionGroup
  @available(iOS 13.4, *)
  static let sceneUnderstanding: CollisionGroup
  static let all: CollisionGroup
}

@available(macOS 10.15, iOS 13.0, *)
protocol Component {
  static var __size: Int { get }
  static func __load(from buffer: UnsafeRawPointer, offset: Int) -> Component
  @available(macOS 11.0, iOS 14.0, *)
  static func __store(attribute: Component, to buffer: UnsafeMutableRawPointer, offset: Int, deinitialize: Bool)
  @available(macOS, deprecated: 11.0, message: "Use __store(attribute:to:offset:deinitialize:) instead.")
  @available(iOS, deprecated: 14.0, message: "Use __store(attribute:to:offset:deinitialize:) instead.")
  static func __store(attribute: Component, to buffer: UnsafeMutableRawPointer, offset: Int)
  static func __free(to buffer: UnsafeMutableRawPointer, offset: Int)
  static func __fromCore(_ coreComponent: __ComponentRef) -> Self
  func __toCore(_ coreComponent: __ComponentRef)
  static var __coreComponentType: __ComponentTypeRef { get }
  static func __addIntrospectionData(_ builder: OpaquePointer?)
}

extension Component {
  static var __size: Int { get }
  static func __load(from buffer: UnsafeRawPointer, offset: Int) -> Component
  static func __store(attribute: Component, to buffer: UnsafeMutableRawPointer, offset: Int, deinitialize: Bool)
  @available(macOS, deprecated: 11.0, message: "Use __store(attribute:to:offset:deinitialize:) instead.")
  @available(iOS, deprecated: 14.0, message: "Use __store(attribute:to:offset:deinitialize:) instead.")
  static func __store(attribute: Component, to buffer: UnsafeMutableRawPointer, offset: Int)
  static func __free(to buffer: UnsafeMutableRawPointer, offset: Int)
  static func __fromCore(_ coreComponent: __ComponentRef) -> Self
  func __toCore(_ coreComponent: __ComponentRef)
  static var __coreComponentType: __ComponentTypeRef { get }
  static func __addIntrospectionData(_ builder: OpaquePointer?)
  static func registerComponent()
  static func __registerComponent() -> OpaquePointer?
}

@available(macOS 10.15, iOS 13.0, *)
class DirectionalLight : Entity, HasDirectionalLight {
}

@available(macOS 10.15, iOS 13.0, *)
struct DirectionalLightComponent : Component, Equatable {
  typealias Color = NSColor
  struct Shadow : Component, Equatable {
    var depthBias: Float
    var maximumDistance: Float
    init()
    init(maximumDistance: Float = 5.0, depthBias: Float = 1.0)
  }
  var color: NSColor
  var intensity: Float
  var isRealWorldProxy: Bool
  init(color: DirectionalLightComponent.Color = .white, intensity: Float = 2145.7078, isRealWorldProxy: Bool = false)
}

@available(macOS 10.15, iOS 13.0, *)
class Entity : HasHierarchy, HasSynchronization, HasTransform {
  var __coreEntity: __EntityRef { get }
  var components: Entity.ComponentSet
  var scene: Scene? { get }
  var name: String
  var __boundingBox: __AABBRef { get }
  var isActive: Bool { get }
  var isAnchored: Bool { get }
  var isEnabled: Bool
  var isEnabledInHierarchy: Bool { get }
  static var __disableUpdateInteractionEntities: [Entity]?
  required init()
  @usableFromInline
  init(_coreEntity: __EntityRef)
  static func __testInit() -> Entity
  func didClone(from source: Entity)
  func findEntity(named name: String) -> Entity?
}

extension Entity {
  var __interactions: [__RKEntityInteractionSpecification]
}

extension Entity {
  var __anchoringType: __REAnchoringType?
}

extension Entity {
  var __tags: [String]
}

extension Entity {
  @discardableResult
  func playAudio(_ resource: AudioResource) -> AudioPlaybackController
  func prepareAudio(_ resource: AudioResource) -> AudioPlaybackController
  func stopAllAudio()
}

extension Entity {
  func __remapUUIDs(entityIdentifierMapping: @escaping (UUID) -> UUID, interactionIdentifierMapping: @escaping (UUID) -> UUID)
}

extension Entity : CustomDebugStringConvertible {
}

extension Entity {
  var __debugTree: [(String, Int)] { get }
}

extension Entity {
  var __interactionIdentifier: UUID?
}

extension Entity {
  var availableAnimations: [AnimationResource] { get }
}

@available(macOS 10.15, iOS 13.0, *)
extension Entity {
  func __setLoadContext(_ loadContext: __SceneResourceLoadResultLoadContext?)
  func __fetchLoadContext() -> __SceneResourceLoadResultLoadContext?
  func __setSceneResourceCacheEntry(_ sceneResourceCache: __SceneResourceCache.Entry?)
  func __fetchSceneResourceCacheEntry() -> __SceneResourceCache.Entry?
}

extension Entity {
  struct ChildCollection : Collection {
    func append(_ child: Entity, preservingWorldTransform: Bool = false)
    func append(contentsOf array: [Entity], preservingWorldTransforms: Bool = false)
    func append<S>(contentsOf sequence: S, preservingWorldTransforms: Bool = false) where S : Sequence, S.Element : Entity
    func remove(_ child: Entity, preservingWorldTransform: Bool = false)
    func remove(at index: Int, preservingWorldTransform: Bool = false)
    func removeAll(keepCapacity: Bool = false, preservingWorldTransforms: Bool = false)
    func removeAll(preservingWorldTransforms: Bool = false)
    func replaceAll(_ children: [Entity], preservingWorldTransforms: Bool = false)
    func replaceAll<S>(_ children: S, preservingWorldTransforms: Bool = false) where S : Sequence, S.Element : Entity
  }
}

extension Entity {
  func generateCollisionShapes(recursive: Bool)
}

extension Entity {
  var anchor: HasAnchoring? { get }
}

extension Entity {
  struct ComponentSet {
    subscript<T>(componentType: T.Type) -> T? where T : Component
    subscript(componentType: Component.Type) -> Component?
    func set<T>(_ component: T) where T : Component
    func set(_ components: [Component])
    func has(_ componentType: Component.Type) -> Bool
    func remove(_ componentType: Component.Type)
    func removeAll()
    var count: Int { get }
  }
}

extension Entity : Hashable {
}

extension Entity : Identifiable {
}

extension Entity {
  static func __fromCore(_ coreEntity: __EntityRef) -> Entity
}

extension Entity {
  func clone(recursive: Bool) -> Self
  func __clone(recursive: Bool, remapInteractionIdentifiers: Bool) -> Self
}

extension Entity : EventSource {
}

@available(macOS 11.0, iOS 14.0, *)
extension Entity {
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityDescription: String?
}

@available(macOS 10.15.4, iOS 13.4, *)
extension Entity {
  var __isAccessibilityRoot: Bool
  var __isAccessibilityEnabled: Bool
  var __accessibilityLabel: String?
  var __accessibilityDescription: String?
}

extension Entity {
  static func load(named name: String, in bundle: Bundle? = nil) throws -> Entity
  static func loadAsync(named name: String, in bundle: Bundle? = nil) -> LoadRequest<Entity>
  static func __loadAsync(named name: String, in bundle: Bundle?, generateDecimatedMesh: Bool) -> LoadRequest<Entity>
  static func load(contentsOf url: URL, withName resourceName: String? = nil) throws -> Entity
  struct __LoadOptions {
    var downsamplingStrategy: __DownsamplingStrategy?
    var realityPerformanceReport: __REArchivalStats?
    init(downsamplingStrategy: __DownsamplingStrategy? = nil, realityPerformanceReport: __REArchivalStats? = nil)
  }
  @available(*, deprecated, message: "deprecated; use __load(contentsOf:withName:loadOptions:) instead")
  static func __load(contentsOf url: URL, withName resourceName: String?, downsamplingStrategy: __DownsamplingStrategy?) throws -> Entity
  static func __load(contentsOf url: URL, withName resourceName: String?, loadOptions: Entity.__LoadOptions) throws -> Entity
  static func loadAsync(contentsOf url: URL, withName resourceName: String? = nil) -> LoadRequest<Entity>
  static func __loadAsync(contentsOf url: URL, withName resourceName: String? = nil, generateDecimatedMesh: Bool = false) -> LoadRequest<Entity>
  static func loadAnchor(named name: String, in bundle: Bundle? = nil) throws -> AnchorEntity
  static func loadAnchorAsync(named name: String, in bundle: Bundle? = nil) -> LoadRequest<AnchorEntity>
  static func loadAnchor(contentsOf url: URL, withName resourceName: String? = nil) throws -> AnchorEntity
  static func __loadAnchor(contentsOf url: URL, withName resourceName: String? = nil, downsamplingStrategy: __DownsamplingStrategy?) throws -> AnchorEntity
  static func loadAnchorAsync(contentsOf url: URL, withName resourceName: String? = nil) -> LoadRequest<AnchorEntity>
  static func __loadAnchorAsync(contentsOf url: URL, withName resourceName: String? = nil, downsamplingStrategy: __DownsamplingStrategy?) -> LoadRequest<AnchorEntity>
  static func loadModel(named name: String, in bundle: Bundle? = nil) throws -> ModelEntity
  static func loadModelAsync(named name: String, in bundle: Bundle? = nil) -> LoadRequest<ModelEntity>
  static func __loadModelAsync(named name: String, in bundle: Bundle? = nil, generateDecimatedMesh: Bool = false) -> LoadRequest<ModelEntity>
  static func loadModel(contentsOf url: URL, withName resourceName: String? = nil) throws -> ModelEntity
  static func loadModelAsync(contentsOf url: URL, withName resourceName: String? = nil) -> LoadRequest<ModelEntity>
  static func __loadModelAsync(contentsOf url: URL, withName resourceName: String?, generateDecimatedMesh: Bool) -> LoadRequest<ModelEntity>
  static func __loadAllAsync(contentsOf url: URL) -> LoadRequest<[Entity]>
  static func __loadAllAsync(contentsOf url: URL, downsamplingStrategy: __DownsamplingStrategy?) -> LoadRequest<[Entity]>
  static func __remapIdentifiersAndInteractions(root: Entity)
}

@available(macOS 10.15, iOS 13.0, *)
extension Entity {
  enum __PackageTranslationError : Error {
    case noScenes(message: String)
    case noScenesMetadata(message: String)
    case failedToImportUSD(message: String, url: URL)
    case invalidDictionary(message: String, invalidDictionary: [String : Any]?)
  }
  static func __packageToRealityFile(packageURL: URL, completion: @escaping (Result<URL, Error>) -> Void)
}

extension Entity {
  @discardableResult
  func playAnimation(named animationName: String, transitionDuration: TimeInterval = 0, startsPaused: Bool = false, recursive: Bool = true) -> AnimationPlaybackController
  @discardableResult
  func playAnimation(_ animation: AnimationResource, transitionDuration: TimeInterval = 0, startsPaused: Bool = false) -> AnimationPlaybackController
  func stopAllAnimations(recursive: Bool = true)
}

extension Entity.ChildCollection : CustomStringConvertible {
}

extension Entity.ChildCollection {
  struct IndexingIterator<Elements> where Elements : Collection {
    init(_elements: Elements)
    init(_elements: Elements, _position: Elements.Index)
  }
}

extension Entity.ChildCollection.IndexingIterator : IteratorProtocol, Sequence {
  typealias SubSequence = AnySequence<Entity.ChildCollection.IndexingIterator<Elements>.Element>
}

@available(macOS 10.15, iOS 13.0, *)
class EnvironmentResource : Resource {
  static let __compiledExtension: String
  static func load(named name: String, in bundle: Bundle? = nil) throws -> EnvironmentResource
  static func loadAsync(named name: String, in bundle: Bundle? = nil) -> LoadRequest<EnvironmentResource>
  static func __load(contentsOf url: URL, withName resourceName: String? = nil) throws -> EnvironmentResource
  static func __fromAssets(_ coreIBLAsset: __AssetRef?, _ coreSkyboxAsset: __AssetRef?) -> EnvironmentResource
  static func __exportCompiledResource(contentsOf inURL: URL, to outURL: URL) throws
}

@available(macOS 10.15, iOS 13.0, *)
protocol Event {
}

@available(macOS 10.15, iOS 13.0, *)
protocol EventSource {
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasAnchoring : Entity {
}

extension HasAnchoring {
  var anchoring: AnchoringComponent
  var anchorIdentifier: UUID? { get }
  func reanchor(_ target: AnchoringComponent.Target, preservingWorldTransform: Bool = true)
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasCollision : HasTransform {
}

extension HasCollision {
  var collision: CollisionComponent?
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasDirectionalLight : HasTransform {
}

extension HasDirectionalLight {
  var light: DirectionalLightComponent
  var shadow: DirectionalLightComponent.Shadow?
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasHierarchy : Entity {
}

extension HasHierarchy {
  var parent: Entity? { get }
  func setParent(_ parent: Entity?, preservingWorldTransform: Bool = false)
  var children: Entity.ChildCollection
  func addChild(_ entity: Entity, preservingWorldTransform: Bool = false)
  func removeChild(_ entity: Entity, preservingWorldTransform: Bool = false)
  func removeFromParent(preservingWorldTransform: Bool = false)
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasModel : HasTransform {
}

extension HasModel {
  var model: ModelComponent?
  @available(macOS 11.0, iOS 14.0, *)
  var modelDebugOptions: ModelDebugOptionsComponent?
  @available(macOS, deprecated: 11.0, renamed: "modelDebugOptions")
  @available(iOS, deprecated: 14.0, renamed: "modelDebugOptions")
  var debugModel: ModelDebugOptionsComponent?
}

extension HasModel {
  var jointNames: [String] { get }
  var jointTransforms: [Transform]
}

extension HasModel {
  func __generateCollisionShape()
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasPerspectiveCamera : HasTransform {
}

extension HasPerspectiveCamera {
  var camera: PerspectiveCameraComponent
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasPhysics : HasPhysicsBody, HasPhysicsMotion {
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasPhysicsBody : HasCollision {
}

extension HasPhysicsBody {
  func addForce(_ force: SIMD3<Float>, relativeTo referenceEntity: Entity?)
  func addForce(_ force: SIMD3<Float>, at position: SIMD3<Float>, relativeTo referenceEntity: Entity?)
  func addTorque(_ torque: SIMD3<Float>, relativeTo referenceEntity: Entity?)
  func clearForcesAndTorques()
  func applyLinearImpulse(_ impulse: SIMD3<Float>, relativeTo referenceEntity: Entity?)
  func applyAngularImpulse(_ impulse: SIMD3<Float>, relativeTo referenceEntity: Entity?)
  func applyImpulse(_ impulse: SIMD3<Float>, at position: SIMD3<Float>, relativeTo referenceEntity: Entity?)
}

extension HasPhysicsBody {
  var physicsBody: PhysicsBodyComponent?
}

extension HasPhysicsBody {
  @available(*, deprecated, message: "Will be hidden in RealityKit 2019.")
  func resetPhysicsTransform(_ transform: Transform, recursive: Bool = true)
  func resetPhysicsTransform(recursive: Bool = true)
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasPhysicsMotion : Entity {
}

extension HasPhysicsMotion {
  var physicsMotion: PhysicsMotionComponent?
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasPointLight : HasTransform {
}

extension HasPointLight {
  var light: PointLightComponent
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasSpotLight : HasTransform {
}

extension HasSpotLight {
  var light: SpotLightComponent
  var shadow: SpotLightComponent.Shadow?
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasSynchronization : Entity {
}

extension HasSynchronization {
  var synchronization: SynchronizationComponent?
  var isOwner: Bool { get }
  func requestOwnership(timeout: TimeInterval = 15, _ callback: @escaping (SynchronizationComponent.OwnershipTransferCompletionResult) -> Void)
  func withUnsynchronized(_ changes: () -> Void)
}

@available(macOS 10.15, iOS 13.0, *)
protocol HasTransform : Entity {
}

extension HasTransform {
  var transform: Transform
  var scale: SIMD3<Float>
  func scale(relativeTo referenceEntity: Entity?) -> SIMD3<Float>
  func setScale(_ scale: SIMD3<Float>, relativeTo referenceEntity: Entity?)
  var position: SIMD3<Float>
  func position(relativeTo referenceEntity: Entity?) -> SIMD3<Float>
  func setPosition(_ position: SIMD3<Float>, relativeTo referenceEntity: Entity?)
  var orientation: simd_quatf
  func orientation(relativeTo referenceEntity: Entity?) -> simd_quatf
  func setOrientation(_ orientation: simd_quatf, relativeTo referenceEntity: Entity?)
  func transformMatrix(relativeTo referenceEntity: Entity?) -> float4x4
  func setTransformMatrix(_ transform: float4x4, relativeTo referenceEntity: Entity?)
  func convert(position: SIMD3<Float>, from referenceEntity: Entity?) -> SIMD3<Float>
  func convert(direction: SIMD3<Float>, from referenceEntity: Entity?) -> SIMD3<Float>
  func convert(normal: SIMD3<Float>, from referenceEntity: Entity?) -> SIMD3<Float>
  func convert(transform: Transform, from referenceEntity: Entity?) -> Transform
  func convert(position: SIMD3<Float>, to referenceEntity: Entity?) -> SIMD3<Float>
  func convert(direction: SIMD3<Float>, to referenceEntity: Entity?) -> SIMD3<Float>
  func convert(normal: SIMD3<Float>, to referenceEntity: Entity?) -> SIMD3<Float>
  func convert(transform: Transform, to referenceEntity: Entity?) -> Transform
  func look(at target: SIMD3<Float>, from position: SIMD3<Float>, upVector: SIMD3<Float> = SIMD3<Float>(0, 1, 0), relativeTo referenceEntity: Entity?)
  func move(to transform: Transform, relativeTo referenceEntity: Entity?)
  func move(to transform: float4x4, relativeTo referenceEntity: Entity?)
  @discardableResult
  func move(to target: Transform, relativeTo referenceEntity: Entity?, duration: TimeInterval, timingFunction: AnimationTimingFunction = .default) -> AnimationPlaybackController
  @discardableResult
  func move(to target: float4x4, relativeTo referenceEntity: Entity?, duration: TimeInterval, timingFunction: AnimationTimingFunction = .default) -> AnimationPlaybackController
  func visualBounds(recursive: Bool = true, relativeTo referenceEntity: Entity?, excludeInactive: Bool = false) -> BoundingBox
}

@available(macOS 10.15, iOS 13.0, *)
class LoadRequest<Output> : Publisher {
  var result: Result<Output, Error>? { get }
  func subscribe<S>(_ subscriber: S) where Output == S.Input, S : Subscriber, S.Failure == Error
}

@available(macOS 10.15, iOS 13.0, *)
protocol Material {
  typealias Color = NSColor
  var __resource: __MaterialResource { get }
  var __parameterBlock: __RKMaterialParameterBlock { get set }
}

@available(macOS 10.15, iOS 13.0, *)
enum MaterialColorParameter : _ExpressibleByColorLiteral, Hashable {
  case color(NSColor)
  case texture(TextureResource)
}

@available(macOS 10.15, iOS 13.0, *)
enum MaterialScalarParameter : ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral, Hashable {
  case float(Float)
  case texture(TextureResource)
}

@available(macOS 10.15, iOS 13.0, *)
class MeshResource : Resource {
  var expectedMaterialCount: Int { get }
  var bounds: BoundingBox { get }
  static func __load(named name: String, in bundle: Bundle? = nil) throws -> MeshResource
  static func generateBox(size: Float, cornerRadius: Float = 0) -> MeshResource
  static func generateBox(size: SIMD3<Float>, cornerRadius: Float = 0) -> MeshResource
  static func generateBox(width: Float, height: Float, depth: Float, cornerRadius: Float = 0, splitFaces: Bool = false) -> MeshResource
  static func generatePlane(width: Float, height: Float, cornerRadius: Float = 0) -> MeshResource
  static func generatePlane(width: Float, depth: Float, cornerRadius: Float = 0) -> MeshResource
  static func __generatePlane(width: Float = 1, widthSegmentCount: UInt = 1, depth: Float = 1, depthSegmentCount: UInt = 1, cornerRadius: Float = 0, cornerSegmentCount: UInt = 0, addUVs: Bool = true, addNormals: Bool = true) -> MeshResource
  static func __generateOccluderPlane(width: Float, depth: Float, cornerRadius: Float = 0) -> MeshResource
  static func generateSphere(radius: Float) -> MeshResource
  static func generateText(_ string: String, extrusionDepth: Float = 0.25, font: MeshResource.Font = .systemFont(ofSize: MeshResource.Font.systemFontSize), containerFrame: CGRect = CGRect.zero, alignment: CTTextAlignment = .left, lineBreakMode: CTLineBreakMode = .byTruncatingTail) -> MeshResource
  static func __generateText(_ string: String, extrusionDepth: Float = 0.25, font: MeshResource.Font = .systemFont(ofSize: MeshResource.Font.systemFontSize), containerFrame: CGRect = CGRect.zero, alignment: CTTextAlignment = .left, lineBreakMode: CTLineBreakMode = .byTruncatingTail, segmentCount: UInt8 = 6) -> MeshResource
}

extension MeshResource {
  typealias Font = NSFont
}

@available(macOS 10.15, iOS 13.0, *)
struct ModelComponent : Component {
  var mesh: MeshResource
  var materials: [Material]
  init(mesh: MeshResource, materials: [Material])
}

extension ModelComponent {
}

@available(macOS 11.0, iOS 14.0, *)
struct ModelDebugOptionsComponent : Component {
  var visualizationMode: ModelDebugOptionsComponent.VisualizationMode { get }
  init(visualizationMode: ModelDebugOptionsComponent.VisualizationMode = .none)
  enum VisualizationMode : String {
    case none
    case normal
    case tangent
    case bitangent
    case baseColor
    case textureCoordinates
    case finalColor
    case finalAlpha
    case roughness
    case metallic
    case ambientOcclusion
    case specular
    case emissive
    case clearcoat
    case clearcoatRoughness
    case lightingDiffuse
    case lightingSpecular
  }
}

@available(macOS 11.0, iOS 14.0, *)
extension ModelDebugOptionsComponent.VisualizationMode : Equatable {
}

@available(macOS 11.0, iOS 14.0, *)
extension ModelDebugOptionsComponent.VisualizationMode : Hashable {
}

@available(macOS 11.0, iOS 14.0, *)
extension ModelDebugOptionsComponent.VisualizationMode : RawRepresentable {
}

@available(macOS 10.15, iOS 13.0, *)
class ModelEntity : Entity, HasModel, HasPhysics {
  init(mesh: MeshResource, materials: [Material] = [])
  init(mesh: MeshResource, materials: [Material] = [], collisionShape: ShapeResource, mass: Float)
  init(mesh: MeshResource, materials: [Material] = [], collisionShapes: [ShapeResource], mass: Float)
}

@available(macOS 10.15, iOS 13.0, *)
class MultipeerConnectivityService : SynchronizationService {
  final let session: MCSession
  init(session: MCSession) throws
}

@available(macOS 10.15.4, iOS 13.4, *)
final class NetworkCompatibilityToken : Codable {
  enum Compatibility {
    case compatible
    case sessionProtocolVersionMismatch
  }
  static let local: NetworkCompatibilityToken
  final func compatibilityWith(_ otherToken: NetworkCompatibilityToken) -> NetworkCompatibilityToken.Compatibility
}

@available(macOS 10.15.4, iOS 13.4, *)
extension NetworkCompatibilityToken.Compatibility : Equatable {
}

@available(macOS 10.15.4, iOS 13.4, *)
extension NetworkCompatibilityToken.Compatibility : Hashable {
}

@available(macOS 10.15, iOS 13.0, *)
struct OcclusionMaterial : Material {
  let receivesDynamicLighting: Bool
  init(receivesDynamicLighting: Bool = false)
}

@available(macOS 10.15, iOS 13.0, *)
class PerspectiveCamera : Entity, HasPerspectiveCamera {
}

@available(macOS 10.15, iOS 13.0, *)
struct PerspectiveCameraComponent : Component, Equatable {
  var near: Float
  var far: Float
  var fieldOfViewInDegrees: Float
  init(near: Float = 0.01, far: Float = .infinity, fieldOfViewInDegrees: Float = 60.0)
}

extension PerspectiveCameraComponent {
}

@available(macOS 10.15, iOS 13.0, *)
struct PhysicsBodyComponent : Component, Equatable {
  var mode: PhysicsBodyMode
  var massProperties: PhysicsMassProperties
  var material: PhysicsMaterialResource
  var isTranslationLocked: (x: Bool, y: Bool, z: Bool)
  var isRotationLocked: (x: Bool, y: Bool, z: Bool)
  var isContinuousCollisionDetectionEnabled: Bool
  init()
  init(massProperties: PhysicsMassProperties = .default, material: PhysicsMaterialResource? = nil, mode: PhysicsBodyMode = .dynamic)
  init(shapes: [ShapeResource], density: Float, material: PhysicsMaterialResource? = nil, mode: PhysicsBodyMode = .dynamic)
  init(shapes: [ShapeResource], mass: Float, material: PhysicsMaterialResource? = nil, mode: PhysicsBodyMode = .dynamic)
}

@available(macOS 10.15, iOS 13.0, *)
enum PhysicsBodyMode : Hashable {
  case `static`
  case kinematic
  case dynamic
}

@available(macOS 10.15, iOS 13.0, *)
struct PhysicsMassProperties : Equatable {
  static let `default`: PhysicsMassProperties
  var mass: Float
  var inertia: SIMD3<Float>
  var centerOfMass: (position: SIMD3<Float>, orientation: simd_quatf)
  init()
  init(mass: Float, inertia: SIMD3<Float> = SIMD3<Float>(x: 0.1, y: 0.1, z: 0.1), centerOfMass: (position: SIMD3<Float>, orientation: simd_quatf) = (SIMD3<Float>(x: 0, y: 0, z: 0), simd_quatf(ix: 0, iy: 0, iz: 0, r: 1)))
  init(shape: ShapeResource, density: Float)
  init(shape: ShapeResource, mass: Float)
}

@available(macOS 10.15, iOS 13.0, *)
class PhysicsMaterialResource : Resource {
  static var `default`: PhysicsMaterialResource
  @available(macOS 10.15.4, iOS 13.4, *)
  var __staticFriction: Float { get }
  @available(macOS 10.15.4, iOS 13.4, *)
  var __dynamicFriction: Float { get }
  @available(macOS 10.15.4, iOS 13.4, *)
  var __restitution: Float { get }
  static func generate(friction: Float = 0.8, restitution: Float = 0.8) -> PhysicsMaterialResource
  @available(macOS 10.15.4, iOS 13.4, *)
  static func generate(staticFriction: Float, dynamicFriction: Float, restitution: Float) -> PhysicsMaterialResource
}

@available(macOS 10.15, iOS 13.0, *)
struct PhysicsMotionComponent : Component, Equatable {
  var linearVelocity: SIMD3<Float>
  var angularVelocity: SIMD3<Float>
  init()
  init(linearVelocity: SIMD3<Float> = .zero, angularVelocity: SIMD3<Float> = .zero)
}

@available(macOS 10.15, iOS 13.0, *)
class PointLight : Entity, HasPointLight {
}

@available(macOS 10.15, iOS 13.0, *)
struct PointLightComponent : Component, Equatable {
  typealias Color = NSColor
  var color: NSColor
  var intensity: Float
  var attenuationRadius: Float
  init(color: PointLightComponent.Color = .white, intensity: Float = 26963.76, attenuationRadius: Float = 10.0)
}

@usableFromInline
struct REAngleF {
  init(radians: Float)
  init(degrees: Float)
  var radians: Float
  @inlinable var degrees: Float
}

@usableFromInline
typealias REMatrix2x2F = simd_float2x2

@usableFromInline
typealias REMatrix3x3F = simd_float3x3

@usableFromInline
typealias REMatrix4x4F = simd_float4x4

@usableFromInline
struct RETransform {
  @usableFromInline
  var position: SIMD3<Float>
  @usableFromInline
  var orientation: simd_quatf
  @usableFromInline
  var scale: SIMD3<Float>
}

extension RETransform {
  @inlinable var matrix: REMatrix4x4F
}

@available(macOS 10.15, iOS 13.0, *)
protocol Resource {
}

extension Resource {
  static func __fromCore(_ coreAsset: __AssetRef) -> Self
}

@usableFromInline
enum RotationOrder : UInt8 {
  static let `default`: RotationOrder
  static let sceneKit: RotationOrder
  case xyz
  case yzx
  case zxy
  case xzy
  case yxz
  case zyx
}

extension RotationOrder : Equatable {
}

extension RotationOrder : Hashable {
}

extension RotationOrder : RawRepresentable {
}

@available(macOS 10.15, iOS 13.0, *)
class Scene {
  var __coreScene: __SceneRef { get }
  var name: String { get }
  var __audioListener: Entity?
  func __initAudioChannelCaptureUnit() -> AUAudioUnit
  func __startAudioChannelCapture(auAudioUnit: AUAudioUnit, maxRecordingDurationInSeconds: Int)
  func __stopAudioChannelCapture(auAudioUnit: AUAudioUnit) -> AVAudioPCMBuffer
  @discardableResult
  func __addPostProcessingAudioEffect(_ auDesc: AudioComponentDescription) -> AUAudioUnit?
  var __defaultCamera: Entity! { get }
  var __entities: [Entity] { get }
  var anchors: Scene.AnchorCollection
  func addAnchor(_ anchor: HasAnchoring)
  func removeAnchor(_ anchor: HasAnchoring)
  static func __testInit(name: String) -> Scene
  func findEntity(named name: String) -> Entity?
  var __interactionService: __RKEntityInteractionService { get }
  var synchronizationService: SynchronizationService?
}

extension Scene {
  var __sceneIdentifier: UUID?
}

extension Scene {
  var __anchoringType: __REAnchoringType?
}

extension Scene {
  func subscribe<E>(to event: E.Type, on sourceObject: EventSource? = nil, _ handler: @escaping (E) -> Void) -> Cancellable where E : Event
  func publisher<E>(for event: E.Type, on sourceObject: EventSource? = nil) -> Scene.Publisher<E> where E : Event
}

extension Scene {
  struct Publisher<E> : Publisher where E : Event {
  }
}

extension Scene {
  struct AnchorCollection : Collection {
    func append(_ entity: Scene.AnchorCollection.Element)
    func append(contentsOf array: [Scene.AnchorCollection.Element])
    func append<S>(contentsOf sequence: S) where S : Sequence, S.Element : HasAnchoring
    func remove(_ entity: Scene.AnchorCollection.Element)
    func remove(at index: Int)
    func removeAll(keepCapacity: Bool = false)
    func removeAll()
    func replaceAll(_ entities: [Scene.AnchorCollection.Element])
    func replaceAll<S>(_ entities: S) where S : Sequence, S.Element : HasAnchoring
  }
}

extension Scene {
  static func __fromCore(_ coreScene: __SceneRef) -> Scene
}

extension Scene : Hashable {
}

extension Scene : Identifiable {
}

extension Scene : EventSource {
}

extension Scene {
  var __corePointer: OpaquePointer { get }
}

extension Scene {
  var __gravity: SIMD3<Float>?
  var __adaptiveTimeStep: Bool?
}

extension Scene {
  func raycast(origin: SIMD3<Float>, direction: SIMD3<Float>, length: Float = 100, query: CollisionCastQueryType = .all, mask: CollisionGroup = .all, relativeTo referenceEntity: Entity? = nil) -> [CollisionCastHit]
  func raycast(from startPosition: SIMD3<Float>, to endPosition: SIMD3<Float>, query: CollisionCastQueryType = .all, mask: CollisionGroup = .all, relativeTo referenceEntity: Entity? = nil) -> [CollisionCastHit]
  func convexCast(convexShape: ShapeResource, fromPosition: SIMD3<Float>, fromOrientation: simd_quatf, toPosition: SIMD3<Float>, toOrientation: simd_quatf, query: CollisionCastQueryType = .all, mask: CollisionGroup = .all, relativeTo referenceEntity: Entity? = nil) -> [CollisionCastHit]
}

extension Scene {
}

extension Scene.AnchorCollection : CustomStringConvertible {
}

@available(macOS 10.15, iOS 13.0, *)
enum SceneEvents {
  struct Update : Event {
    let scene: Scene
    let deltaTime: TimeInterval
  }
  struct AnchoredStateChanged : Event {
    let isAnchored: Bool
    let anchor: HasAnchoring
  }
}

@available(macOS 10.15, iOS 13.0, *)
class ShapeResource : Resource, Hashable {
}

extension ShapeResource {
  static func __makeShapeResource(_ shapes: [ShapeResource]) -> ShapeResource
  func offsetBy(rotation: simd_quatf) -> ShapeResource
  func offsetBy(translation: SIMD3<Float>) -> ShapeResource
  func offsetBy(rotation: simd_quatf = simd_quatf(ix: 0, iy: 0, iz: 0, r: 1), translation: SIMD3<Float> = SIMD3<Float>()) -> ShapeResource
  static func generateBox(size: SIMD3<Float>) -> ShapeResource
  static func generateBox(width: Float, height: Float, depth: Float) -> ShapeResource
  static func generateCapsule(height: Float, radius: Float) -> ShapeResource
  static func generateConvex(from points: [SIMD3<Float>]) -> ShapeResource
  static func generateConvex(from mesh: MeshResource) -> ShapeResource
  static func generateSphere(radius: Float) -> ShapeResource
}

@available(macOS 10.15, iOS 13.0, *)
struct SimpleMaterial : Material {
  var tintColor: NSColor
  var baseColor: MaterialColorParameter
  var roughness: MaterialScalarParameter
  var metallic: MaterialScalarParameter
  var __emissive: MaterialColorParameter
  var __usesTransparency: Bool
  init(color: SimpleMaterial.Color, roughness: MaterialScalarParameter = 0.0, isMetallic: Bool)
  init()
}

@available(macOS 10.15, iOS 13.0, *)
class SpotLight : Entity, HasSpotLight {
}

@available(macOS 10.15, iOS 13.0, *)
struct SpotLightComponent : Component, Equatable {
  typealias Color = NSColor
  struct Shadow : Component, Equatable {
    init()
  }
  var color: NSColor
  var intensity: Float
  var innerAngleInDegrees: Float
  var outerAngleInDegrees: Float
  var attenuationRadius: Float
  init(color: SpotLightComponent.Color = .white, intensity: Float = 6740.94, innerAngleInDegrees: Float = 45.0, outerAngleInDegrees: Float = 60.0, attenuationRadius: Float = 10.0)
}

@available(macOS 10.15, iOS 13.0, *)
struct SynchronizationComponent : Component, Equatable {
  enum OwnershipTransferMode {
    case autoAccept
    case manual
  }
  enum OwnershipTransferCompletionResult {
    case granted
    case timedOut
  }
  var identifier: UInt64 { get }
  var isOwner: Bool { get }
  var ownershipTransferMode: SynchronizationComponent.OwnershipTransferMode
  init()
}

@available(macOS 10.15, iOS 13.0, *)
extension SynchronizationComponent.OwnershipTransferMode : Equatable {
}

@available(macOS 10.15, iOS 13.0, *)
extension SynchronizationComponent.OwnershipTransferMode : Hashable {
}

@available(macOS 10.15, iOS 13.0, *)
extension SynchronizationComponent.OwnershipTransferCompletionResult : Equatable {
}

@available(macOS 10.15, iOS 13.0, *)
extension SynchronizationComponent.OwnershipTransferCompletionResult : Hashable {
}

@available(macOS 10.15, iOS 13.0, *)
enum SynchronizationEvents {
  struct OwnershipRequest : Event {
    let entity: Entity
    let requester: SynchronizationPeerID
    let accept: () -> Void
  }
  struct OwnershipChanged : Event {
    let entity: Entity
    let newOwner: SynchronizationPeerID?
  }
}

@available(macOS 10.15, iOS 13.0, *)
protocol SynchronizationPeerID {
}

@available(macOS 10.15, iOS 13.0, *)
protocol SynchronizationService : AnyObject {
  typealias Identifier = UInt64
  func entity(for identifier: Self.Identifier) -> Entity?
  func owner(of entity: Entity) -> SynchronizationPeerID?
  @discardableResult
  func giveOwnership(of entity: Entity, toPeer: SynchronizationPeerID) -> Bool
  func __fromCore(peerID: __PeerIDRef) -> SynchronizationPeerID?
  func __toCore(peerID: SynchronizationPeerID) -> __PeerIDRef
}

@available(macOS 10.15, iOS 13.0, *)
class TextureResource : Resource {
  var __coreAsset: __AssetRef { get }
  static func load(named name: String, in bundle: Bundle? = nil) throws -> TextureResource
  static func loadAsync(named name: String, in bundle: Bundle? = nil) -> LoadRequest<TextureResource>
  static func load(contentsOf url: URL, withName resourceName: String? = nil) throws -> TextureResource
  static func loadAsync(contentsOf url: URL, withName resourceName: String? = nil) -> LoadRequest<TextureResource>
  static func __texture(from mtlTexture: MTLTexture) -> TextureResource
  static func __texture(from cgImage: CGImage, label: String? = nil) -> TextureResource
}

@available(macOS 10.15, iOS 13.0, *)
struct Transform : Component, Hashable {
  static let identity: Transform
  var scale: SIMD3<Float>
  var rotation: simd_quatf
  var translation: SIMD3<Float>
  var __coreSRT: __SRTRef { get }
  @inlinable var matrix: float4x4
  init()
  @inlinable init(scale: SIMD3<Float> = SIMD3<Float>(x: 1, y: 1, z: 1), rotation: simd_quatf = simd_quaternion(0, 0, 0, 1), translation: SIMD3<Float> = SIMD3<Float>(x: 0, y: 0, z: 0))
  @inlinable init(pitch x: Float = 0, yaw y: Float = 0, roll z: Float = 0)
  init(matrix: float4x4)
}

extension Transform {
  static func __fromCore(_ coreSRT: __SRTRef) -> Transform
}

@available(macOS 10.15, iOS 13.0, *)
class TriggerVolume : Entity, HasCollision {
  convenience init(shape: ShapeResource, filter: CollisionFilter = .sensor)
  init(shapes: [ShapeResource], filter: CollisionFilter = .sensor)
}

@available(macOS 10.15, iOS 13.0, *)
struct UnlitMaterial : Material {
  var tintColor: NSColor
  var baseColor: MaterialColorParameter
  var __usesTransparency: Bool
  init(color: NSColor)
  init()
}

@available(macOS 11.0, iOS 14.0, *)
struct VideoMaterial : Material {
  var __videoResource: __VideoResource
  init(avPlayer: AVPlayer)
  var avPlayer: AVPlayer?
  var controller: VideoPlaybackController { get }
  static func __makeVideoMaterial(videoResource: __VideoResource) -> VideoMaterial
}

@available(macOS 11.0, iOS 14.0, *)
class VideoPlaybackController {
  var audioInputMode: AudioResource.InputMode
}

struct __AABBRef {
  func __as<T>(_ type: T.Type) -> T
}

@available(macOS 10.15.4, iOS 13.4, *)
class __ARReferenceProvider : __ARReferenceProviding {
  @available(*, deprecated, message: "use the \"instance(for assetService: __REAssetService)\" instead")
  static var shared: __ARReferenceProvider { get }
  static func instance(for assetService: __REAssetService) -> __ARReferenceProvider
  func supportsGroup(named group: String) -> Bool
}

@available(macOS 10.15.4, iOS 13.4, *)
protocol __ARReferenceProviding {
}

protocol __ARViewDelegatePrivate : AnyObject {
  func viewWillProcessTapInteraction(_ view: ARView)
  func view(_ view: ARView, performedTapInteraction: Bool, for entity: Entity?)
  @available(macOS 11.0, iOS 14.0, *)
  func view(_ view: ARView, performedProximityInteractionsForEntities: [Entity])
  func update(_ view: ARView, deltaTime: Float)
}

@available(macOS 11.0, iOS 14.0, *)
extension __ARViewDelegatePrivate {
  func view(_ view: ARView, performedProximityInteractionsForEntities: [Entity])
}

struct __AmbientLightComponent : Component, Equatable {
  typealias Color = NSColor
  var color: NSColor
  var intensity: Float
  init()
  init(color: __AmbientLightComponent.Color = .white, intensity: Float = 683.0)
}

struct __AnimationPlaybackTokenRef {
  var core: UInt64
  func __as<T>(_ type: T.Type) -> T
}

struct __Archiving {
  static func archivePackage(source: URL, destination: URL, envelopeVersion: __AssetBundleEnvelopeVersion, compressionLevel: Int? = nil, progress: Progress? = nil) throws
  @available(*, deprecated, message: "will be removed")
  static func unarchivePackage(source: URL, destination: URL) throws
  static func unarchivePackage(source: URL, destination: URL, withReport report: __REArchivalStats? = nil) throws
  enum ArchivingError : Error {
    case couldNotUnarchive
    case couldNotArchive
  }
}

extension __Archiving.ArchivingError : Equatable {
}

extension __Archiving.ArchivingError : Hashable {
}

enum __AssetBundleEnvelopeVersion {
  case defaultVersion
  case specificVersion(versionNumber: __REArchiveEnvelopeVersion)
}

final class __AssetLoadRequest {
  convenience init(serviceLocator: __ServiceLocator)
  convenience init(assetService: __REAssetService)
  final func add(asset: __AssetRef)
  final var progress: Float { get }
  typealias CompletionHandler = @convention(block) (Bool) -> Void
  final func setCompletionHandler(_ handler: @escaping __AssetLoadRequest.CompletionHandler)
}

struct __AssetRef {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __AssetRef
}

struct __ComponentRef {
  func __as<T>(_ type: T.Type) -> T
}

struct __ComponentTypeRef {
  static func __fromCore(_ core: Any) -> __ComponentTypeRef
  func __as<T>(_ type: T.Type) -> T
}

struct __Downsampling {
  struct Factor {
    init(mipmapOffset: Int)
    init(value: Int)
  }
  enum Resolution {
    case noDownsampling
    case downsampling(factors: [__Downsampling.Factor])
  }
}

extension __Downsampling {
  struct Minimal : __DownsamplingStrategy {
    init()
  }
  typealias ByteSize = UInt64
  enum Error : Error, CustomDebugStringConvertible {
    case noSufficientDownsamplingStrategy(budget: __Downsampling.ByteSize, minimalSize: __Downsampling.ByteSize)
  }
  struct Budgeted : __DownsamplingStrategy {
    init(availableBytes: __Downsampling.ByteSize, device: MTLDevice)
  }
}

extension __Downsampling {
  static func getMipmapByteSizes(_ descriptor: MTLTextureDescriptor, device: MTLDevice) -> [__Downsampling.ByteSize]
}

protocol __DownsamplingStrategy {
  func resolve(_ descriptors: [MTLTextureDescriptor]) throws -> __Downsampling.Resolution
}

struct __DownsamplingStrategyClosure : __DownsamplingStrategy {
}

class __Engine {
  struct Configuration {
    var clockMode: __EngineClockModeRef
    var device: MTLDevice?
    var queue: DispatchQueue?
    var __createServices: __EngineServiceMaskRef
    var __updateServices: __EngineServiceMaskRef
    var __startupOptions: __StartupOptionsRef
    var __renderFlags: __RenderFlagsRef
    init()
  }
  final let configuration: __Engine.Configuration
  var __coreEngine: __EngineRef { get }
  final let queue: DispatchQueue
  var services: __ServiceLocator! { get }
  init(configuration: __Engine.Configuration)
  init(coreEngine: __EngineRef)
  func __start()
  func __stop()
  static func __ensureBuiltInComponentsAreRegistered()
  static func __registerREKitComponents() throws
  static func __unregisterREKitComponents()
}

struct __EngineClockModeRef {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __EngineClockModeRef
}

struct __EngineRef {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __EngineRef
}

struct __EngineServiceMaskRef {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __EngineServiceMaskRef
}

struct __EntityInfoComponent : Component, Codable {
}

struct __EntityRef : Equatable {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __EntityRef
}

class __MaterialResource {
  var __coreAsset: __AssetRef { get }
  static func __load(named name: String, in bundle: Bundle? = nil) throws -> Material
}

final class __MeshCompileOptions {
  final var coreOptions: OpaquePointer { get }
  init()
  final var generateVertexFaceAdjacencyAttributes: Bool
  final var reorderVertexCaching: Bool
  final var repairTangents: Bool
  final var mergeVerticesIfPolygonSoup: Bool
  final var preserveSharpFeatures: Bool
  final var preserveSubdivisonSurfaceData: Bool
  final var generateDecimatedMesh: Bool
}

struct __PeerIDRef {
  func __as<T>(_ type: T.Type) -> T
}

class __RCEntity : Entity, HasAnchoring {
  func invokeCustomTrigger(named name: String, overrides: [String : Entity]? = nil)
  func registerCustomAction(named name: String, action: @escaping (Entity?) -> Void)
}

struct __REAnchoring {
  var type: __REAnchoringType?
  class Registration {
    final let componentType: OpaquePointer
  }
  static var registration: __REAnchoring.Registration?
}

enum __REAnchoringType : Codable, Equatable {
  case surface(alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification)
  case image(url: URL, physicalWidth: Measurement<UnitLength>)
  case face(meshVertex: Int)
  case object(url: URL)
  enum Name : String, CaseIterable {
    case surface
    case image
    case face
    case object
  }
  var name: __REAnchoringType.Name { get }
  struct Alignment : OptionSet, Codable {
    static let horizontal: __REAnchoringType.Alignment
    static let vertical: __REAnchoringType.Alignment
    static let any: __REAnchoringType.Alignment
  }
  struct Classification : OptionSet, Codable {
    static let wall: __REAnchoringType.Classification
    static let floor: __REAnchoringType.Classification
    static let ceiling: __REAnchoringType.Classification
    static let table: __REAnchoringType.Classification
    static let seat: __REAnchoringType.Classification
    static let any: __REAnchoringType.Classification
  }
}

extension __REAnchoringType {
}

extension __REAnchoringType.Name : Equatable {
}

extension __REAnchoringType.Name : Hashable {
}

extension __REAnchoringType.Name : RawRepresentable {
}

typealias __REArchivalStats = OpaquePointer

typealias __REArchiveEnvelopeVersion = UInt8

class __REAsset : CustomDebugStringConvertible {
  static func __fromHandle(_ assetRef: __AssetRef) -> __REAsset
  static func __fromHandleTransfer(_ assetRef: __AssetRef) -> __REAsset
  var __hasSubsceneComponents: Bool { get }
  var __handle: __AssetRef { get }
}

extension __REAsset : Hashable {
}

struct __REAssetBundle {
  static let __sdkBundleID: String
  static let __sdkBundleVersionKey: String
  static let __sdkBundleVersion: String
  static let __sdkBundleVersionInvalid: String
  static let __fileExtension: String
  static var fileExtension: String { get }
  struct Header : Codable {
    struct VersionInfo : Codable {
    }
    var versionInfo: __REAssetBundle.Header.VersionInfo
    var minVersion: Int
    var identifier: UUID?
  }
  var sceneAssets: [__REAsset] { get }
  let __sceneAssets: [__REAsset]
  var mainSceneAsset: __REAsset? { get }
  var __mainSceneAsset: __REAsset? { get }
  static func frameworkVersion(key: String) -> String
  func mainSceneIdentifier() -> __REAssetIdentifier?
  enum QueueOptions : Equatable {
    case fromEngineQueue
    case notFromEngineQueue(canUseEngineQueue: Bool)
  }
  struct ExportOptions {
    var queueOptions: __REAssetBundle.QueueOptions
    var compressionLevel: Int?
    var progress: Progress?
    var generateIdentifier: Bool
    var deduplicateAssets: Bool
    var __envelopeVersion: __AssetBundleEnvelopeVersion
    init(queueOptions: __REAssetBundle.QueueOptions)
  }
  struct LoadOptions {
    var queueOptions: __REAssetBundle.QueueOptions
    @available(*, deprecated, message: "will be removed")
    var materialDefinition: __REAssetBundle.__MaterialDefinitionOverride?
    var downsamplingStrategy: __DownsamplingStrategy?
    var performanceReport: __REArchivalStats?
    init(queueOptions: __REAssetBundle.QueueOptions)
  }
  @available(*, deprecated, message: "will be removed")
  struct __MaterialDefinitionOverride {
    init(materialDefinition: String, serviceLocator: OpaquePointer)
  }
  struct AssetMap : Codable {
    struct SceneDescriptor : Codable, Equatable {
    }
    var scenes: [__REAssetBundle.AssetMap.SceneDescriptor]
  }
  var __temporaryUnarchivingURL: URL?
  static func __init(sceneAssets: [__REAsset], assetService: __REAssetService) throws -> __REAssetBundle
  static func __init(sceneAssets: [__REAsset], assetService: __REAssetService, assetMapSceneDescriptorsByAsset: [__REAsset : __REAssetBundle.AssetMap.SceneDescriptor] = [:]) -> __REAssetBundle
  @available(*, deprecated, message: "Use __init(URL:__REAssetService:LoadOptions)")
  init(url: URL, assetService: __REAssetService, with queueOptions: __REAssetBundle.QueueOptions = .fromEngineQueue) throws
  static func __init(url: URL, assetService: __REAssetService, _ options: __REAssetBundle.LoadOptions) throws -> __REAssetBundle
  @available(*, deprecated, message: "Use __init(URL:__REAssetService:LoadOptions)")
  static func __init(url: URL, assetService: __REAssetService, materialDefinition: __REAssetBundle.__MaterialDefinitionOverride? = nil, with queueOptions: __REAssetBundle.QueueOptions = .fromEngineQueue) throws -> __REAssetBundle
  @available(*, deprecated, message: "will be moved to internal; use __init(URL:__REAssetService:LoadOptions)")
  init(url: URL, assetService: __REAssetService, downsamplingStrategy: __DownsamplingStrategy?, with options: __REAssetBundle.QueueOptions) throws
  @available(*, deprecated, message: "use load(url:assetService:completionHandler:) instead")
  static func load(url: URL, assetService: __REAssetService, materialDefinition: __REAssetBundle.__MaterialDefinitionOverride? = nil, completionHandler: @escaping (Result<__REAssetBundle, Error>) -> Void)
  static func load(url: URL, assetService: __REAssetService, completionHandler: @escaping (Result<__REAssetBundle, Error>) -> Void)
  var sceneDescriptors: [__REAssetBundle.AssetMap.SceneDescriptor] { get }
  func sceneAsset(for sceneDescriptor: __REAssetBundle.AssetMap.SceneDescriptor) -> __REAsset?
  static var temporaryURL: URL
  func write(to url: URL) throws
  func __write(to url: URL, fromEngineQueue: Bool = true) throws
  func write(to url: URL, with options: __REAssetBundle.ExportOptions) throws
  @available(*, deprecated, message: "use __write(to:with:) instead")
  func __write(to url: URL, with queueOptions: __REAssetBundle.QueueOptions, compressionLevel: Int? = 1, progress: Progress? = nil) throws
  func __write(to url: URL, with options: __REAssetBundle.ExportOptions) throws
  func __write(to url: URL, completionHandler: @escaping (Error?) -> Void)
}

@available(*, deprecated)
extension __REAssetBundle {
  func resource<T>(ofType type: T.Type, at path: __REAssetIdentifier) -> T? where T : Resource
  func __renderGraphEmitter(at path: __REAssetIdentifier) -> __RERenderGraphEmitter?
}

extension __REAssetBundle {
  func assetIdentifiers(forType: Resource.Type) -> [__REAssetIdentifier]
  var sceneIdentifiers: [__REAssetIdentifier] { get }
  func resource<T>(ofType: T.Type, identifier: __REAssetIdentifier) -> T? where T : Resource
  @discardableResult
  func __add(resource: Resource) -> __REAssetIdentifier
  func __renderGraphEmitter(identifier: __REAssetIdentifier) -> __RERenderGraphEmitter?
}

extension __REAssetBundle {
  static func __init(element: Entity, assetService: __REAssetService) -> __REAssetBundle
  static func __init(realityScenes: [Scene], assetService: __REAssetService) -> __REAssetBundle
  static func loadSceneDescriptors(url: URL) throws -> [__REAssetBundle.AssetMap.SceneDescriptor]
}

struct __REAssetIdentifier : ExpressibleByStringLiteral, Codable {
  init(_ value: String)
}

class __REAssetManager : __REAssetService {
  init(handle: OpaquePointer)
  var engineQueue: DispatchQueue { get }
}

protocol __REAssetService {
  var mainBundle: __REAssetBundle { get }
  func loadBundle(at url: URL) throws -> __REAssetBundle
  func makeBundle() -> __REAssetBundle
  var __handle: OpaquePointer { get }
  func __getDependencies(asset: __REAsset) -> [__REAsset]
}

@available(*, deprecated)
extension __REAssetService {
  func resource<T>(ofType type: T.Type, at path: __REAssetIdentifier) -> T?
}

struct __REECSManagerRef {
  func __as<T>(_ type: T.Type) -> T
}

struct __REEventSubscriber<CoreEvent> : Subscriber {
}

struct __REOSLog {
  static var UpdateLoop: OSLog
  static var ARQL: OSLog
  static var RealityComposer: OSLog
}

class __REOSSignpostScope {
  init(osLog: OSLog, signpostID: OSSignpostID, name: StaticString)
}

func __RERelease(_ ptr: OpaquePointer?)

class __RERenderGraphEmitter : Resource {
  static func __load(named name: String, in bundle: Bundle? = nil) throws -> __RERenderGraphEmitter
  var __handle: __AssetRef { get }
}

func __RERetain(_ ptr: OpaquePointer?)

struct __RESignpostID {
  static var UpdateLoop: OSSignpostID
  static var ARQL: OSSignpostID
  static var RealityComposer: OSSignpostID
}

@available(*, deprecated, message: "Please use the per-interaction-service runtime scene coordinator. __RKRuntimeSceneCoordinator")
class __RKActiveSceneManager {
  static var shared: __RKActiveSceneManager
  init()
  var activeScene: Scene?
  func addObserver(observer: __RKActiveSceneObserver)
  func removeObserver(observer: __RKActiveSceneObserver)
}

protocol __RKActiveSceneObserver : AnyObject {
  func manager(_ manager: __RKActiveSceneManager, activeSceneDidChange scene: Scene?)
}

enum __RKAudioSpatialModeSelection : String, Codable, CaseIterable {
  case pointSource
  case ambientBed
  case stereoBypass
}

extension __RKAudioSpatialModeSelection : Equatable {
}

extension __RKAudioSpatialModeSelection : Hashable {
}

extension __RKAudioSpatialModeSelection : RawRepresentable {
}

class __RKChangeSceneAction : __RKEntityAction {
  static let noTargetSceneIdentifier: UUID
  var rootEntity: Entity?
  init(rootEntity: Entity?, targetSceneIdentifier: UUID)
}

struct __RKChangeSceneActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var sceneRoot: UUID
  var targetSceneIdentifier: UUID
  init(sceneRoot: UUID, targetSceneIdentifier: UUID)
}

class __RKCustomTrigger : __RKEntityTrigger {
  init(identifier: String, customArguments: [String : String]? = [:])
}

struct __RKCustomTriggerNotification {
}

class __RKEmphasisBaseAnimation {
}

class __RKEmphasisBlinkAnimation : __RKEmphasisBaseAnimation {
}

class __RKEmphasisBounceAnimation : __RKEmphasisBaseAnimation {
}

class __RKEmphasisFlipAnimation : __RKEmphasisBaseAnimation {
}

class __RKEmphasisFloatAnimation : __RKEmphasisBaseAnimation {
}

class __RKEmphasisJiggleAnimation : __RKEmphasisBaseAnimation {
}

class __RKEmphasisLeanAnimation : __RKEmphasisBaseAnimation {
}

class __RKEmphasisPopAnimation : __RKEmphasisBaseAnimation {
}

class __RKEmphasisPulseAnimation : __RKEmphasisBaseAnimation {
}

class __RKEmphasisSpinAnimation : __RKEmphasisBaseAnimation {
}

class __RKEntityAction : CustomStringConvertible, NSCopying {
  enum State : Equatable {
    case notStarted
    case running
    case progress(Double)
    case finished
    case stopped
    case failed
  }
  init(targetEntity: Entity? = nil)
  typealias CompletionHandler = ((Bool) -> Void)
  var targetEntity: Entity?
  var completionHandler: __RKEntityAction.CompletionHandler?
  var isAlternate: Bool
  var isExclusive: Bool
  var exclusiveBlocksForCompletion: Bool
  var state: __RKEntityAction.State
  var multiplePerformBehaviour: __RKEntityActionMultiplePerformBehavior
  func performAction(with context: __RKEntityActionContext)
  func shouldContinueOnPerform() -> Bool
  func preloadAssets()
  @discardableResult
  func perform(with context: __RKEntityActionContext) -> Bool
  func addStateObserver(_ observer: __RKEntityActionStateObserver)
  func removeStateObserver(_ observer: __RKEntityActionStateObserver)
  func reversed() -> __RKEntityAction?
  @discardableResult
  func stop() -> Bool
  func isExclusiveWith(action: __RKEntityAction) -> Bool
  func animationPostCleanup()
  func prefersInitialOrdering() -> Bool
}

extension __RKEntityAction {
  struct ActionStateObservation {
  }
}

extension __RKEntityAction {
  static func action(for specification: __RKEntityActionSpecification, entityLookupTable: __RKEntityLookupTable) -> __RKEntityAction
}

enum __RKEntityActionAnimationStyle : String, Codable, CaseIterable {
  case basic
  case playful
  case wild
}

extension __RKEntityActionAnimationStyle : Equatable {
}

extension __RKEntityActionAnimationStyle : Hashable {
}

extension __RKEntityActionAnimationStyle : RawRepresentable {
}

struct __RKEntityActionContext {
  var trigger: __RKEntityTrigger
  var scene: Scene
  init(trigger: __RKEntityTrigger, scene: Scene)
}

class __RKEntityActionGroup : __RKEntityAction {
  enum Ordering {
    case concurrent
    case sequenced
  }
  static let infiniteLoopCount: Int
  static let noLoopCount: Int
  var actions: [__RKEntityAction] { get }
  var ordering: __RKEntityActionGroup.Ordering { get }
  var loopCount: Int { get }
  init(actions: [__RKEntityAction], ordering: __RKEntityActionGroup.Ordering, loopCount: Int? = __RKEntityActionGroup.noLoopCount)
  func allActions() -> [__RKEntityAction]
}

extension __RKEntityActionGroup.Ordering : Equatable {
}

extension __RKEntityActionGroup.Ordering : Hashable {
}

struct __RKEntityActionGroupArguments : Codable, Equatable {
  var order: __RKEntityGroupActionOrder
  var actions: [__RKEntityActionSpecification]
  var exclusive: Bool?
  var loopCount: Int?
  var exclusiveBlocks: Bool?
  init(order: __RKEntityGroupActionOrder, actions: [__RKEntityActionSpecification], exclusive: Bool = false, loopCount: Int = 1)
  @available(macOS 11.0, iOS 14.0, *)
  init(order: __RKEntityGroupActionOrder, actions: [__RKEntityActionSpecification], exclusive: Bool = false, loopCount: Int = 1, exclusiveBlocks: Bool = false)
}

enum __RKEntityActionMultiplePerformBehavior : String, Codable, CaseIterable {
  case allow
  case ignore
  case stopsAction
}

extension __RKEntityActionMultiplePerformBehavior : Equatable {
}

extension __RKEntityActionMultiplePerformBehavior : Hashable {
}

extension __RKEntityActionMultiplePerformBehavior : RawRepresentable {
}

enum __RKEntityActionSpecification : Codable, Equatable {
  case audio(__RKEntityAudioActionArguments)
  case changeScene(__RKChangeSceneActionArguments)
  case custom(__RKEntityCustomActionArguments)
  case emphasis(__RKEntityEmphasisActionArguments)
  case fadeEntity(__RKEntityFadeActionArguments)
  case fadeScene(__RKFadeSceneActionArguments)
  case group(__RKEntityActionGroupArguments)
  case hide(__RKEntityHideActionArguments)
  case force(__RKEntityForceActionArguments)
  case show(__RKEntityShowActionArguments)
  case startAnimate(__RKEntityStartAnimateActionArguments)
  case stopAnimate(__RKEntityStopAnimateActionArguments)
  case toggleAnimate(__RKEntityToggleAnimateActionArguments)
  case toggleVisibility(__RKEntityToggleVisibilityActionArguments)
  case transform(__RKEntityTransformActionArguments)
  case wait(__RKWaitActionArguments)
  case orbitEntity(__RKEntityOrbitEntityActionArguments)
  case lookAtCamera(__RKEntityLookAtCameraActionArguments)
  case swapEntity(__RKEntitySwapEntityActionArguments)
  case spin(__RKEntitySpinActionArguments)
  case setOpacity(__RKEntitySetOpacityActionArguments)
  enum Name : String {
    case audio
    case changeScene
    case custom
    case emphasis
    case fadeEntity
    case fadeScene
    case force
    case group
    case hide
    case lookAtCamera
    case orbitEntity
    case setOpacity
    case show
    case spin
    case startAnimate
    case stopAnimate
    case swapEntity
    case toggleAnimate
    case toggleVisibility
    case transform
    case wait
  }
  var name: __RKEntityActionSpecification.Name { get }
  var target: UUID? { get }
}

@available(macOS 10.15.4, iOS 13.4, *)
extension __RKEntityActionSpecification : __USDEncodablePublic {
}

extension __RKEntityActionSpecification.Name : Equatable {
}

extension __RKEntityActionSpecification.Name : Hashable {
}

extension __RKEntityActionSpecification.Name : RawRepresentable {
}

protocol __RKEntityActionStateObserver : AnyObject {
  func action(_ action: __RKEntityAction, didChangeStateFrom fromState: __RKEntityAction.State, to toState: __RKEntityAction.State)
}

class __RKEntityAnimateAction : __RKEntityAction {
}

class __RKEntityAudioAction : __RKEntityAction {
  final let type: __RKEntityAudioActionType
  final let path: String
  final let volume: Double
  final let loops: Bool
  final let spatialMode: __RKAudioSpatialModeSelection
  var __audioAssetRef: OpaquePointer? { get }
  init(targetEntity: Entity?, type: __RKEntityAudioActionType, path: String, volume: Double, loops: Bool, spatialMode: __RKAudioSpatialModeSelection = .pointSource, multiplePerformBehavior: __RKEntityActionMultiplePerformBehavior = .ignore)
}

struct __RKEntityAudioActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var path: String
  var type: __RKEntityAudioActionType?
  var volume: Double?
  var loops: Bool?
  var spatialMode: __RKAudioSpatialModeSelection?
  let multiplePerformBehavior: __RKEntityActionMultiplePerformBehavior?
  init(target: UUID, path: String, type: __RKEntityAudioActionType, spatialMode: __RKAudioSpatialModeSelection, volume: Double = 0.5, loops: Bool = false, multiplePerformBehavior: __RKEntityActionMultiplePerformBehavior = .ignore)
}

enum __RKEntityAudioActionType : String, Codable {
  case play
  case pause
  case stop
}

extension __RKEntityAudioActionType : Equatable {
}

extension __RKEntityAudioActionType : Hashable {
}

extension __RKEntityAudioActionType : RawRepresentable {
}

class __RKEntityCollisionTrigger : __RKEntityTrigger {
  init(targetEntity: Entity?, collidingEntities: [Entity] = [], tags: [String])
}

class __RKEntityCustomAction : __RKEntityAction {
  var handler: ((Entity?) -> Void)?
  final let identifier: String
  final let customArguments: [String : String]
  var customArgumentsBlock: ((Entity?, [String : String]?) -> Void)?
  init(targetEntity: Entity?, actionIdentifier: String, handler: ((Entity?) -> Void)? = nil, customArguments: [String : String]? = [:], customArgumentsBlock: ((Entity?, [String : String]?) -> Void)? = nil)
}

struct __RKEntityCustomActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var actionIdentifier: String
  var customArguments: [String : String]
  var optionalTarget: UUID?
  init(target: UUID?, actionIdentifier: String, customArguments: [String : String]? = [:])
}

class __RKEntityCustomTrigger : __RKEntityTrigger {
  var targetEntity: Entity?
  init(targetEntity: Entity?, identifier: String, customArguments: [String : String]? = [:])
}

class __RKEntityDragTrigger : __RKEntityTrigger {
}

class __RKEntityEmphasisAction : __RKEntityAction {
  init(targetEntity: Entity?, duration: Float, iterations: Float = 1.0, animationStyle: __RKEntityActionAnimationStyle = .basic, emphasisAnimationType: __RKEntityEmphasisAnimationType = .pop)
}

struct __RKEntityEmphasisActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var duration: Float?
  var iterations: Float?
  var animationStyle: __RKEntityActionAnimationStyle?
  var emphasisAnimationType: __RKEntityEmphasisAnimationType?
  init(target: UUID, duration: Float = 1.0, iterations: Float = 1.0, animationStyle: __RKEntityActionAnimationStyle = .basic, emphasisAnimationType: __RKEntityEmphasisAnimationType = .pop)
}

enum __RKEntityEmphasisAnimationType : String, Codable, CaseIterable {
  case pop
  case blink
  case bounce
  case flip
  case float
  case jiggle
  case pulse
  case spin
}

extension __RKEntityEmphasisAnimationType : Equatable {
}

extension __RKEntityEmphasisAnimationType : Hashable {
}

extension __RKEntityEmphasisAnimationType : RawRepresentable {
}

class __RKEntityFadeAction : __RKEntityAction {
  init(targetEntity: Entity?, targetOpacity: Float, duration: Float)
}

struct __RKEntityFadeActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var targetOpacity: Float
  var duration: Float?
  init(target: UUID, targetOpacity: Float, duration: Float = 1.0)
}

enum __RKEntityFlipDirectionType : String, Codable, CaseIterable {
  case forward
  case backward
}

extension __RKEntityFlipDirectionType : Equatable {
}

extension __RKEntityFlipDirectionType : Hashable {
}

extension __RKEntityFlipDirectionType : RawRepresentable {
}

class __RKEntityForceAction : __RKEntityAction {
  var force: SIMD3<Float>? { get }
  var velocity: SIMD3<Float>? { get }
  init(targetEntity: Entity?, force: SIMD3<Float>? = nil, velocity: SIMD3<Float>? = nil)
}

struct __RKEntityForceActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var force: SIMD3<Float>?
  var velocity: SIMD3<Float>?
  init(target: UUID, force: SIMD3<Float>? = nil, velocity: SIMD3<Float>? = nil)
}

enum __RKEntityGroupActionOrder : String, Codable, Equatable {
  case concurrent
  case sequenced
}

extension __RKEntityGroupActionOrder : Hashable {
}

extension __RKEntityGroupActionOrder : RawRepresentable {
}

class __RKEntityHideAction : __RKEntityVisibilityAction {
  init(targetEntity: Entity?, duration: Float = 1.0, distance: Float = 10.0, ease: __RKEntityMoveEase = .none, easeType: __RKEntityMoveEaseType = .easeIn, fadeOut: Bool = false, finalOpacity: Float = 0.0, respectPhysics: Bool = false, physicsAngularCoefficient: Float = 0.0, physicsLinearCoefficient: Float = 0.0, animationStyle: __RKEntityActionAnimationStyle = .basic, buildOutAnimationType: __RKEntityHideActionBuildOutAnimationType = .none)
}

struct __RKEntityHideActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var duration: Float?
  var distance: Float?
  var ease: __RKEntityMoveEase?
  var easeType: __RKEntityMoveEaseType?
  var fadeOut: Bool?
  var finalOpacity: Float?
  var respectPhysics: Bool?
  var physicsLinearCoefficient: Float?
  var physicsAngularCoefficient: Float?
  var animationStyle: __RKEntityActionAnimationStyle?
  var buildOutAnimationType: __RKEntityHideActionBuildOutAnimationType?
  init(target: UUID, duration: Float = 1.0, distance: Float = 10.0, ease: __RKEntityMoveEase = .none, easeType: __RKEntityMoveEaseType = .easeIn, fadeOut: Bool = false, finalOpacity: Float = 1.0, respectPhysics: Bool = false, physicsLinearCoefficient: Float = 0.0, physicsAngularCoefficient: Float = 0.0, animationStyle: __RKEntityActionAnimationStyle = .basic, buildOutAnimationType: __RKEntityHideActionBuildOutAnimationType = .none)
}

enum __RKEntityHideActionBuildOutAnimationType : String, Codable, CaseIterable {
  case none
  case moveToLeft
  case moveToRight
  case moveToFront
  case moveToRear
  case moveToAbove
  case moveToBelow
  case pop
  case scale
  case scaleUp
}

extension __RKEntityHideActionBuildOutAnimationType : Equatable {
}

extension __RKEntityHideActionBuildOutAnimationType : Hashable {
}

extension __RKEntityHideActionBuildOutAnimationType : RawRepresentable {
}

class __RKEntityInteraction : CustomStringConvertible {
  var trigger: __RKEntityTrigger { get }
  var action: __RKEntityAction { get }
  var enabled: Bool
  var accessibilityDescription: String?
  init(trigger: __RKEntityTrigger, action: __RKEntityAction)
  @available(macOS 10.15.4, iOS 13.4, *)
  convenience init(trigger: __RKEntityTrigger, action: __RKEntityAction, accessibilityDescription: String? = nil)
  func fire(context: __RKEntityActionContext)
}

extension __RKEntityInteraction {
  static func interaction(for specification: __RKEntityInteractionSpecification, entityLookupTable: __RKEntityLookupTable) -> __RKEntityInteraction
}

class __RKEntityInteractionManager : __RKEntityInteractionService {
  var __entityLookupTable: __RKEntityLookupTable
  var __simulationSceneCoordinator: __RKSimulationSceneCoordinator
  var __runtimeSceneCoordinator: __RKRuntimeSceneCoordinator
  var __interactions: [__RKEntityInteraction] { get }
  func __hasInteractionsForTrigger<T>(of objectType: T.Type) -> Bool where T : __RKEntityTrigger
  var __actions: [__RKEntityAction] { get }
  func __addInteraction(_ interaction: __RKEntityInteraction)
  func __removeInteraction(_ interaction: __RKEntityInteraction)
  func __removeAllInteractions()
  @discardableResult
  func __performInteractions(matching trigger: __RKEntityTrigger, on entities: [Entity]? = nil) -> Bool
  func action(for specification: __RKEntityActionSpecification) -> __RKEntityAction
}

protocol __RKEntityInteractionService : AnyObject {
  var areInteractionsEnabled: Bool { get set }
  var customTriggerIdentifiers: [String] { get }
  var customActionIdentifiers: [String] { get }
  @discardableResult
  func performInteractions(matchingCustomTriggerWithIdentifier customTriggerIdentifier: String, customArguments: [String : String]?, overrides: [String : Entity]?) -> Bool
  func setCustomActionHandler(for identifier: String, handler: ((Entity?) -> Void)?)
  @discardableResult
  func __performInteractions(matchingCustomTriggerWithIdentifier customTriggerIdentifier: String, with customArguments: [String : String], on elements: [Entity]?) -> Bool
  func __setCustomPackageActionHandler(withIdentifier identifier: String, actionHandler: ((Entity?, [String : String]?) -> Void)?)
  var automaticallyInvokesStartTrigger: Bool { get set }
}

struct __RKEntityInteractionSpecification : Codable, Equatable, CustomStringConvertible {
  var trigger: __RKEntityTriggerSpecification
  var action: __RKEntityActionSpecification
  var accessibilityDescription: String?
  init(trigger: __RKEntityTriggerSpecification, action: __RKEntityActionSpecification)
  init(_ trigger: __RKEntityTriggerSpecification, _ action: __RKEntityActionSpecification)
  init(trigger: __RKEntityTriggerSpecification, action: __RKEntityActionSpecification, accessibilityDescription: String? = nil)
  init(_ trigger: __RKEntityTriggerSpecification, _ action: __RKEntityActionSpecification, _ accessibilityDescription: String? = nil)
}

@available(macOS 10.15.4, iOS 13.4, *)
extension __RKEntityInteractionSpecification : __USDEncodablePublic {
}

struct __RKEntityInteractionsComponent {
  class Registration {
    final let componentType: OpaquePointer
  }
  static var registration: __RKEntityInteractionsComponent.Registration?
}

class __RKEntityLookAtCameraAction : __RKEntityAction {
  convenience init(targetEntity: Entity?, duration: Float = 1.0, direction: SIMD3<Float> = SIMD3<Float>(0, 1, 0), upVector: SIMD3<Float> = SIMD3<Float>(0, 1, 0))
  init(targetEntity: Entity?, duration: Float = 1.0, animationDuration: Float = 0.0, direction: SIMD3<Float> = SIMD3<Float>(0, 1, 0), rotation: Float = 0, upVector: SIMD3<Float> = SIMD3<Float>(0, 1, 0), loops: Bool = false)
}

struct __RKEntityLookAtCameraActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var duration: Float?
  var animationDuration: Float?
  var direction: SIMD3<Float>?
  var rotation: Float?
  var upVector: SIMD3<Float>?
  var loops: Bool?
  init(target: UUID, duration: Float = 1.0, animationDuration: Float = 0.0, direction: SIMD3<Float> = SIMD3<Float>(0, 1, 0), rotation: Float = 0.0, upVector: SIMD3<Float> = SIMD3<Float>(0, 1, 0), loops: Bool = false)
}

class __RKEntityLookAtTrigger : __RKEntityTrigger {
}

class __RKEntityLookupTable {
  init()
  func entity(for uuid: UUID) -> Entity?
  func uuid(for entity: Entity) -> UUID?
  @discardableResult
  func updateEntity(_ entity: Entity?, for uuid: UUID) -> Entity?
  func removeAllEntities()
}

enum __RKEntityMoveEase : String, Codable, CaseIterable {
  case none
  case back
  case bounce
  case circle
  case elastic
  case exponential
  case hermite
  case log
  case power
  case sine
}

extension __RKEntityMoveEase : Equatable {
}

extension __RKEntityMoveEase : Hashable {
}

extension __RKEntityMoveEase : RawRepresentable {
}

enum __RKEntityMoveEaseType : String, Codable, CaseIterable {
  case easeIn
  case easeOut
  case easeInEaseOut
}

extension __RKEntityMoveEaseType : Equatable {
}

extension __RKEntityMoveEaseType : Hashable {
}

extension __RKEntityMoveEaseType : RawRepresentable {
}

enum __RKEntityMoveSelection : String, Codable, CaseIterable {
  case local
  case absolute
}

extension __RKEntityMoveSelection : Equatable {
}

extension __RKEntityMoveSelection : Hashable {
}

extension __RKEntityMoveSelection : RawRepresentable {
}

class __RKEntityOrbitEntityAction : __RKEntityAction {
  init(targetEntity: Entity?, pivotEntity: Entity?, duration: Float = 1.0, rotations: Float = 1.0, orbitalAxis: SIMD3<Float> = SIMD3<Float>(0, 1, 0), orientToPath: Bool = false, spinDirection: __RKEntitySpinDirectionType = .clockwise, respectPhysics: Bool = false, physicsAngularCoefficient: Float = 0, physicsLinearCoefficient: Float = 0)
}

struct __RKEntityOrbitEntityActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var pivotTarget: UUID
  var duration: Float?
  var rotations: Float?
  var orbitalAxis: SIMD3<Float>?
  var orientToPath: Bool?
  var spinDirection: __RKEntitySpinDirectionType?
  var respectPhysics: Bool?
  var physicsLinearCoefficient: Float?
  var physicsAngularCoefficient: Float?
  init(target: UUID, pivotTarget: UUID, duration: Float = 1.0, rotations: Float = 1.0, orbitalAxis: SIMD3<Float> = SIMD3<Float>(0, 1, 0), orientToPath: Bool = false, spinDirection: __RKEntitySpinDirectionType = .clockwise, respectPhysics: Bool = false, physicsLinearCoefficient: Float = 0.0, physicsAngularCoefficient: Float = 0.0)
}

class __RKEntityPlacementTrigger : __RKEntityTrigger {
}

class __RKEntityProximityTrigger : __RKEntityTrigger {
  enum ExitType : Int, Codable {
    case none
    case sequence
    case reverse
  }
  var __targetEntity: Entity? { get }
  var distance: Float { get }
  var type: __RKEntityProximityTrigger.ExitType { get }
  var enterFired: Bool { get }
  var exitFired: Bool { get }
  init(targetEntity: Entity?, distance: Float, type: __RKEntityProximityTrigger.ExitType)
}

extension __RKEntityProximityTrigger.ExitType : Equatable {
}

extension __RKEntityProximityTrigger.ExitType : Hashable {
}

extension __RKEntityProximityTrigger.ExitType : RawRepresentable {
}

class __RKEntityRemovalTrigger : __RKEntityTrigger {
}

class __RKEntitySetOpacityAction : __RKEntityVisibilityAction {
  init(targetEntity: Entity?, duration: Float = 1.0, opacity: Float = 1.0)
}

struct __RKEntitySetOpacityActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var duration: Float
  var opacity: Float
  init(target: UUID, duration: Float = 1.0, opacity: Float = 1.0)
}

class __RKEntityShowAction : __RKEntityVisibilityAction {
  init(targetEntity: Entity?, duration: Float = 1.0, distance: Float = 10.0, ease: __RKEntityMoveEase = .none, easeType: __RKEntityMoveEaseType = .easeIn, fadeIn: Bool = false, finalOpacity: Float = 1.0, respectPhysics: Bool = false, physicsAngularCoefficient: Float = 0.0, physicsLinearCoefficient: Float = 0.0, animationStyle: __RKEntityActionAnimationStyle = .basic, buildInAnimationType: __RKEntityShowActionBuildInAnimationType = .none)
}

struct __RKEntityShowActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var duration: Float?
  var distance: Float?
  var ease: __RKEntityMoveEase?
  var easeType: __RKEntityMoveEaseType?
  var fadeIn: Bool?
  var finalOpacity: Float?
  var respectPhysics: Bool?
  var physicsLinearCoefficient: Float?
  var physicsAngularCoefficient: Float?
  var animationStyle: __RKEntityActionAnimationStyle?
  var buildInAnimationType: __RKEntityShowActionBuildInAnimationType?
  init(target: UUID, duration: Float = 1.0, distance: Float = 10.0, ease: __RKEntityMoveEase = .none, easeType: __RKEntityMoveEaseType = .easeIn, fadeIn: Bool = false, finalOpacity: Float = 1.0, respectPhysics: Bool = false, physicsLinearCoefficient: Float = 0.0, physicsAngularCoefficient: Float = 0.0, animationStyle: __RKEntityActionAnimationStyle = .basic, buildInAnimationType: __RKEntityShowActionBuildInAnimationType = .none)
}

enum __RKEntityShowActionBuildInAnimationType : String, Codable, CaseIterable {
  case none
  case moveFromLeft
  case moveFromRight
  case moveFromFront
  case moveFromRear
  case moveFromAbove
  case moveFromBelow
  case pop
  case scale
  case scaleBig
}

extension __RKEntityShowActionBuildInAnimationType : Equatable {
}

extension __RKEntityShowActionBuildInAnimationType : Hashable {
}

extension __RKEntityShowActionBuildInAnimationType : RawRepresentable {
}

class __RKEntitySpinAction : __RKEntityAction {
  init(targetEntity: Entity?, duration: Float, iterations: Float = 1.0, direction: __RKEntitySpinDirectionType, axis: SIMD3<Float> = SIMD3<Float>(0,1,0))
}

struct __RKEntitySpinActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var duration: Float?
  var iterations: Float?
  var direction: __RKEntitySpinDirectionType?
  var axis: SIMD3<Float>?
  init(target: UUID, duration: Float = 1.0, iterations: Float = 1, direction: __RKEntitySpinDirectionType = .clockwise, axis: SIMD3<Float> = SIMD3<Float>(0,1,0))
}

enum __RKEntitySpinDirectionType : String, Codable, CaseIterable {
  case clockwise
  case counterclockwise
}

extension __RKEntitySpinDirectionType : Equatable {
}

extension __RKEntitySpinDirectionType : Hashable {
}

extension __RKEntitySpinDirectionType : RawRepresentable {
}

class __RKEntityStartAnimateAction : __RKEntityAnimateAction {
  init(targetEntity: Entity?, loopCount: Int = 1, multiplePerformBehavior: __RKEntityActionMultiplePerformBehavior = .ignore, clipStart: Double = 0.0, clipDuration: Double = 0.0, clipReversed: Bool = false, animationSpeed: Float = 1.0, clipReverses: Bool = false, muteAudio: Bool = false, audioGain: Double = 1.0, targetAnimationEntity: Entity? = nil)
}

struct __RKEntityStartAnimateActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  let loopCount: Int
  let multiplePerformBehavior: __RKEntityActionMultiplePerformBehavior
  let clipStart: Double
  let clipDuration: Double
  let clipReverses: Bool
  let clipReversed: Bool
  let animationSpeed: Float
  let muteAudio: Bool?
  let audioGain: Double?
  var targetAnimation: UUID?
  init(target: UUID, loopCount: Int = 1, multiplePerformBehavior: __RKEntityActionMultiplePerformBehavior = .ignore, clipStart: Double = 0.0, clipDuration: Double = 0.0, clipReversed: Bool = false, animationSpeed: Float = 1.0, clipReverses: Bool = false)
  @available(macOS 10.15.4, iOS 13.4, *)
  init(target: UUID, loopCount: Int = 1, multiplePerformBehavior: __RKEntityActionMultiplePerformBehavior = .ignore, clipStart: Double = 0.0, clipDuration: Double = 0.0, clipReversed: Bool = false, animationSpeed: Float = 1.0, clipReverses: Bool = false, muteAudio: Bool = false, audioGain: Double = 1.0, targetAnimation: UUID? = nil)
}

class __RKEntityStopAnimateAction : __RKEntityAnimateAction {
}

struct __RKEntityStopAnimateActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  init(target: UUID)
}

class __RKEntitySwapEntityAction : __RKEntityAction {
  init(targetEntity: Entity?, newEntity: Entity?, buildOutAction: __RKEntityHideAction, buildInAction: __RKEntityShowAction)
}

struct __RKEntitySwapEntityActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var newTarget: UUID
  var buildOutAction: __RKEntityHideActionArguments
  var buildInAction: __RKEntityShowActionArguments
  init(target: UUID, newTarget: UUID, buildOutAction: __RKEntityHideActionArguments, buildInAction: __RKEntityShowActionArguments)
}

struct __RKEntityTagsComponent {
  var tags: [String] { mutating get set }
  class Registration {
  }
  static var registration: __RKEntityTagsComponent.Registration?
}

class __RKEntityTapTrigger : __RKEntityTrigger {
  var targetEntity: Entity?
  init(targetEntity: Entity?, reversible: Bool? = false)
}

class __RKEntityToggleAnimateAction : __RKEntityAnimateAction {
}

struct __RKEntityToggleAnimateActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  init(target: UUID)
}

class __RKEntityToggleVisibilityAction : __RKEntityVisibilityAction {
}

struct __RKEntityToggleVisibilityActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  init(target: UUID)
}

class __RKEntityTransformAction : __RKEntityAction {
  init(targetEntity: Entity?, location: SIMD3<Float>?, orientation: simd_quatf?, scale: Float?, duration: Float, moveType: __RKEntityMoveSelection, ease: __RKEntityMoveEase = .none, easeType: __RKEntityMoveEaseType = .easeIn, respectPhysics: Bool = false, physicsAngularCoefficient: Float = 0.0, physicsLinearCoefficient: Float = 0.0)
}

struct __RKEntityTransformActionArguments : Codable, Equatable, __RKSpecificationHasTarget {
  var location: SIMD3<Float>?
  var orientation: simd_quatf?
  var scale: Float?
  var duration: Float?
  var moveType: __RKEntityMoveSelection?
  var ease: __RKEntityMoveEase?
  var easeType: __RKEntityMoveEaseType?
  var respectPhysics: Bool?
  var physicsLinearCoefficient: Float?
  var physicsAngularCoefficient: Float?
  init(target: UUID, location: SIMD3<Float>?, orientation: simd_quatf?, scale: Float?, duration: Float = 1.0, moveType: __RKEntityMoveSelection = .local, ease: __RKEntityMoveEase = .none, easeType: __RKEntityMoveEaseType = .easeIn, respectPhysics: Bool = false, physicsLinearCoefficient: Float = 0.0, physicsAngularCoefficient: Float = 0.0)
}

class __RKEntityTrigger : CustomStringConvertible {
  init()
  var reversible: Bool
  var shouldReverse: Bool
  var shouldFireAlternate: Bool
  func matches(with trigger: __RKEntityTrigger) -> Bool
}

extension __RKEntityTrigger {
  static func trigger(for specification: __RKEntityTriggerSpecification, entityLookupTable: __RKEntityLookupTable) -> __RKEntityTrigger
}

class __RKEntityTriggerGroup : __RKEntityTrigger {
  var triggers: [__RKEntityTrigger] { get }
  init(triggers: [__RKEntityTrigger])
}

enum __RKEntityTriggerSpecification : Codable, Equatable {
  case drag
  case light
  case lookAt
  case placement
  case proximity(target: UUID, distance: Float, type: __RKEntityProximityTrigger.ExitType)
  case removal
  case sound
  case start
  case tapTarget(target: UUID)
  case timer
  case collision(target: UUID, collidingEntities: [UUID], tags: [String])
  case custom(tag: String)
  case customWithArguments(identifier: String, customArguments: [String : String]?)
  case group(triggers: [__RKEntityTriggerSpecification])
  enum Name : String {
    case drag
    case light
    case lookAt
    case placement
    case proximity
    case removal
    case sound
    case start
    case tapTarget
    case timer
    case collision
    case custom
    case customWithArguments
    case group
  }
  var name: __RKEntityTriggerSpecification.Name { get }
}

@available(macOS 10.15.4, iOS 13.4, *)
extension __RKEntityTriggerSpecification : __USDEncodablePublic {
}

extension __RKEntityTriggerSpecification.Name : Equatable {
}

extension __RKEntityTriggerSpecification.Name : Hashable {
}

extension __RKEntityTriggerSpecification.Name : RawRepresentable {
}

struct __RKEntityUUIDComponent {
  class Registration {
    final let componentType: OpaquePointer
  }
  static var registration: __RKEntityUUIDComponent.Registration?
}

class __RKEntityVisibilityAction : __RKEntityAction {
}

class __RKFadeSceneAction : __RKEntityAction {
  init(targetOpacity: Float, duration: Float)
}

struct __RKFadeSceneActionArguments : Codable, Equatable {
  var targetOpacity: Float
  var duration: Float?
  init(targetOpacity: Float, duration: Float = 0.0)
}

class __RKLightTrigger : __RKEntityTrigger {
}

struct __RKMaterialParameterBlock {
  enum Parameter : ExpressibleByNilLiteral, ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral {
    case texture(TextureResource)
    case float(Float)
    case float2(SIMD2<Float>)
    case float3(SIMD3<Float>)
    case float4(SIMD4<Float>)
    case float2x2(float2x2)
    case float3x3(float3x3)
    case float4x4(float4x4)
    case `default`
  }
  enum TransparentPass : String, CaseIterable {
    case Transparent
    case TransparentAR
    case TransparentDynamicLighting
    case TransparentARDynamicLighting
  }
  enum OpaquePass : String, CaseIterable {
    case Opaque
    case OpaqueAR
    case OpaqueDynamicLighting
    case OpaqueARDynamicLighting
    case Shadow
  }
  let transparentPassTechniqueMapping: [(pass: __RKMaterialParameterBlock.TransparentPass, technique: String)]
  var transparentPassTechniqueMappingEnabled: Bool { get }
  mutating func setTransparentPassTechniqueMappingEnabled(_ enabled: Bool)
  var parameters: [String : __RKMaterialParameterBlock.Parameter] { get }
  mutating func set(parameter name: String, value: __RKMaterialParameterBlock.Parameter)
  mutating func reset()
  init()
  init(transparentPassTechniqueMappping mapping: [(__RKMaterialParameterBlock.TransparentPass, String)])
  static func __fromCore(_ coreComponent: __ComponentRef, index: size_t) -> __RKMaterialParameterBlock
  func __toCore(_ coreComponent: __ComponentRef, index: size_t)
}

extension __RKMaterialParameterBlock.TransparentPass : Equatable {
}

extension __RKMaterialParameterBlock.TransparentPass : Hashable {
}

extension __RKMaterialParameterBlock.TransparentPass : RawRepresentable {
}

extension __RKMaterialParameterBlock.OpaquePass : Equatable {
}

extension __RKMaterialParameterBlock.OpaquePass : Hashable {
}

extension __RKMaterialParameterBlock.OpaquePass : RawRepresentable {
}

class __RKRuntimeSceneCoordinator {
  init()
  func willSwap(fromEntity: Entity, toEntity: Entity?, anchoringTarget: AnchoringComponent.Target?)
  func didSwap(fromEntity: Entity, toEntity: Entity?, anchoringTarget: AnchoringComponent.Target?)
  func addObserver(observer: __RKRuntimeSceneCoordinatorObserver)
  func removeObserver(observer: __RKRuntimeSceneCoordinatorObserver)
}

protocol __RKRuntimeSceneCoordinatorObserver : AnyObject {
  func runtimeSceneCoordinator(_ coordinator: __RKRuntimeSceneCoordinator, willSwapFromEntity fromEntity: Entity, toEntity: Entity?, anchoringTarget: AnchoringComponent.Target?)
  func runtimeSceneCoordinator(_ coordinator: __RKRuntimeSceneCoordinator, didSwapFromEntity fromEntity: Entity, toEntity: Entity?, anchoringTarget: AnchoringComponent.Target?)
}

class __RKSceneAssetLookupTable {
  static var shared: __RKSceneAssetLookupTable
  func reSceneAsset(for uuid: UUID) -> __REAsset?
  func registerRESceneAsset(_ reSceneAsset: __REAsset, for uuid: UUID)
  func removeAllRESceneAssets()
}

struct __RKScenePhysics {
  var gravity: SIMD3<Float>
  var adaptiveTimeStep: Bool
  class Registration {
    final let componentType: OpaquePointer
  }
  static var registration: __RKScenePhysics.Registration?
}

struct __RKSceneUUIDComponent {
  class Registration {
    final let componentType: OpaquePointer
  }
  static var registration: __RKSceneUUIDComponent.Registration?
}

class __RKSimulationSceneCoordinator {
  @available(*, deprecated, message: "Please use the per-interaction-service scene coordinator.")
  static var shared: __RKSimulationSceneCoordinator
  init()
  weak var delegate: @sil_weak __RKSimulationSceneCoordinatorDelegate?
  var simulationState: __RKSimulationSceneCoordinatorState
  func changeToScene(with identifier: UUID) -> Bool
}

protocol __RKSimulationSceneCoordinatorDelegate : AnyObject {
  func coordinator(_ coordinator: __RKSimulationSceneCoordinator, didRequestToChangeToScene sceneIdentifier: UUID) -> Bool
}

enum __RKSimulationSceneCoordinatorState {
  case stopped
  case running
}

extension __RKSimulationSceneCoordinatorState : Equatable {
}

extension __RKSimulationSceneCoordinatorState : Hashable {
}

class __RKSoundTrigger : __RKEntityTrigger {
}

protocol __RKSpecificationHasTarget {
  var target: UUID { get set }
}

class __RKStartTrigger : __RKEntityTrigger {
}

class __RKTimerTrigger : __RKEntityTrigger {
}

class __RKVisibilityBaseAnimation {
}

class __RKVisibilityHideDropAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityHideLaunchAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityHideMoveOutAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityHidePopAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityHideScaleAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityHideScaleUpAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityShowDropAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityShowMoveInAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityShowPopAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityShowRiseAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityShowScaleAnimation : __RKVisibilityBaseAnimation {
}

class __RKVisibilityShowScaleDownAnimation : __RKVisibilityBaseAnimation {
}

class __RKWaitAction : __RKEntityAction {
  init(duration: Float, block: @escaping () -> Void = { })
}

struct __RKWaitActionArguments : Codable, Equatable {
  var duration: Float
  init(duration: Float)
}

enum __RealityFileError : Error, CustomDebugStringConvertible {
  case unsupportedVersion(Int)
}

class __RealityFileURLResolver {
  @available(*, deprecated, message: "Don't use this variable")
  weak static var weakShared: @sil_weak __RealityFileURLResolver?
  @available(*, deprecated, message: "use the \"instance(for assetService: __REAssetService)\" instead")
  static var shared: __RealityFileURLResolver { get }
  static func instance(for assetService: __REAssetService) -> __RealityFileURLResolver
  @available(*, deprecated, message: "use the \"init(_ assetService: __REAssetService)\" instead")
  init()
  static let assetPathPrefix: String
  static let schemePrefix: String
  func registerRealityFileResolver(assetService: __REAssetService)
  func registerRealityFileResolver()
  func unregisterRealityFileResolver()
  func resolvedURL(for subpath: String) -> URL?
  func resolvedURL(group: String, name: String) -> URL?
  func setResolvedURLPath(_ resolvedURLPath: String, for key: String)
  func createSchemePrefix(with realityFileName: String) -> String
  func createSubAssetPath(with assetName: String) -> String
  @available(*, deprecated, message: "use the static version instead")
  func createFullSchemePath(group: String, name: String) -> String
  static func createFullSchemePath(group: String, name: String) -> String
}

struct __RenderFlagsRef {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __RenderFlagsRef
}

protocol __RenderService {
  var device: MTLDevice { get }
  var __coreRenderManager: OpaquePointer { get }
}

struct __SRTRef {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __SRTRef
}

final class __SceneImportOperation {
  @available(macOS 10.15.4, iOS 13.4, *)
  struct __ImportedScene {
    let sceneIdentifier: UUID
    let sceneName: String
    let sceneAsset: __REAsset
    let sceneActive: Bool
  }
  @available(macOS 10.15.4, iOS 13.4, *)
  final var __url: URL? { get }
  @available(macOS 10.15.4, iOS 13.4, *)
  final var __importedScenes: [__SceneImportOperation.__ImportedScene] { get }
  final var __coreOperation: __SceneImportOperationRef { get }
  convenience init(url: URL, serviceLocator: __ServiceLocator)
  convenience init?(bundle: Bundle, resourceName: String, serviceLocator: __ServiceLocator)
  @discardableResult
  final func setIsolateFromEngine(_ isolate: Bool) -> Self
  @discardableResult
  final func setCompressTextures(_ compressTextures: Bool) -> Self
  @discardableResult
  final func setMergeIntoSingleEntity(_ mergeEntities: Bool) -> Self
  @discardableResult
  final func setPlayDefaultAnimationsImmediately(_ playImmediately: Bool) -> Self
  @discardableResult
  final func setGenerateDecimatedMesh(_ decimateMesh: Bool) -> Self
  @discardableResult
  final func setEnableAnimationInterpolation(_ enableInterpolation: Bool) -> Self
  @discardableResult
  final func setRootSceneAssetPath(_ assetPath: String) -> Self
  @discardableResult
  final func setMaterialDefinitionPath(_ materialDefinitionPath: String) -> Self
  @discardableResult
  final func setApplyUnitConversionScale(_ applyScale: Bool) -> Self
  @discardableResult
  final func setRetainSubdivisionSurfaceInfo(_ importSubdivisionSurfaces: Bool) -> Self
  final func run() throws
  final func publishToEngine() throws
  @available(macOS, deprecated: 10.15.4)
  @available(iOS, deprecated: 13.4)
  final func getSceneResource() -> __SceneResource?
}

extension __SceneImportOperation {
  final func makeEntity() throws -> Entity
  final func makeModelEntity() throws -> ModelEntity
}

struct __SceneImportOperationRef : Equatable {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __SceneImportOperationRef
}

@available(iOS, introduced: 13.4, deprecated: 13.4, message: "Use the alternative that includes `actionAssets`")
@available(macOS, introduced: 10.15.4, deprecated: 10.15.4, message: "Use the alternative that includes `actionAssets`")
func __SceneImportOperation_addCustomUSDDataToScene(uskNode: __USKNodeWrapper, uskScene: __USKSceneWrapper, scene: Scene, sceneIdentifier: UUID, usdNodeToEntityMapping: [String : String], scenePathToUUIDMapping: [String : UUID], fileName: String, error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool

@available(macOS 10.15.4, iOS 13.4, *)
func __SceneImportOperation_addCustomUSDDataToScene(uskNode: __USKNodeWrapper, uskScene: __USKSceneWrapper, scene: Scene, sceneIdentifier: UUID, usdNodeToEntityMapping: [String : String], scenePathToUUIDMapping: [String : UUID], actionAssets: [String : String], fileName: String) -> Error?

struct __SceneRef {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __SceneRef
}

final class __SceneResource {
  final var coreHandle: __AssetRef { get }
  static func fromCoreRetained(_ asset: __AssetRef) -> __SceneResource
  static func fromCoreUnretained(_ asset: __AssetRef) -> __SceneResource
  final func makeScene(named name: String) -> Scene?
}

final class __SceneResourceCache {
  final class Entry {
  }
  @available(macOS 10.15.4, iOS 13.4, *)
  static func __init() -> __SceneResourceCache
  @available(macOS 10.15.4, iOS 13.4, *)
  final func __registerImportedScenes(url: URL, importedScenes: [__SceneImportOperation.__ImportedScene]) throws -> __SceneResourceLoadResult
}

@available(macOS 10.15.4, iOS 13.4, *)
struct __SceneResourceLoadResult {
}

@available(macOS 10.15.4, iOS 13.4, *)
extension __SceneResourceLoadResult {
  func __makeEntity() throws -> Entity
  func __makeAnchorEntity() throws -> Entity
}

struct __SceneResourceLoadResultLoadContext {
}

protocol __SceneService {
  var scenes: [Scene] { get }
  func append(scene: Scene)
  func remove(scene: Scene)
  var coreECSManager: __REECSManagerRef { get }
  func coreCustomComponentType(_ attributeType: Component.Type) -> OpaquePointer
}

class __ServiceLocator {
  static var __sharedEngine: __Engine!
  static var hasSharedServiceLocator: Bool { get }
  static var shared: __ServiceLocator { get }
  static func __createSharedIfNeeded(with configuration: __Engine.Configuration)
  var __engineRef: __EngineRef { get }
  unowned var engine: @sil_unowned __Engine
  var __renderService: __RenderService { get }
  var __sceneService: __SceneService { get }
  var __assetService: __REAssetService { get }
}

struct __StartupOptionsRef {
  func __as<T>(_ type: T.Type) -> T
  static func __fromCore(_ core: Any) -> __StartupOptionsRef
}

@available(macOS 10.15.4, iOS 13.4, *)
protocol __USDEncodablePublic {
  func encode(to encoder: __USDEncoder, at parentPath: __USKObjectPathWrapper) throws -> __USKNodeWrapper
  @available(*, deprecated)
  func encode(to encoder: __USDEncoder, at parentPath: __USKObjectPathWrapper, sceneSpecifier: __USKNodeSpecifierTypeWrapper) throws -> __USKNodeWrapper
}

@available(macOS 10.15.4, iOS 13.4, *)
struct __USDEncoder {
  var exportContext: __USDExportContext
  init(exportContext: __USDExportContext)
}

@available(macOS 10.15.4, iOS 13.4, *)
struct __USDExportContext {
  typealias AssetResolverCallback = (URL) throws -> URL?
  class InstanceMapper {
    func addMapping(from: UUID?, to: __USKObjectPathWrapper)
    func getMapping(_ from: UUID) -> __USKObjectPathWrapper?
  }
  var instanceMapper: __USDExportContext.InstanceMapper
  @available(*, deprecated, message: "Use init(with:resolver:)")
  init?(with scene: __USKSceneWrapper)
  init?(with scene: __USKSceneWrapper, resolver: __USDExportContext.AssetResolverCallback?)
}

@available(macOS 10.15.4, iOS 13.4, *)
struct __USKNodeSpecifierTypeWrapper {
  let erasedValue: Any
  init<T>(_ value: T)
}

@available(macOS 10.15.4, iOS 13.4, *)
struct __USKNodeWrapper {
  let erasedValue: Any
  init<T>(_ value: T)
}

@available(macOS 10.15.4, iOS 13.4, *)
struct __USKObjectPathWrapper {
  let erasedValue: Any
  init<T>(_ value: T)
}

@available(macOS 10.15.4, iOS 13.4, *)
struct __USKSceneWrapper {
  let erasedValue: Any
  init<T>(_ value: T)
}

class __VideoResource : Resource {
  static func load(named name: String, in bundle: Bundle? = nil) throws -> __VideoResource
}

@inlinable func convertToDegrees(radians: Float) -> Float

@inlinable func convertToRadians(degrees: Float) -> Float

@inlinable func log2RoundUp(_ v: Int32) -> Int32

extension SIMD3 where Scalar == Float {
  @inlinable static var one: SIMD3<Float> { get }
  @inlinable static var positiveInfinity: SIMD3<Float> { get }
  @inlinable static var negativeInfinity: SIMD3<Float> { get }
}

extension simd_float4x4 {
  @inlinable var identity: float4x4 { get }
}

extension simd_quatf {
  @usableFromInline
  static let identity: simd_quatf
}

extension MCPeerID : SynchronizationPeerID {
}

extension SIMD3 where Scalar == Float {
  @usableFromInline
  var _xy: SIMD2<Float>
}

extension SIMD4 where Scalar == Float {
  @usableFromInline
  var _xyz: SIMD3<Float>
}

extension simd_float3x3 {
  @inlinable init(_ matrix: REMatrix4x4F)
}

extension simd_float4x4 {
  @inlinable static var identity: REMatrix4x4F { get }
  @inlinable init(rows: (SIMD4<Float>, SIMD4<Float>, SIMD4<Float>, SIMD4<Float>))
  @inlinable init(rows r: ((Float, Float, Float, Float), (Float, Float, Float, Float), (Float, Float, Float, Float), (Float, Float, Float, Float)))
  @inlinable init(translation t: SIMD3<Float>)
  @inlinable init(scale s: SIMD3<Float>)
  @inlinable init(rotation: simd_quatf)
  @inlinable init(translation: SIMD3<Float>, rotation: simd_quatf, scale: SIMD3<Float>)
  @inlinable func scaled(_ scale: SIMD3<Float>) -> REMatrix4x4F
  @inlinable func translated(_ trans: SIMD3<Float>) -> REMatrix4x4F
  @inlinable mutating func scale(_ scale: SIMD3<Float>)
  @inlinable mutating func translate(_ trans: SIMD3<Float>)
  @inlinable var scale: SIMD3<Float>
  @usableFromInline
  var rotation: simd_quatf
  @inlinable var translation: SIMD3<Float>
  @inlinable func decompose() -> (translation: SIMD3<Float>, rotation: simd_quatf, scale: SIMD3<Float>)
}

extension simd_quatf {
  @usableFromInline
  init(eulerAngles: SIMD3<Float>, order: RotationOrder = .default)
}

