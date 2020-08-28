
@available(macOS 10.4, *)
let kCVBufferPropagatedAttachmentsKey: CFString
@available(macOS 10.4, *)
let kCVBufferNonPropagatedAttachmentsKey: CFString
@available(macOS 10.4, *)
let kCVBufferMovieTimeKey: CFString
@available(macOS 10.4, *)
let kCVBufferTimeValueKey: CFString
@available(macOS 10.4, *)
let kCVBufferTimeScaleKey: CFString
enum CVAttachmentMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case shouldNotPropagate
  case shouldPropagate
}
class CVBuffer : _CFObject {
}
@available(macOS 10.4, *)
func CVBufferSetAttachment(_ buffer: CVBuffer, _ key: CFString, _ value: CFTypeRef, _ attachmentMode: CVAttachmentMode)
@available(macOS 10.4, *)
func CVBufferGetAttachment(_ buffer: CVBuffer, _ key: CFString, _ attachmentMode: UnsafeMutablePointer<CVAttachmentMode>?) -> Unmanaged<CFTypeRef>?
@available(macOS 10.4, *)
func CVBufferRemoveAttachment(_ buffer: CVBuffer, _ key: CFString)
@available(macOS 10.4, *)
func CVBufferRemoveAllAttachments(_ buffer: CVBuffer)
@available(macOS 10.4, *)
func CVBufferGetAttachments(_ buffer: CVBuffer, _ attachmentMode: CVAttachmentMode) -> CFDictionary?
@available(macOS 10.4, *)
func CVBufferSetAttachments(_ buffer: CVBuffer, _ theAttachments: CFDictionary, _ attachmentMode: CVAttachmentMode)
@available(macOS 10.4, *)
func CVBufferPropagateAttachments(_ sourceBuffer: CVBuffer, _ destinationBuffer: CVBuffer)
