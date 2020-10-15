
@available(macOS 11.0, *)
enum MTLFunctionLogType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case validation
}
@available(macOS 11.0, *)
protocol __MTLLogContainer : NSFastEnumeration {
}
@available(macOS 11.0, *)
protocol MTLFunctionLogDebugLocation : NSObjectProtocol {
  var functionName: String? { get }
  var url: URL? { get }
  var line: Int { get }
  var column: Int { get }
}
@available(macOS 11.0, *)
protocol MTLFunctionLog : NSObjectProtocol {
  var type: MTLFunctionLogType { get }
  var encoderLabel: String? { get }
  var function: MTLFunction? { get }
  var debugLocation: MTLFunctionLogDebugLocation? { get }
}
