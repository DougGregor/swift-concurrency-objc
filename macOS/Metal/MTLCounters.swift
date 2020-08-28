
var MTLCounterErrorValue: UInt64 { get }
@available(macOS 10.15, *)
struct MTLCommonCounter : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MTLCommonCounter {
  @available(macOS 10.15, *)
  static let timestamp: MTLCommonCounter
  @available(macOS 10.15, *)
  static let tessellationInputPatches: MTLCommonCounter
  @available(macOS 10.15, *)
  static let vertexInvocations: MTLCommonCounter
  @available(macOS 10.15, *)
  static let postTessellationVertexInvocations: MTLCommonCounter
  @available(macOS 10.15, *)
  static let clipperInvocations: MTLCommonCounter
  @available(macOS 10.15, *)
  static let clipperPrimitivesOut: MTLCommonCounter
  @available(macOS 10.15, *)
  static let fragmentInvocations: MTLCommonCounter
  @available(macOS 10.15, *)
  static let fragmentsPassed: MTLCommonCounter
  @available(macOS 10.15, *)
  static let computeKernelInvocations: MTLCommonCounter
  @available(macOS 10.15, *)
  static let totalCycles: MTLCommonCounter
  @available(macOS 10.15, *)
  static let vertexCycles: MTLCommonCounter
  @available(macOS 10.15, *)
  static let tessellationCycles: MTLCommonCounter
  @available(macOS 10.15, *)
  static let postTessellationVertexCycles: MTLCommonCounter
  @available(macOS 10.15, *)
  static let fragmentCycles: MTLCommonCounter
  @available(macOS 10.15, *)
  static let renderTargetWriteCycles: MTLCommonCounter
}
@available(macOS 10.15, *)
struct MTLCommonCounterSet : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MTLCommonCounterSet {
  @available(macOS 10.15, *)
  static let timestamp: MTLCommonCounterSet
  @available(macOS 10.15, *)
  static let stageUtilization: MTLCommonCounterSet
  @available(macOS 10.15, *)
  static let statistic: MTLCommonCounterSet
}
@available(macOS 10.15, *)
struct MTLCounterResultTimestamp {
  var timestamp: UInt64
  init()
  init(timestamp: UInt64)
}
@available(macOS 10.15, *)
struct MTLCounterResultStageUtilization {
  var totalCycles: UInt64
  var vertexCycles: UInt64
  var tessellationCycles: UInt64
  var postTessellationVertexCycles: UInt64
  var fragmentCycles: UInt64
  var renderTargetCycles: UInt64
  init()
  init(totalCycles: UInt64, vertexCycles: UInt64, tessellationCycles: UInt64, postTessellationVertexCycles: UInt64, fragmentCycles: UInt64, renderTargetCycles: UInt64)
}
@available(macOS 10.15, *)
struct MTLCounterResultStatistic {
  var tessellationInputPatches: UInt64
  var vertexInvocations: UInt64
  var postTessellationVertexInvocations: UInt64
  var clipperInvocations: UInt64
  var clipperPrimitivesOut: UInt64
  var fragmentInvocations: UInt64
  var fragmentsPassed: UInt64
  var computeKernelInvocations: UInt64
  init()
  init(tessellationInputPatches: UInt64, vertexInvocations: UInt64, postTessellationVertexInvocations: UInt64, clipperInvocations: UInt64, clipperPrimitivesOut: UInt64, fragmentInvocations: UInt64, fragmentsPassed: UInt64, computeKernelInvocations: UInt64)
}
@available(macOS 10.15, *)
protocol MTLCounter : NSObjectProtocol {
  @available(macOS 10.15, *)
  var name: String { get }
}
@available(macOS 10.15, *)
protocol MTLCounterSet : NSObjectProtocol {
  @available(macOS 10.15, *)
  var name: String { get }
  @available(macOS 10.15, *)
  var counters: [MTLCounter] { get }
}
@available(macOS 10.15, *)
class MTLCounterSampleBufferDescriptor : NSObject, NSCopying {
  @available(macOS 10.15, *)
  var counterSet: MTLCounterSet?
  @available(macOS 10.15, *)
  var label: String
  @available(macOS 10.15, *)
  var storageMode: MTLStorageMode
  @available(macOS 10.15, *)
  var sampleCount: Int
}
@available(macOS 10.15, *)
protocol MTLCounterSampleBuffer : NSObjectProtocol {
  @available(macOS 10.15, *)
  var device: MTLDevice { get }
  @available(macOS 10.15, *)
  var label: String { get }
  @available(macOS 10.15, *)
  var sampleCount: Int { get }
  @available(macOS 10.15, *)
  func __resolveCounterRange(_ range: NSRange) -> Data?
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
extension MTLCounterSampleBuffer {
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  func resolveCounterRange(_ range: Range<Int>) throws -> Data?
}
@available(macOS 10.15, *)
let MTLCounterErrorDomain: String
@available(macOS 10.15, *)
struct MTLCounterSampleBufferError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var outOfMemory: MTLCounterSampleBufferError.Code { get }
  static var invalid: MTLCounterSampleBufferError.Code { get }
  static var `internal`: MTLCounterSampleBufferError.Code { get }
}
