
@available(iOS 9.0, *)
let kUTTypeAlembic: String
@available(iOS 9.0, *)
let kUTType3dObject: String
@available(iOS 9.0, *)
let kUTTypePolygon: String
@available(iOS 9.0, *)
let kUTTypeStereolithography: String
@available(iOS 10.0, *)
let kUTTypeUniversalSceneDescription: String
enum MDLIndexBitDepth : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case invalid
  case uInt8
  static var uint8: MDLIndexBitDepth { get }
  case uInt16
  static var uint16: MDLIndexBitDepth { get }
  case uInt32
  static var uint32: MDLIndexBitDepth { get }
}
enum MDLGeometryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case points
  case lines
  case triangles
  case triangleStrips
  case quads
  case variableTopology
}
enum MDLProbePlacement : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case uniformGrid
  case irradianceDistribution
}
@available(iOS 11.0, *)
enum MDLDataPrecision : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case undefined
  case float
  case double
}
@available(iOS 9.0, *)
protocol MDLNamed {
  var name: String { get set }
}
@available(iOS 9.0, *)
protocol MDLComponent : NSObjectProtocol {
}
@available(iOS 9.0, *)
protocol MDLObjectContainerComponent : NSFastEnumeration, MDLComponent {
  func add(_ object: MDLObject)
  func remove(_ object: MDLObject)
  subscript(index: Int) -> MDLObject { get }
  @available(iOS 11.0, *)
  var count: Int { get }
  var objects: [MDLObject] { get }
}
struct MDLAxisAlignedBoundingBox {
  var maxBounds: vector_float3
  var minBounds: vector_float3
  init()
  init(maxBounds: vector_float3, minBounds: vector_float3)
}
