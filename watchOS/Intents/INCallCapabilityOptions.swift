
@available(watchOS 3.2, *)
struct INCallCapabilityOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var audioCall: INCallCapabilityOptions { get }
  static var videoCall: INCallCapabilityOptions { get }
}
