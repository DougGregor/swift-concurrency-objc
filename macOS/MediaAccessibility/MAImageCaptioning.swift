
@available(macOS 10.15, *)
func MAImageCaptioningCopyCaption(_ url: CFURL, _ error: UnsafeMutablePointer<CFError?>?) -> CFString?
@available(macOS 10.15, *)
func MAImageCaptioningSetCaption(_ url: CFURL, _ string: CFString?, _ error: UnsafeMutablePointer<CFError?>?) -> Bool
@available(macOS 10.15, *)
func MAImageCaptioningCopyMetadataTagPath() -> CFString
