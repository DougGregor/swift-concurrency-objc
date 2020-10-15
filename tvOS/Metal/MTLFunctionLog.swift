
@available(tvOS 14.0, *)
enum MTLFunctionLogType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case validation
}
@available(tvOS 14.0, *)
protocol __MTLLogContainer : NSFastEnumeration {
}
@available(tvOS 14.0, *)
protocol MTLFunctionLogDebugLocation : NSObjectProtocol {
  var functionName: String? { get }
  var url: URL? { get }
  var line: Int { get }
  var column: Int { get }
}
@available(tvOS 14.0, *)
protocol MTLFunctionLog : NSObjectProtocol {
  var type: MTLFunctionLogType { get }
  var encoderLabel: String? { get }
  var function: MTLFunction? { get }
  var debugLocation: MTLFunctionLogDebugLocation? { get }
}
