
extension NSFontAssetRequest {
  @available(macOS 10.13, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var usesStandardUI: NSFontAssetRequest.Options { get }
  }
}
@available(macOS 10.13, *)
class NSFontAssetRequest : NSObject, ProgressReporting {
  init(fontDescriptors: [NSFontDescriptor], options: NSFontAssetRequest.Options = [])
  var downloadedFontDescriptors: [NSFontDescriptor] { get }
  func download(withCompletionHandler completionHandler: @escaping (Error?) -> Bool)
}
