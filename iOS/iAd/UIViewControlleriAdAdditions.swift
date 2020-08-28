
@available(iOS, introduced: 7.0, deprecated: 10.0)
enum ADInterstitialPresentationPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case automatic
  case manual
}
extension UIViewController {
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  class func prepareInterstitialAds()
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  var interstitialPresentationPolicy: ADInterstitialPresentationPolicy
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  var canDisplayBannerAds: Bool
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  var originalContentView: UIView? { get }
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  var isPresentingFullScreenAd: Bool { get }
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  var isDisplayingBannerAd: Bool { get }
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  func requestInterstitialAdPresentation() -> Bool
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  var shouldPresentInterstitialAd: Bool { get }
}
