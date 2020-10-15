
enum MDLMeshBufferType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case vertex
  case index
}
@available(macOS 10.11, *)
class MDLMeshBufferMap : NSObject {
  init(bytes: UnsafeMutableRawPointer, deallocator: (() -> Void)? = nil)
  var bytes: UnsafeMutableRawPointer { get }
}
@available(macOS 10.11, *)
protocol MDLMeshBuffer : NSCopying, NSObjectProtocol {
  func fill(_ data: Data, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
@available(macOS 10.11, *)
class MDLMeshBufferData : NSObject, MDLMeshBuffer {
  init(type: MDLMeshBufferType, length: Int)
  init(type: MDLMeshBufferType, data: Data?)
  var data: Data { get }
}
@available(macOS 10.11, *)
protocol MDLMeshBufferZone : NSObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(macOS 10.11, *)
protocol MDLMeshBufferAllocator : NSObjectProtocol {
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffers(withSize sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(_ length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(with data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(from zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBuffer(from zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(macOS 10.11, *)
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
}
@available(macOS 10.13, *)
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
}
