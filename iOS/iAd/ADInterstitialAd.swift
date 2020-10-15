
@available(iOS, introduced: 4.3, deprecated: 10.0)
class ADInterstitialAd : NSObject {
  weak var delegate: @sil_weak ADInterstitialAdDelegate?
  var isLoaded: Bool { get }
  var isActionInProgress: Bool { get }
  func cancelAction()
  func present(in containerView: UIView) -> Bool
  func present(from viewController: UIViewController)
}
@available(iOS, introduced: 4.3, deprecated: 10.0)
protocol ADInterstitialAdDelegate : NSObjectProtocol {
  @asyncHandler func interstitialAdDidUnload(_ interstitialAd: ADInterstitialAd)
  @asyncHandler func interstitialAd(_ interstitialAd: ADInterstitialAd, didFailWithError error: Error)
  @available(iOS 5.0, *)
  optional func interstitialAdWillLoad(_ interstitialAd: ADInterstitialAd)
  @asyncHandler optional func interstitialAdDidLoad(_ interstitialAd: ADInterstitialAd)
  optional func interstitialAdActionShouldBegin(_ interstitialAd: ADInterstitialAd, willLeaveApplication willLeave: Bool) -> Bool
  @asyncHandler optional func interstitialAdActionDidFinish(_ interstitialAd: ADInterstitialAd)
}
@available(iOS, introduced: 12.0, deprecated: 13.0)
class ADInterstitialAdPresentationViewController : UIViewController {
  init(for interstitialAd: ADInterstitialAd)
  func shouldTestVisibility(at point: CGPoint) -> Bool
}
