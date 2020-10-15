
@available(iOS 4.0, *)
typealias CMAttachmentBearer = CFTypeRef
@available(iOS 4.0, *)
typealias CMAttachmentMode = UInt32
var kCMAttachmentMode_ShouldNotPropagate: CMAttachmentMode { get }
var kCMAttachmentMode_ShouldPropagate: CMAttachmentMode { get }
@available(iOS 4.0, *)
func CMSetAttachment(_ target: CMAttachmentBearer, key: CFString, value: CFTypeRef?, attachmentMode: CMAttachmentMode)
@available(iOS 4.0, *)
func CMGetAttachment(_ target: CMAttachmentBearer, key: CFString, attachmentModeOut: UnsafeMutablePointer<CMAttachmentMode>?) -> CFTypeRef?
@available(iOS 4.0, *)
func CMRemoveAttachment(_ target: CMAttachmentBearer, key: CFString)
@available(iOS 4.0, *)
func CMRemoveAllAttachments(_ target: CMAttachmentBearer)
@available(iOS 4.0, *)
func CMCopyDictionaryOfAttachments(allocator: CFAllocator?, target: CMAttachmentBearer, attachmentMode: CMAttachmentMode) -> CFDictionary?
@available(iOS 4.0, *)
func CMSetAttachments(_ target: CMAttachmentBearer, attachments theAttachments: CFDictionary, attachmentMode: CMAttachmentMode)
@available(iOS 4.0, *)
func CMPropagateAttachments(_ source: CMAttachmentBearer, destination: CMAttachmentBearer)
