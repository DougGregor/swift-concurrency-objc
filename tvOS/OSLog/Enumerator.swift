
extension OSLogEnumerator {
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var reverse: OSLogEnumerator.Options { get }
  }
}
class OSLogEnumerator : NSEnumerator {
}
