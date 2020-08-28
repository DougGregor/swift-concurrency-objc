
@available(macOS 10.11, *)
class PHAdjustmentData : NSObject {
  @available(macOS 10.11, *)
  init(formatIdentifier: String, formatVersion: String, data: Data)
  @available(macOS 10.11, *)
  var formatIdentifier: String { get }
  @available(macOS 10.11, *)
  var formatVersion: String { get }
  @available(macOS 10.11, *)
  var data: Data { get }
}
