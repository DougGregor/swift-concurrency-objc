
@available(iOS 6.0, *)
class SKStoreProductViewController : UIViewController {
  @available(iOS 6.0, *)
  weak var delegate: @sil_weak SKStoreProductViewControllerDelegate?
  @available(iOS 6.0, *)
  func loadProduct(withParameters parameters: [String : Any], completionBlock block: ((Bool, Error?) -> Void)? = nil)
}
protocol SKStoreProductViewControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func productViewControllerDidFinish(_ viewController: SKStoreProductViewController)
}
@available(iOS 6.0, *)
let SKStoreProductParameterITunesItemIdentifier: String
@available(iOS 11.0, *)
let SKStoreProductParameterProductIdentifier: String
@available(iOS 8.0, *)
let SKStoreProductParameterAffiliateToken: String
@available(iOS 8.0, *)
let SKStoreProductParameterCampaignToken: String
@available(iOS 8.3, *)
let SKStoreProductParameterProviderToken: String
@available(iOS 9.3, *)
let SKStoreProductParameterAdvertisingPartnerToken: String
