
typealias SCNFloat = CGFloat

extension SCNVector3 {
  init(_ x: Float, _ y: Float, _ z: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double)
  init(_ x: Int, _ y: Int, _ z: Int)
  init(_ v: SIMD3<Float>)
  init(_ v: SIMD3<Double>)
}

extension SIMD3 where Scalar == Float {
  init(_ v: SCNVector3)
}

extension SIMD3 where Scalar == Double {
  init(_ v: SCNVector3)
}

extension SCNVector4 {
  init(_ x: Float, _ y: Float, _ z: Float, _ w: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double, _ w: Double)
  init(_ x: Int, _ y: Int, _ z: Int, _ w: Int)
  init(_ v: SIMD4<Float>)
  init(_ v: SIMD4<Double>)
}

extension SIMD4 where Scalar == Float {
  init(_ v: SCNVector4)
}

extension SIMD4 where Scalar == Double {
  init(_ v: SCNVector4)
}

extension CATransform3D {
  init(_ m: float4x4)
  init(_ m: double4x4)
}

extension simd_float4x4 {
  init(_ m: SCNMatrix4)
}

extension simd_double4x4 {
  init(_ m: SCNMatrix4)
}

@available(iOS 8.0, macOS 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType>(indices: [IndexType], primitiveType: SCNGeometryPrimitiveType) where IndexType : FixedWidthInteger
}

@available(iOS 8.0, macOS 10.8, *)
extension SCNGeometrySource {
  @nonobjc convenience init(vertices: [SCNVector3])
  @nonobjc convenience init(normals: [SCNVector3])
  @nonobjc convenience init(textureCoordinates: [CGPoint])
}

@available(iOS 8.0, macOS 10.10, *)
extension SCNBoundingVolume {
  var boundingBox: (min: SCNVector3, max: SCNVector3)
  var boundingSphere: (center: SCNVector3, radius: Float) { get }
}

@available(iOS 8.0, macOS 10.8, *)
extension SCNSceneSource {
  func entryWithIdentifier<T>(_ uid: String, withClass entryClass: T.Type) -> T? where T : AnyObject
}

extension SCNVector3 : _ObjectiveCBridgeable {
}

extension SCNVector4 : _ObjectiveCBridgeable {
}


// MARK: - SwiftUI Additions


// Available when SwiftUI is imported with SceneKit
var SWIFT_TYPEDEFS: Int32 { get }

// Available when SwiftUI is imported with SceneKit
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct SceneView : View {
  struct Options : OptionSet {
    static let allowsCameraControl: SceneView.Options
    static let rendersContinuously: SceneView.Options
    static let autoenablesDefaultLighting: SceneView.Options
    static let jitteringEnabled: SceneView.Options
    static let temporalAntialiasingEnabled: SceneView.Options
  }
  init(scene: SCNScene? = nil, pointOfView: SCNNode? = nil, options: SceneView.Options = [], preferredFramesPerSecond: Int = 60, antialiasingMode: SCNAntialiasingMode = .multisampling4X, delegate: SCNSceneRendererDelegate? = nil, technique: SCNTechnique? = nil)
}

// Available when SwiftUI is imported with SceneKit
typealias char16_t = uint_least16_t

// Available when SwiftUI is imported with SceneKit
typealias char32_t = uint_least32_t

// Available when SwiftUI is imported with SceneKit
typealias swift_double2 = SIMD2<Double>

// Available when SwiftUI is imported with SceneKit
typealias swift_double3 = SIMD3<Double>

// Available when SwiftUI is imported with SceneKit
typealias swift_double4 = SIMD4<Double>

// Available when SwiftUI is imported with SceneKit
typealias swift_float2 = SIMD2<Float>

// Available when SwiftUI is imported with SceneKit
typealias swift_float3 = SIMD3<Float>

// Available when SwiftUI is imported with SceneKit
typealias swift_float4 = SIMD4<Float>

// Available when SwiftUI is imported with SceneKit
typealias swift_int2 = SIMD2<Int32>

// Available when SwiftUI is imported with SceneKit
typealias swift_int3 = SIMD3<Int32>

// Available when SwiftUI is imported with SceneKit
typealias swift_int4 = SIMD4<Int32>

// Available when SwiftUI is imported with SceneKit
typealias swift_uint2 = SIMD2<UInt32>

// Available when SwiftUI is imported with SceneKit
typealias swift_uint3 = SIMD3<UInt32>

// Available when SwiftUI is imported with SceneKit
typealias swift_uint4 = SIMD4<UInt32>

