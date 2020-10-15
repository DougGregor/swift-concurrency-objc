
@available(macOS 10.7, *)
typealias CMAttachmentBearer = CFTypeRef
@available(macOS 10.7, *)
typealias CMAttachmentMode = UInt32
var kCMAttachmentMode_ShouldNotPropagate: CMAttachmentMode { get }
var kCMAttachmentMode_ShouldPropagate: CMAttachmentMode { get }
@available(macOS 10.7, *)
func CMSetAttachment(_ target: CMAttachmentBearer, key: CFString, value: CFTypeRef?, attachmentMode: CMAttachmentMode)
@available(macOS 10.7, *)
func CMGetAttachment(_ target: CMAttachmentBearer, key: CFString, attachmentModeOut: UnsafeMutablePointer<CMAttachmentMode>?) -> CFTypeRef?
@available(macOS 10.7, *)
func CMRemoveAttachment(_ target: CMAttachmentBearer, key: CFString)
@available(macOS 10.7, *)
func CMRemoveAllAttachments(_ target: CMAttachmentBearer)
@available(macOS 10.7, *)
func CMCopyDictionaryOfAttachments(allocator: CFAllocator?, target: CMAttachmentBearer, attachmentMode: CMAttachmentMode) -> CFDictionary?
@available(macOS 10.7, *)
func CMSetAttachments(_ target: CMAttachmentBearer, attachments theAttachments: CFDictionary, attachmentMode: CMAttachmentMode)
@available(macOS 10.7, *)
func CMPropagateAttachments(_ source: CMAttachmentBearer, destination: CMAttachmentBearer)
