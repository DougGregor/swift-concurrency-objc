
@available(iOS 14.0, *)
class MLCTensorData : NSObject {
  var bytes: UnsafeMutableRawPointer { get }
  var length: Int { get }
  convenience init(bytesNoCopy bytes: UnsafeMutableRawPointer, length: Int)
  convenience init(immutableBytesNoCopy bytes: UnsafeRawPointer, length: Int)
}
