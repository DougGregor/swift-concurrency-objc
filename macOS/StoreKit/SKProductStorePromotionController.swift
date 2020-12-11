
@available(macOS 11.0, *)
@frozen enum SKProductStorePromotionVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case show
  case hide
}
@available(macOS 11.0, *)
class SKProductStorePromotionController : NSObject {
  @available(macOS 11.0, *)
  class func `default`() -> Self
  @available(macOS 11.0, *)
  func fetchStorePromotionVisibility(for product: SKProduct, completionHandler: ((SKProductStorePromotionVisibility, Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func fetchStorePromotionVisibility(for product: SKProduct) async throws -> SKProductStorePromotionVisibility
  @available(macOS 11.0, *)
  func update(storePromotionVisibility promotionVisibility: SKProductStorePromotionVisibility, for product: SKProduct, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func update(storePromotionVisibility promotionVisibility: SKProductStorePromotionVisibility, for product: SKProduct) async throws
  @available(macOS 11.0, *)
  func fetchStorePromotionOrder(completionHandler: (([SKProduct], Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func fetchStorePromotionOrder() async throws -> [SKProduct]
  @available(macOS 11.0, *)
  func update(storePromotionOrder: [SKProduct], completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func update(storePromotionOrder: [SKProduct]) async throws
}
