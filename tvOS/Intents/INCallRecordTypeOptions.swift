
@available(tvOS 10.0, *)
struct INCallRecordTypeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var outgoing: INCallRecordTypeOptions { get }
  static var missed: INCallRecordTypeOptions { get }
  static var received: INCallRecordTypeOptions { get }
  @available(tvOS 11.0, *)
  static var latest: INCallRecordTypeOptions { get }
  @available(tvOS 11.0, *)
  static var voicemail: INCallRecordTypeOptions { get }
  static var ringing: INCallRecordTypeOptions { get }
  static var inProgress: INCallRecordTypeOptions { get }
  static var onHold: INCallRecordTypeOptions { get }
}
