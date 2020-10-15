
@available(macOS 11.0, *)
struct MTLIntersectionFunctionSignature : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var instancing: MTLIntersectionFunctionSignature { get }
  static var triangleData: MTLIntersectionFunctionSignature { get }
  static var worldSpaceData: MTLIntersectionFunctionSignature { get }
}
@available(macOS 11.0, *)
class MTLIntersectionFunctionTableDescriptor : NSObject, NSCopying {
  var functionCount: Int
}
@available(macOS 11.0, *)
protocol MTLIntersectionFunctionTable : MTLResource {
  func setBuffer(_ buffer: MTLBuffer?, offset: Int, index: Int)
  func __setBuffers(_ buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, with range: NSRange)
  func setFunction(_ function: MTLFunctionHandle?, index: Int)
  func __setFunctions(_ functions: UnsafePointer<MTLFunctionHandle?>, with range: NSRange)
  func setOpaqueTriangleIntersectionFunction(signature: MTLIntersectionFunctionSignature, index: Int)
  func setOpaqueTriangleIntersectionFunction(signature: MTLIntersectionFunctionSignature, range: NSRange)
  func setVisibleFunctionTable(_ functionTable: MTLVisibleFunctionTable?, bufferIndex: Int)
  func __setVisibleFunctionTables(_ functionTables: UnsafePointer<MTLVisibleFunctionTable?>, withBufferRange bufferRange: NSRange)
}

@available(macOS 11.0, iOS 14.0, *)
@available(tvOS, unavailable)
extension MTLIntersectionFunctionTable {
  func setBuffers(_ buffers: [MTLBuffer?], offsets: [Int], range: Range<Int>)
  func setFunctions(_ functions: [MTLFunctionHandle?], range: Range<Int>)
  func setVisibleFunctionTables(_ functionTables: [MTLVisibleFunctionTable?], bufferRange: Range<Int>)
}
