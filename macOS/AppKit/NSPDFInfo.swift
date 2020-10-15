
@available(macOS 10.9, *)
class NSPDFInfo : NSObject, NSCopying, NSCoding {
  var url: URL?
  var isFileExtensionHidden: Bool
  var tagNames: [String]
  var orientation: NSPrintInfo.PaperOrientation
  var paperSize: NSSize
  var attributes: NSMutableDictionary { get }
}
