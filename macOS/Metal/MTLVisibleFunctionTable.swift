
@available(macOS 11.0, *)
class MTLVisibleFunctionTableDescriptor : NSObject, NSCopying {
  var functionCount: Int
}
@available(macOS 11.0, *)
protocol MTLVisibleFunctionTable : MTLResource {
  func setFunction(_ function: MTLFunctionHandle?, index: Int)
  func __setFunctions(_ functions: UnsafePointer<MTLFunctionHandle?>, with range: NSRange)
}

@available(macOS 11.0, iOS 14.0, *)
@available(tvOS, unavailable)
extension MTLVisibleFunctionTable {
  func setFunctions(_ functions: [MTLFunctionHandle?], range: Range<Int>)
}
