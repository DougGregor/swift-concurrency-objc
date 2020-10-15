
@available(macOS, introduced: 10.8, deprecated: 10.10)
class GKChallengesViewController : NSViewController, GKViewController {
  weak var challengeDelegate: @sil_weak GKChallengesViewControllerDelegate!
}
protocol GKChallengesViewControllerDelegate {
  @available(macOS 10.8, *)
  func challengesViewControllerDidFinish(_ viewController: GKChallengesViewController!)
}
