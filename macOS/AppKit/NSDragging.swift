
struct NSDragOperation : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var copy: NSDragOperation { get }
  static var link: NSDragOperation { get }
  static var generic: NSDragOperation { get }
  static var `private`: NSDragOperation { get }
  static var move: NSDragOperation { get }
  static var delete: NSDragOperation { get }
  static var every: NSDragOperation { get }
  @available(macOS, introduced: 10.0, deprecated: 10.10)
  static var all_Obsolete: NSDragOperation { get }
  @available(macOS, introduced: 10.0, deprecated: 10.10)
  static var all: NSDragOperation { get }
}
@available(macOS 10.7, *)
enum NSDraggingFormation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case none
  case pile
  case list
  case stack
}
@available(macOS 10.7, *)
enum NSDraggingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case outsideApplication
  case withinApplication
}
@available(macOS 10.7, *)
struct NSDraggingItemEnumerationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var concurrent: NSDraggingItemEnumerationOptions { get }
  static var clearNonenumeratedImages: NSDraggingItemEnumerationOptions { get }
}
@available(macOS 10.11, *)
enum NSSpringLoadingHighlight : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case standard
  case emphasized
}
protocol NSDraggingInfo : NSObjectProtocol {
  var draggingDestinationWindow: NSWindow? { get }
  var draggingSourceOperationMask: NSDragOperation { get }
  var draggingLocation: NSPoint { get }
  var draggedImageLocation: NSPoint { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use NSDraggingItem objects instead")
  var draggedImage: NSImage? { get }
  var draggingPasteboard: NSPasteboard { get }
  var draggingSource: Any? { get }
  var draggingSequenceNumber: Int { get }
  func slideDraggedImage(to screenPoint: NSPoint)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use NSFilePromiseReceiver objects instead")
  func namesOfPromisedFilesDropped(atDestination dropDestination: URL) -> [String]?
  @available(macOS 10.7, *)
  var draggingFormation: NSDraggingFormation { get set }
  @available(macOS 10.7, *)
  var animatesToDestination: Bool { get set }
  @available(macOS 10.7, *)
  var numberOfValidItemsForDrop: Int { get set }
  @available(macOS 10.7, *)
  func enumerateDraggingItems(options enumOpts: NSDraggingItemEnumerationOptions = [], for view: NSView?, classes classArray: [AnyClass], searchOptions: [NSPasteboard.ReadingOptionKey : Any] = [:], using block: @escaping (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.11, *)
  var springLoadingHighlight: NSSpringLoadingHighlight { get }
  @available(macOS 10.11, *)
  func resetSpringLoading()
}
protocol NSDraggingDestination : NSObjectProtocol {
  optional func draggingEntered(_ sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingUpdated(_ sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingExited(_ sender: NSDraggingInfo?)
  optional func prepareForDragOperation(_ sender: NSDraggingInfo) -> Bool
  optional func performDragOperation(_ sender: NSDraggingInfo) -> Bool
  optional func concludeDragOperation(_ sender: NSDraggingInfo?)
  optional func draggingEnded(_ sender: NSDraggingInfo)
  optional func wantsPeriodicDraggingUpdates() -> Bool
  @available(macOS 10.7, *)
  optional func updateDraggingItemsForDrag(_ sender: NSDraggingInfo?)
}
protocol NSDraggingSource : NSObjectProtocol {
  @available(macOS 10.7, *)
  func draggingSession(_ session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(macOS 10.7, *)
  optional func draggingSession(_ session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(macOS 10.7, *)
  optional func draggingSession(_ session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(macOS 10.7, *)
  optional func draggingSession(_ session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(macOS 10.7, *)
  optional func ignoreModifierKeys(for session: NSDraggingSession) -> Bool
}
@available(macOS 10.11, *)
struct NSSpringLoadingOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var disabled: NSSpringLoadingOptions { get }
  static var enabled: NSSpringLoadingOptions { get }
  static var continuousActivation: NSSpringLoadingOptions { get }
  static var noHover: NSSpringLoadingOptions { get }
}
protocol NSSpringLoadingDestination : NSObjectProtocol {
  @available(macOS 10.11, *)
  func springLoadingActivated(_ activated: Bool, draggingInfo: NSDraggingInfo)
  @available(macOS 10.11, *)
  func springLoadingHighlightChanged(_ draggingInfo: NSDraggingInfo)
  @available(macOS 10.11, *)
  optional func springLoadingEntered(_ draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  @available(macOS 10.11, *)
  optional func springLoadingUpdated(_ draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  @available(macOS 10.11, *)
  optional func springLoadingExited(_ draggingInfo: NSDraggingInfo)
  @available(macOS 10.11, *)
  optional func draggingEnded(_ draggingInfo: NSDraggingInfo)
}
extension NSObject {
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use NSFilePromiseProvider objects instead")
  class func namesOfPromisedFilesDropped(atDestination dropDestination: URL) -> [String]?
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use NSFilePromiseProvider objects instead")
  func namesOfPromisedFilesDropped(atDestination dropDestination: URL) -> [String]?
}
