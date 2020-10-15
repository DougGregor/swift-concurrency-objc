
extension OSLogEnumerator {
  @available(macOS 10.15, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var reverse: OSLogEnumerator.Options { get }
  }
}
@available(macOS 10.15, *)
class OSLogEnumerator : NSEnumerator {
}
