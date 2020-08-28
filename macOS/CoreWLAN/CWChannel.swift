
@available(macOS 10.7, *)
class CWChannel : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.7, *)
  var channelNumber: Int { get }
  @available(macOS 10.7, *)
  var channelWidth: CWChannelWidth { get }
  @available(macOS 10.7, *)
  var channelBand: CWChannelBand { get }
  @available(macOS 10.7, *)
  func isEqual(to channel: CWChannel) -> Bool
}
