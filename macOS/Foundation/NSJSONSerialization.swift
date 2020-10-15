
extension JSONSerialization {
  @available(macOS 10.7, *)
  struct ReadingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var mutableContainers: JSONSerialization.ReadingOptions { get }
    static var mutableLeaves: JSONSerialization.ReadingOptions { get }
    static var fragmentsAllowed: JSONSerialization.ReadingOptions { get }
    @available(macOS, introduced: 10.7, deprecated: 100000, renamed: "JSONSerialization.ReadingOptions.fragmentsAllowed")
    static var allowFragments: JSONSerialization.ReadingOptions { get }
  }
  @available(macOS 10.7, *)
  struct WritingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var prettyPrinted: JSONSerialization.WritingOptions { get }
    @available(macOS 10.13, *)
    static var sortedKeys: JSONSerialization.WritingOptions { get }
    static var fragmentsAllowed: JSONSerialization.WritingOptions { get }
    @available(macOS 10.15, *)
    static var withoutEscapingSlashes: JSONSerialization.WritingOptions { get }
  }
}
@available(macOS 10.7, *)
class JSONSerialization : NSObject {
  class func isValidJSONObject(_ obj: Any) -> Bool
  class func data(withJSONObject obj: Any, options opt: JSONSerialization.WritingOptions = []) throws -> Data
  class func jsonObject(with data: Data, options opt: JSONSerialization.ReadingOptions = []) throws -> Any
  class func writeJSONObject(_ obj: Any, to stream: OutputStream, options opt: JSONSerialization.WritingOptions = [], error: NSErrorPointer) -> Int
  class func jsonObject(with stream: InputStream, options opt: JSONSerialization.ReadingOptions = []) throws -> Any
}
