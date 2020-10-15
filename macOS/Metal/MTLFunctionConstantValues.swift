
@available(macOS 10.12, *)
class MTLFunctionConstantValues : NSObject, NSCopying {
  func setConstantValue(_ value: UnsafeRawPointer, type: MTLDataType, index: Int)
  func __setConstantValues(_ values: UnsafeRawPointer, type: MTLDataType, with range: NSRange)
  func setConstantValue(_ value: UnsafeRawPointer, type: MTLDataType, withName name: String)
  func reset()
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, *)
extension MTLFunctionConstantValues {
  func setConstantValues(_ values: UnsafeRawPointer, type: MTLDataType, range: Range<Int>)
}
