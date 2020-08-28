
@available(macOS 11.0, *)
struct MTLAccelerationStructureUsage : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var refit: MTLAccelerationStructureUsage { get }
  static var preferFastBuild: MTLAccelerationStructureUsage { get }
}
@available(macOS 11.0, *)
struct MTLAccelerationStructureInstanceOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var disableTriangleCulling: MTLAccelerationStructureInstanceOptions { get }
  static var triangleFrontFacingWindingCounterClockwise: MTLAccelerationStructureInstanceOptions { get }
  static var opaque: MTLAccelerationStructureInstanceOptions { get }
  static var nonOpaque: MTLAccelerationStructureInstanceOptions { get }
}
@available(macOS 11.0, *)
class MTLAccelerationStructureDescriptor : NSObject, NSCopying {
  var usage: MTLAccelerationStructureUsage
}
@available(macOS 11.0, *)
class MTLAccelerationStructureGeometryDescriptor : NSObject, NSCopying {
  var intersectionFunctionTableOffset: Int
  var opaque: Bool
  var allowDuplicateIntersectionFunctionInvocation: Bool
}
@available(macOS 11.0, *)
class MTLPrimitiveAccelerationStructureDescriptor : MTLAccelerationStructureDescriptor {
  var geometryDescriptors: [MTLAccelerationStructureGeometryDescriptor]?
}
@available(macOS 11.0, *)
class MTLAccelerationStructureTriangleGeometryDescriptor : MTLAccelerationStructureGeometryDescriptor {
  var vertexBuffer: MTLBuffer?
  var vertexBufferOffset: Int
  var vertexStride: Int
  var indexBuffer: MTLBuffer?
  var indexBufferOffset: Int
  var indexType: MTLIndexType
  var triangleCount: Int
}
@available(macOS 11.0, *)
class MTLAccelerationStructureBoundingBoxGeometryDescriptor : MTLAccelerationStructureGeometryDescriptor {
  var boundingBoxBuffer: MTLBuffer?
  var boundingBoxBufferOffset: Int
  var boundingBoxStride: Int
  var boundingBoxCount: Int
}
struct MTLAccelerationStructureInstanceDescriptor {
  var transformationMatrix: MTLPackedFloat4x3
  var options: MTLAccelerationStructureInstanceOptions
  var mask: UInt32
  var intersectionFunctionTableOffset: UInt32
  var accelerationStructureIndex: UInt32
  init()
  init(transformationMatrix: MTLPackedFloat4x3, options: MTLAccelerationStructureInstanceOptions, mask: UInt32, intersectionFunctionTableOffset: UInt32, accelerationStructureIndex: UInt32)
}
@available(macOS 11.0, *)
class MTLInstanceAccelerationStructureDescriptor : MTLAccelerationStructureDescriptor {
  var instanceDescriptorBuffer: MTLBuffer?
  var instanceDescriptorBufferOffset: Int
  var instanceDescriptorStride: Int
  var instanceCount: Int
  var instancedAccelerationStructures: [MTLAccelerationStructure]?
}
@available(macOS 11.0, *)
protocol MTLAccelerationStructure : MTLResource {
  var size: Int { get }
}
