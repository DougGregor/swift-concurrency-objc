
extension INMediaUserContext {
  @available(tvOS 14.0, *)
  enum SubscriptionStatus : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case notSubscribed
    case subscribed
  }
}
@available(tvOS 14.0, *)
class INMediaUserContext : INUserContext {
  var subscriptionStatus: INMediaUserContext.SubscriptionStatus
  @NSCopying var __numberOfLibraryItems: NSNumber?
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaUserContext {
  @available(iOS 13.0, watchOS 6.0, tvOS 14.0, *)
  @nonobjc final var numberOfLibraryItems: Int?
}
