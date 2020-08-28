
@available(iOS 10.0, *)
typealias TKTLVTag = UInt64
@available(iOS 10.0, *)
class TKTLVRecord : NSObject {
  var tag: TKTLVTag { get }
  var value: Data { get }
  var data: Data { get }
  convenience init?(from data: Data)
  class func sequenceOfRecords(from data: Data) -> [TKTLVRecord]?
}
@available(iOS 10.0, *)
class TKBERTLVRecord : TKTLVRecord {
  class func data(forTag tag: TKTLVTag) -> Data
  init(tag: TKTLVTag, value: Data)
  init(tag: TKTLVTag, records: [TKTLVRecord])
}
@available(iOS 10.0, *)
class TKSimpleTLVRecord : TKTLVRecord {
  init(tag: UInt8, value: Data)
}
@available(iOS 10.0, *)
class TKCompactTLVRecord : TKTLVRecord {
  init(tag: UInt8, value: Data)
}
