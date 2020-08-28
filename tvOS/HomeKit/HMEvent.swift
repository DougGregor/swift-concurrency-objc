
@available(tvOS 10.0, *)
class HMEvent : NSObject {
  var uniqueIdentifier: UUID { get }
  @available(tvOS 11.0, *)
  class func isSupported(for home: HMHome) -> Bool
}
