
@available(watchOS 2.0, *)
let kCVBufferPropagatedAttachmentsKey: CFString
@available(watchOS 2.0, *)
let kCVBufferNonPropagatedAttachmentsKey: CFString
@available(watchOS 2.0, *)
let kCVBufferMovieTimeKey: CFString
@available(watchOS 2.0, *)
let kCVBufferTimeValueKey: CFString
@available(watchOS 2.0, *)
let kCVBufferTimeScaleKey: CFString
enum CVAttachmentMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case shouldNotPropagate
  case shouldPropagate
}
class CVBuffer : _CFObject {
}
@available(watchOS 2.0, *)
func CVBufferSetAttachment(_ buffer: CVBuffer, _ key: CFString, _ value: CFTypeRef, _ attachmentMode: CVAttachmentMode)
@available(watchOS 2.0, *)
func CVBufferGetAttachment(_ buffer: CVBuffer, _ key: CFString, _ attachmentMode: UnsafeMutablePointer<CVAttachmentMode>?) -> Unmanaged<CFTypeRef>?
@available(watchOS 2.0, *)
func CVBufferRemoveAttachment(_ buffer: CVBuffer, _ key: CFString)
@available(watchOS 2.0, *)
func CVBufferRemoveAllAttachments(_ buffer: CVBuffer)
@available(watchOS 2.0, *)
func CVBufferGetAttachments(_ buffer: CVBuffer, _ attachmentMode: CVAttachmentMode) -> CFDictionary?
@available(watchOS 2.0, *)
func CVBufferSetAttachments(_ buffer: CVBuffer, _ theAttachments: CFDictionary, _ attachmentMode: CVAttachmentMode)
@available(watchOS 2.0, *)
func CVBufferPropagateAttachments(_ sourceBuffer: CVBuffer, _ destinationBuffer: CVBuffer)
