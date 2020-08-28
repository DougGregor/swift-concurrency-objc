
class QLThumbnail : _CFObject {
}
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QuickLookThumbnailing for thumbnails.")
func QLThumbnailGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QLThumbnailGenerationRequest in QuickLookThumbnailing to generate thumbnails.")
func QLThumbnailCreate(_ allocator: CFAllocator!, _ url: CFURL!, _ maxThumbnailSize: CGSize, _ options: CFDictionary!) -> Unmanaged<QLThumbnail>!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QuickLookThumbnailing for thumbnails.")
func QLThumbnailCopyDocumentURL(_ thumbnail: QLThumbnail!) -> Unmanaged<CFURL>!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QLThumbnailGenerationRequest in QuickLookThumbnailing.")
func QLThumbnailGetMaximumSize(_ thumbnail: QLThumbnail!) -> CGSize
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QuickLookThumbnailing for thumbnails.")
func QLThumbnailCopyOptions(_ thumbnail: QLThumbnail!) -> Unmanaged<CFDictionary>!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QLThumbnailGenerator in QuickLookThumbnailing to generate thumbnails.")
func QLThumbnailDispatchAsync(_ thumbnail: QLThumbnail!, _ queue: DispatchQueue!, _ completion: (() -> Void)!)
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QuickLookThumbnailing for thumbnails.")
func QLThumbnailCopyImage(_ thumbnail: QLThumbnail!) -> Unmanaged<CGImage>!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QuickLookThumbnailing for thumbnails.")
func QLThumbnailGetContentRect(_ thumbnail: QLThumbnail!) -> CGRect
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use [QLThumbnailGenerator cancelRequest:] in QuickLookThumbnailing.")
func QLThumbnailCancel(_ thumbnail: QLThumbnail!)
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use QuickLookThumbnailing for thumbnails.")
func QLThumbnailIsCancelled(_ thumbnail: QLThumbnail!) -> Bool
