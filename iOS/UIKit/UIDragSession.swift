
@available(iOS 11.0, *)
protocol UIDragDropSession : NSObjectProtocol {
  var items: [UIDragItem] { get }
  func location(in view: UIView) -> CGPoint
  var allowsMoveOperation: Bool { get }
  var isRestrictedToDraggingApplication: Bool { get }
  func hasItemsConforming(toTypeIdentifiers typeIdentifiers: [String]) -> Bool
  func canLoadObjects(ofClass aClass: NSItemProviderReading.Type) -> Bool
}

@available(iOS 11.0, *)
extension UIDragDropSession {
  @available(iOS 11.0, *)
  func canLoadObjects<T>(ofClass: T.Type) -> Bool where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
}
@available(iOS 11.0, *)
protocol UIDragSession : UIDragDropSession {
  var localContext: Any? { get set }
}
@available(iOS 11.0, *)
enum UIDropSessionProgressIndicatorStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case `default`
}
@available(iOS 11.0, *)
protocol UIDropSession : ProgressReporting, UIDragDropSession {
  var localDragSession: UIDragSession? { get }
  var progressIndicatorStyle: UIDropSessionProgressIndicatorStyle { get set }
  func loadObjects(ofClass aClass: NSItemProviderReading.Type, completion: @escaping ([NSItemProviderReading]) -> Void) -> Progress
}

@available(iOS 11.0, *)
extension UIDropSession {
  @available(iOS 11.0, *)
  func loadObjects<T>(ofClass: T.Type, completion: @escaping ([T]) -> Void) -> Progress where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
}
