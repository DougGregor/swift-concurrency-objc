
@available(macOS 10.15, *)
class SKArcadeService : NSObject {
  @available(macOS 10.15, *)
  class func registerArcadeAppWithRandom(fromLib randomFromLib: Data, randomFromLibLength: UInt32, resultHandler: @escaping (Data?, UInt32, Data?, UInt32, Error?) -> Void)
  @available(macOS 10.15, *)
  class func arcadeSubscriptionStatus(withNonce nonce: UInt64, resultHandler: @escaping (Data?, UInt32, Data?, UInt32, Error?) -> Void)
  @available(macOS 10.15, *)
  class func repairArcadeApp()
}
