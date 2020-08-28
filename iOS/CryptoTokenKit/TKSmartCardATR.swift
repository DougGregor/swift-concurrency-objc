
struct TKSmartCardProtocol : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var t0: TKSmartCardProtocol { get }
  static var t1: TKSmartCardProtocol { get }
  static var t15: TKSmartCardProtocol { get }
  static var any: TKSmartCardProtocol { get }
}
extension TKSmartCardATR {
  class InterfaceGroup : NSObject {
    var ta: NSNumber? { get }
    var tb: NSNumber? { get }
    var tc: NSNumber? { get }
    var `protocol`: NSNumber? { get }
  }
}
class TKSmartCardATR : NSObject {
  init?(bytes: Data)
  init?(source: @escaping () -> Int32)
  var bytes: Data { get }
  var protocols: [NSNumber] { get }
  func interfaceGroup(at index: Int) -> TKSmartCardATR.InterfaceGroup?
  func interfaceGroup(for protocol: TKSmartCardProtocol) -> TKSmartCardATR.InterfaceGroup?
  var historicalBytes: Data { get }
  var historicalRecords: [TKCompactTLVRecord]? { get }
}
