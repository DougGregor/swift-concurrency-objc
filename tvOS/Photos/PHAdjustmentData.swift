
@available(tvOS 10, *)
class PHAdjustmentData : NSObject {
  @available(tvOS 10, *)
  init(formatIdentifier: String, formatVersion: String, data: Data)
  @available(tvOS 10, *)
  var formatIdentifier: String { get }
  @available(tvOS 10, *)
  var formatVersion: String { get }
  @available(tvOS 10, *)
  var data: Data { get }
}
