
class CGPSConverter : _CFObject {
}
typealias CGPSConverterBeginDocumentCallback = @convention(c) (UnsafeMutableRawPointer?) -> Void
typealias CGPSConverterEndDocumentCallback = @convention(c) (UnsafeMutableRawPointer?, Bool) -> Void
typealias CGPSConverterBeginPageCallback = @convention(c) (UnsafeMutableRawPointer?, Int, CFDictionary) -> Void
typealias CGPSConverterEndPageCallback = @convention(c) (UnsafeMutableRawPointer?, Int, CFDictionary) -> Void
typealias CGPSConverterProgressCallback = @convention(c) (UnsafeMutableRawPointer?) -> Void
typealias CGPSConverterMessageCallback = @convention(c) (UnsafeMutableRawPointer?, CFString) -> Void
typealias CGPSConverterReleaseInfoCallback = @convention(c) (UnsafeMutableRawPointer?) -> Void
struct CGPSConverterCallbacks {
  var version: UInt32
  var beginDocument: CGPSConverterBeginDocumentCallback?
  var endDocument: CGPSConverterEndDocumentCallback?
  var beginPage: CGPSConverterBeginPageCallback?
  var endPage: CGPSConverterEndPageCallback?
  var noteProgress: CGPSConverterProgressCallback?
  var noteMessage: CGPSConverterMessageCallback?
  var releaseInfo: CGPSConverterReleaseInfoCallback?
  init()
  init(version: UInt32, beginDocument: CGPSConverterBeginDocumentCallback?, endDocument: CGPSConverterEndDocumentCallback?, beginPage: CGPSConverterBeginPageCallback?, endPage: CGPSConverterEndPageCallback?, noteProgress: CGPSConverterProgressCallback?, noteMessage: CGPSConverterMessageCallback?, releaseInfo: CGPSConverterReleaseInfoCallback?)
}
extension CGPSConverter {
  @available(macOS 10.3, *)
  /*not inherited*/ init?(info: UnsafeMutableRawPointer?, callbacks: UnsafePointer<CGPSConverterCallbacks>, options: CFDictionary?)
  @available(macOS 10.3, *)
  func convert(_ provider: CGDataProvider, consumer: CGDataConsumer, options: CFDictionary?) -> Bool
  @available(macOS 10.3, *)
  func abort() -> Bool
  @available(macOS 10.3, *)
  var isConverting: Bool { get }
  @available(macOS 10.3, *)
  class var typeID: CFTypeID { get }
}
