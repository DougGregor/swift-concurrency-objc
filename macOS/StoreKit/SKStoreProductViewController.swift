
@available(macOS 11.0, *)
class SKStoreProductViewController : NSViewController {
  @available(macOS 11.0, *)
  weak var delegate: @sil_weak SKStoreProductViewControllerDelegate?
  @available(macOS 11.0, *)
  func loadProduct(withParameters parameters: [String : Any], completionBlock block: ((Bool, Error?) -> Void)? = nil)
}
protocol SKStoreProductViewControllerDelegate : NSObjectProtocol {
  @available(macOS 11.0, *)
  optional func productViewControllerDidFinish(_ viewController: SKStoreProductViewController)
}
@available(macOS 11.0, *)
let SKStoreProductParameterITunesItemIdentifier: String
@available(macOS 11.0, *)
let SKStoreProductParameterProductIdentifier: String
@available(macOS 11.0, *)
let SKStoreProductParameterAffiliateToken: String
@available(macOS 11.0, *)
let SKStoreProductParameterCampaignToken: String
@available(macOS 11.0, *)
let SKStoreProductParameterProviderToken: String
@available(macOS 11.0, *)
let SKStoreProductParameterAdvertisingPartnerToken: String
