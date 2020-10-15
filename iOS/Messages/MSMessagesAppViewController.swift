
@available(iOS 10.0, *)
enum MSMessagesAppPresentationStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case compact
  case expanded
  @available(iOS 11.0, *)
  case transcript
}
@available(iOS 12.0, *)
enum MSMessagesAppPresentationContext : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case messages
  case media
}
@available(iOS 11.0, *)
protocol MSMessagesAppTranscriptPresentation {
  @available(iOS 11.0, *)
  func contentSizeThatFits(_ size: CGSize) -> CGSize
}
@available(iOS 10.0, *)
class MSMessagesAppViewController : UIViewController, MSMessagesAppTranscriptPresentation {
  var activeConversation: MSConversation? { get }
  var presentationStyle: MSMessagesAppPresentationStyle { get }
  @available(iOS 12.0, *)
  var presentationContext: MSMessagesAppPresentationContext { get }
  func requestPresentationStyle(_ presentationStyle: MSMessagesAppPresentationStyle)
  func willBecomeActive(with conversation: MSConversation)
  func didBecomeActive(with conversation: MSConversation)
  func willResignActive(with conversation: MSConversation)
  func didResignActive(with conversation: MSConversation)
}
extension MSMessagesAppViewController {
  @available(iOS 10.0, *)
  func dismiss()
  @available(iOS 10.0, *)
  func willSelect(_ message: MSMessage, conversation: MSConversation)
  @available(iOS 10.0, *)
  func didSelect(_ message: MSMessage, conversation: MSConversation)
  @available(iOS 10.0, *)
  func didReceive(_ message: MSMessage, conversation: MSConversation)
  @available(iOS 10.0, *)
  func didStartSending(_ message: MSMessage, conversation: MSConversation)
  @available(iOS 10.0, *)
  func didCancelSending(_ message: MSMessage, conversation: MSConversation)
  @available(iOS 10.0, *)
  func willTransition(to presentationStyle: MSMessagesAppPresentationStyle)
  @available(iOS 10.0, *)
  func didTransition(to presentationStyle: MSMessagesAppPresentationStyle)
}
