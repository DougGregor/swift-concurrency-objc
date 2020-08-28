
@available(iOS, introduced: 4.1, deprecated: 13.0)
let ADErrorDomain: String
@available(iOS, introduced: 4.0, deprecated: 10.0)
struct ADError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: ADError.Code { get }
  static var serverFailure: ADError.Code { get }
  static var loadingThrottled: ADError.Code { get }
  static var inventoryUnavailable: ADError.Code { get }
  static var configurationError: ADError.Code { get }
  static var bannerVisibleWithoutContent: ADError.Code { get }
  static var applicationInactive: ADError.Code { get }
  static var adUnloaded: ADError.Code { get }
  static var assetLoadFailure: ADError.Code { get }
  static var adResponseValidateFailure: ADError.Code { get }
  static var adAssetLoadPending: ADError.Code { get }
}
@available(iOS, introduced: 6.0, deprecated: 10.0)
enum ADAdType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case banner
  case mediumRectangle
}
@available(iOS, introduced: 4.0, deprecated: 10.0)
class ADBannerView : UIView {
  @available(iOS 6.0, *)
  init?(adType type: ADAdType)
  @available(iOS 6.0, *)
  var adType: ADAdType { get }
  weak var delegate: @sil_weak ADBannerViewDelegate?
  var isBannerLoaded: Bool { get }
  var isBannerViewActionInProgress: Bool { get }
  func cancelAction()
  var advertisingSection: String?
}
@available(iOS, introduced: 4.1, deprecated: 13.0)
protocol ADBannerViewDelegate : NSObjectProtocol {
  @available(iOS 5.0, *)
  optional func bannerViewWillLoadAd(_ banner: ADBannerView)
  optional func bannerViewDidLoadAd(_ banner: ADBannerView)
  optional func bannerView(_ banner: ADBannerView, didFailToReceiveAdWithError error: Error)
  optional func bannerViewActionShouldBegin(_ banner: ADBannerView, willLeaveApplication willLeave: Bool) -> Bool
  optional func bannerViewActionDidFinish(_ banner: ADBannerView)
}
@available(iOS, introduced: 12.0, deprecated: 13.0)
func ADClampedBannerSize(_ size: CGSize) -> CGSize
