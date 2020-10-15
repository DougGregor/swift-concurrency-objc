
@available(iOS 11.0, *)
class UISwipeActionsConfiguration : NSObject {
  convenience init(actions: [UIContextualAction])
  var actions: [UIContextualAction] { get }
  var performsFirstActionWithFullSwipe: Bool
}
