
var kQLReturnMask: Int32 { get }
var kQLReturnHasMore: Int32 { get }
class QLThumbnailRequest : _CFObject {
}
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestCopyURL(_ thumbnail: QLThumbnailRequest!) -> Unmanaged<CFURL>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestCopyOptions(_ thumbnail: QLThumbnailRequest!) -> Unmanaged<CFDictionary>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestCopyContentUTI(_ thumbnail: QLThumbnailRequest!) -> Unmanaged<CFString>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestGetMaximumSize(_ thumbnail: QLThumbnailRequest!) -> CGSize
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestGetGeneratorBundle(_ thumbnail: QLThumbnailRequest!) -> Unmanaged<CFBundle>!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestSetDocumentObject(_ thumbnail: QLThumbnailRequest!, _ object: UnsafeRawPointer!, _ callbacks: UnsafePointer<CFArrayCallBacks>!)
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestGetDocumentObject(_ thumbnail: QLThumbnailRequest!) -> UnsafeRawPointer!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types")
func QLThumbnailRequestSetImage(_ thumbnail: QLThumbnailRequest!, _ image: CGImage!, _ properties: CFDictionary!)
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestSetImageWithData(_ thumbnail: QLThumbnailRequest!, _ data: CFData!, _ properties: CFDictionary!)
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestCreateContext(_ thumbnail: QLThumbnailRequest!, _ size: CGSize, _ isBitmap: Bool, _ properties: CFDictionary!) -> Unmanaged<CGContext>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestFlushContext(_ thumbnail: QLThumbnailRequest!, _ context: CGContext!)
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestSetImageAtURL(_ thumbnail: QLThumbnailRequest!, _ url: CFURL!, _ properties: CFDictionary!)
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestSetThumbnailWithDataRepresentation(_ thumbnail: QLThumbnailRequest!, _ data: CFData!, _ contentTypeUTI: CFString!, _ previewProperties: CFDictionary!, _ properties: CFDictionary!)
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestSetThumbnailWithURLRepresentation(_ thumbnail: QLThumbnailRequest!, _ url: CFURL!, _ contentTypeUTI: CFString!, _ previewProperties: CFDictionary!, _ properties: CFDictionary!)
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLFileThumbnailRequest in a Thumbnail Extension to provide thumbnails for your file types.")
func QLThumbnailRequestIsCancelled(_ thumbnail: QLThumbnailRequest!) -> Bool
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
let kQLThumbnailPropertyExtensionKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
let kQLThumbnailPropertyBadgeImageKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLThumbnailReply in a Thumbnail Extension to provide thumbnails for your file types.")
let kQLThumbnailPropertyBaseBundlePathKey: CFString!
class QLPreviewRequest : _CFObject {
}
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use the title property of your QLPreviewingController in a Preview Extension.")
let kQLPreviewPropertyDisplayNameKey: CFString!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use the preferredContentSize property of your QLPreviewingController in a Preview Extension.")
let kQLPreviewPropertyWidthKey: CFString!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use the preferredContentSize property of your QLPreviewingController in a Preview Extension.")
let kQLPreviewPropertyHeightKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewPropertyBaseBundlePathKey: CFString!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewPropertyStringEncodingKey: CFString!
struct QLPreviewPDFStyle : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kQLPreviewPDFStandardStyle: QLPreviewPDFStyle { get }
var kQLPreviewPDFPagesWithThumbnailsOnRightStyle: QLPreviewPDFStyle { get }
var kQLPreviewPDFPagesWithThumbnailsOnLeftStyle: QLPreviewPDFStyle { get }
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewPropertyPDFStyleKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewOptionCursorKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewPropertyCursorKey: CFString!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestCopyURL(_ preview: QLPreviewRequest!) -> Unmanaged<CFURL>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestCopyOptions(_ preview: QLPreviewRequest!) -> Unmanaged<CFDictionary>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestCopyContentUTI(_ preview: QLPreviewRequest!) -> Unmanaged<CFString>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestGetGeneratorBundle(_ preview: QLPreviewRequest!) -> Unmanaged<CFBundle>!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestSetDocumentObject(_ preview: QLPreviewRequest!, _ object: UnsafeRawPointer!, _ callbacks: UnsafePointer<CFArrayCallBacks>!)
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestGetDocumentObject(_ preview: QLPreviewRequest!) -> UnsafeRawPointer!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestIsCancelled(_ preview: QLPreviewRequest!) -> Bool
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestSetDataRepresentation(_ preview: QLPreviewRequest!, _ data: CFData!, _ contentTypeUTI: CFString!, _ properties: CFDictionary!)
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestSetURLRepresentation(_ preview: QLPreviewRequest!, _ url: CFURL!, _ contentTypeUTI: CFString!, _ properties: CFDictionary!)
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestCreateContext(_ preview: QLPreviewRequest!, _ size: CGSize, _ isBitmap: Bool, _ properties: CFDictionary!) -> Unmanaged<CGContext>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestCreatePDFContext(_ preview: QLPreviewRequest!, _ mediaBox: UnsafePointer<CGRect>!, _ auxiliaryInfo: CFDictionary!, _ properties: CFDictionary!) -> Unmanaged<CGContext>!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
func QLPreviewRequestFlushContext(_ preview: QLPreviewRequest!, _ context: CGContext!)
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewPropertyMIMETypeKey: CFString!
let kQLPreviewPropertyTextEncodingNameKey: CFString!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewPropertyAttachmentDataKey: CFString!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewPropertyAttachmentsKey: CFString!
@available(macOS, introduced: 10.0, deprecated: 100000, message: "Use a QLPreviewingController in a Preview Extension to provide previews for your file types.")
let kQLPreviewContentIDScheme: CFString!
struct QLGeneratorInterfaceStruct {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var GenerateThumbnailForURL: (@convention(c) (UnsafeMutableRawPointer?, QLThumbnailRequest?, CFURL?, CFString?, CFDictionary?, CGSize) -> OSStatus)!
  var CancelThumbnailGeneration: (@convention(c) (UnsafeMutableRawPointer?, QLThumbnailRequest?) -> Void)!
  var GeneratePreviewForURL: (@convention(c) (UnsafeMutableRawPointer?, QLPreviewRequest?, CFURL?, CFString?, CFDictionary?) -> OSStatus)!
  var CancelPreviewGeneration: (@convention(c) (UnsafeMutableRawPointer?, QLPreviewRequest?) -> Void)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, GenerateThumbnailForURL: (@convention(c) (UnsafeMutableRawPointer?, QLThumbnailRequest?, CFURL?, CFString?, CFDictionary?, CGSize) -> OSStatus)!, CancelThumbnailGeneration: (@convention(c) (UnsafeMutableRawPointer?, QLThumbnailRequest?) -> Void)!, GeneratePreviewForURL: (@convention(c) (UnsafeMutableRawPointer?, QLPreviewRequest?, CFURL?, CFString?, CFDictionary?) -> OSStatus)!, CancelPreviewGeneration: (@convention(c) (UnsafeMutableRawPointer?, QLPreviewRequest?) -> Void)!)
}
