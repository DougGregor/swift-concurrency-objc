
var MTLMaxBlitPassSampleBuffers: Int32 { get }
@available(iOS 14.0, *)
class MTLBlitPassSampleBufferAttachmentDescriptor : NSObject, NSCopying {
  var sampleBuffer: MTLCounterSampleBuffer?
  var startOfEncoderSampleIndex: Int
  var endOfEncoderSampleIndex: Int
}
@available(iOS 14.0, *)
class MTLBlitPassSampleBufferAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLBlitPassSampleBufferAttachmentDescriptor!
}
@available(iOS 14.0, *)
class MTLBlitPassDescriptor : NSObject, NSCopying {
  var sampleBufferAttachments: MTLBlitPassSampleBufferAttachmentDescriptorArray { get }
}
