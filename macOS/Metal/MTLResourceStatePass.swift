
var MTLMaxResourceStatePassSampleBuffers: Int32 { get }
@available(macOS 11.0, *)
class MTLResourceStatePassSampleBufferAttachmentDescriptor : NSObject, NSCopying {
  var sampleBuffer: MTLCounterSampleBuffer?
  var startOfEncoderSampleIndex: Int
  var endOfEncoderSampleIndex: Int
}
@available(macOS 11.0, *)
class MTLResourceStatePassSampleBufferAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLResourceStatePassSampleBufferAttachmentDescriptor!
}
@available(macOS 11.0, *)
class MTLResourceStatePassDescriptor : NSObject, NSCopying {
  @available(macOS 11.0, *)
  var sampleBufferAttachments: MTLResourceStatePassSampleBufferAttachmentDescriptorArray { get }
}
