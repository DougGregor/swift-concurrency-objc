
enum AVContentProposalAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case accept
  case reject
  case `defer`
}
@available(tvOS 10.0, *)
class AVContentProposalViewController : UIViewController {
  var contentProposal: AVContentProposal? { get }
  weak var playerViewController: @sil_weak AVPlayerViewController? { get }
  var preferredPlayerViewFrame: CGRect { get }
  var playerLayoutGuide: UILayoutGuide { get }
  var dateOfAutomaticAcceptance: Date?
  func dismissContentProposal(for action: AVContentProposalAction, animated: Bool, completion block: (() -> Void)? = nil)
  func dismissContentProposalAsync(for action: AVContentProposalAction, animated: Bool) async
}
extension AVPlayerViewController {
  @available(tvOS 10.0, *)
  var contentProposalViewController: AVContentProposalViewController!
}
