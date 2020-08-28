
@available(iOS 8, *)
class PHAdjustmentData : NSObject {
  @available(iOS 8, *)
  init(formatIdentifier: String, formatVersion: String, data: Data)
  @available(iOS 8, *)
  var formatIdentifier: String { get }
  @available(iOS 8, *)
  var formatVersion: String { get }
  @available(iOS 8, *)
  var data: Data { get }
}
