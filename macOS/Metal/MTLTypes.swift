
struct MTLOrigin {
  var x: Int
  var y: Int
  var z: Int
  init()
  init(x: Int, y: Int, z: Int)
}
func MTLOriginMake(_ x: Int, _ y: Int, _ z: Int) -> MTLOrigin
struct MTLSize {
  var width: Int
  var height: Int
  var depth: Int
  init()
  init(width: Int, height: Int, depth: Int)
}
func MTLSizeMake(_ width: Int, _ height: Int, _ depth: Int) -> MTLSize
struct MTLRegion {
  var origin: MTLOrigin
  var size: MTLSize
  init()
  init(origin: MTLOrigin, size: MTLSize)
}
func MTLRegionMake1D(_ x: Int, _ width: Int) -> MTLRegion
func MTLRegionMake2D(_ x: Int, _ y: Int, _ width: Int, _ height: Int) -> MTLRegion
func MTLRegionMake3D(_ x: Int, _ y: Int, _ z: Int, _ width: Int, _ height: Int, _ depth: Int) -> MTLRegion
struct MTLSamplePosition {
  var x: Float
  var y: Float
  init()
  init(x: Float, y: Float)
}
@available(macOS 10.13, *)
func MTLSamplePositionMake(_ x: Float, _ y: Float) -> MTLSamplePosition
typealias MTLCoordinate2D = MTLSamplePosition
func MTLCoordinate2DMake(_ x: Float, _ y: Float) -> MTLCoordinate2D
