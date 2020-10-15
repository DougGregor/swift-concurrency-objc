
@available(watchOS 3.2, *)
struct INMessageAttributeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var read: INMessageAttributeOptions { get }
  static var unread: INMessageAttributeOptions { get }
  static var flagged: INMessageAttributeOptions { get }
  static var unflagged: INMessageAttributeOptions { get }
  @available(watchOS 4.0, *)
  static var played: INMessageAttributeOptions { get }
}
