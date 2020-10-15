
@available(tvOS 13.0, *)
class SKArcadeService : NSObject {
  @available(tvOS 13.0, *)
  class func registerArcadeAppWithRandom(fromLib randomFromLib: Data, randomFromLibLength: UInt32, resultHandler: @escaping (Data?, UInt32, Data?, UInt32, Error?) -> Void)
  @available(tvOS 13.0, *)
  class func arcadeSubscriptionStatus(withNonce nonce: UInt64, resultHandler: @escaping (Data?, UInt32, Data?, UInt32, Error?) -> Void)
  @available(tvOS 13.0, *)
  class func repairArcadeApp()
}
