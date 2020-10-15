
@available(iOS 14.0, *)
enum __UICellConfigurationDragState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case lifting
  case dragging
}
@available(iOS 14.0, *)
enum __UICellConfigurationDropState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case notTargeted
  case targeted
}
@available(iOS 14.0, *)
class __UICellConfigurationState : __UIViewConfigurationState {
  var isEditing: Bool
  var isExpanded: Bool
  var isSwiped: Bool
  var isReordering: Bool
  var cellDragState: __UICellConfigurationDragState
  var cellDropState: __UICellConfigurationDropState
}
