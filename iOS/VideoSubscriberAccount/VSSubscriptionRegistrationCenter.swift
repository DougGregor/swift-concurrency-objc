
@available(iOS 11.0, *)
class VSSubscriptionRegistrationCenter : NSObject {
  class func `default`() -> VSSubscriptionRegistrationCenter
  func setCurrentSubscription(_ currentSubscription: VSSubscription?)
}
