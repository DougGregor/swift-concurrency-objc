
@available(macOS 10.12, *)
protocol SKWarpable : NSObjectProtocol {
  var warpGeometry: SKWarpGeometry? { get set }
  var subdivisionLevels: Int { get set }
}
@available(macOS 10.12, *)
class SKWarpGeometry : NSObject, NSCopying, NSSecureCoding {
}
@available(macOS 10.12, *)
class SKWarpGeometryGrid : SKWarpGeometry, NSSecureCoding {
  convenience init(columns cols: Int, rows: Int)
  init(__columns cols: Int, rows: Int, sourcePositions: UnsafePointer<vector_float2>?, destPositions: UnsafePointer<vector_float2>?)
  var numberOfColumns: Int { get }
  var numberOfRows: Int { get }
  var vertexCount: Int { get }
  func sourcePosition(at index: Int) -> vector_float2
  func destPosition(at index: Int) -> vector_float2
  func __replacingSourcePositions(_ sourcePositions: UnsafePointer<vector_float2>) -> Self
  func __replacingDestPositions(_ destPositions: UnsafePointer<vector_float2>) -> Self
}

@available(iOS 10.0, macOS 10.12, tvOS 10.0, watchOS 3.0, *)
extension SKWarpGeometryGrid {
  convenience init(columns: Int, rows: Int, sourcePositions: [SIMD2<Float>] = [SIMD2<Float>](), destinationPositions: [SIMD2<Float>] = [SIMD2<Float>]())
  func replacingBySourcePositions(positions source: [SIMD2<Float>]) -> SKWarpGeometryGrid
  func replacingByDestinationPositions(positions destination: [SIMD2<Float>]) -> SKWarpGeometryGrid
}
extension SKAction {
  @available(macOS 10.12, *)
  class func warp(to warp: SKWarpGeometry, duration: TimeInterval) -> SKAction?
  @available(macOS 10.12, *)
  class func animate(withWarps warps: [SKWarpGeometry], times: [NSNumber]) -> SKAction?
  @available(macOS 10.12, *)
  class func animate(withWarps warps: [SKWarpGeometry], times: [NSNumber], restore: Bool) -> SKAction?
}
