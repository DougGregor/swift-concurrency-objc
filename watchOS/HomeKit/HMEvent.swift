
@available(watchOS 2.0, *)
class HMEvent : NSObject {
  var uniqueIdentifier: UUID { get }
  @available(watchOS 4.0, *)
  class func isSupported(for home: HMHome) -> Bool
}
