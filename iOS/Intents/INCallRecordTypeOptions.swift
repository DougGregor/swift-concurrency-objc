
@available(iOS 10.0, *)
struct INCallRecordTypeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var outgoing: INCallRecordTypeOptions { get }
  static var missed: INCallRecordTypeOptions { get }
  static var received: INCallRecordTypeOptions { get }
  @available(iOS 11.0, *)
  static var latest: INCallRecordTypeOptions { get }
  @available(iOS 11.0, *)
  static var voicemail: INCallRecordTypeOptions { get }
}
