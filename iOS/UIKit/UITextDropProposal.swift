
extension UITextDropProposal {
  @available(iOS 11.0, *)
  enum Action : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case insert
    case replaceSelection
    case replaceAll
  }
  @available(iOS 11.0, *)
  enum ProgressMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case system
    case custom
  }
  @available(iOS 11.0, *)
  enum Performer : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case view
    case delegate
  }
}
@available(iOS 11.0, *)
class UITextDropProposal : UIDropProposal, NSCopying {
  var dropAction: UITextDropProposal.Action
  var dropProgressMode: UITextDropProposal.ProgressMode
  var useFastSameViewOperations: Bool
  var dropPerformer: UITextDropProposal.Performer
}
