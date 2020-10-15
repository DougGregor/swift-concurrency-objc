
@available(macOS 10.12, *)
typealias TKTLVTag = UInt64
@available(macOS 10.12, *)
class TKTLVRecord : NSObject {
  var tag: TKTLVTag { get }
  var value: Data { get }
  var data: Data { get }
  convenience init?(from data: Data)
  class func sequenceOfRecords(from data: Data) -> [TKTLVRecord]?
}
@available(macOS 10.12, *)
class TKBERTLVRecord : TKTLVRecord {
  class func data(forTag tag: TKTLVTag) -> Data
  init(tag: TKTLVTag, value: Data)
  init(tag: TKTLVTag, records: [TKTLVRecord])
}
@available(macOS 10.12, *)
class TKSimpleTLVRecord : TKTLVRecord {
  init(tag: UInt8, value: Data)
}
@available(macOS 10.12, *)
class TKCompactTLVRecord : TKTLVRecord {
  init(tag: UInt8, value: Data)
}
