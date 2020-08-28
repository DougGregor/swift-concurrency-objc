
@available(macOS 10.6, *)
class NSPasteboardItem : NSObject, NSPasteboardWriting, NSPasteboardReading {
  var types: [NSPasteboard.PasteboardType] { get }
  func availableType(from types: [NSPasteboard.PasteboardType]) -> NSPasteboard.PasteboardType?
  func setDataProvider(_ dataProvider: NSPasteboardItemDataProvider, forTypes types: [NSPasteboard.PasteboardType]) -> Bool
  func setData(_ data: Data, forType type: NSPasteboard.PasteboardType) -> Bool
  func setString(_ string: String, forType type: NSPasteboard.PasteboardType) -> Bool
  func setPropertyList(_ propertyList: Any, forType type: NSPasteboard.PasteboardType) -> Bool
  func data(forType type: NSPasteboard.PasteboardType) -> Data?
  func string(forType type: NSPasteboard.PasteboardType) -> String?
  func propertyList(forType type: NSPasteboard.PasteboardType) -> Any?
}
protocol NSPasteboardItemDataProvider : NSObjectProtocol {
  @available(macOS 10.6, *)
  func pasteboard(_ pasteboard: NSPasteboard?, item: NSPasteboardItem, provideDataForType type: NSPasteboard.PasteboardType)
  optional func pasteboardFinishedWithDataProvider(_ pasteboard: NSPasteboard)
}
