
@available(iOS 9.0, *)
class HMEvent : NSObject {
  var uniqueIdentifier: UUID { get }
  @available(iOS 11.0, *)
  class func isSupported(for home: HMHome) -> Bool
}
