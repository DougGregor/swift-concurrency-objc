
var MTLMaxResourceStatePassSampleBuffers: Int32 { get }
@available(iOS 14.0, *)
class MTLResourceStatePassSampleBufferAttachmentDescriptor : NSObject, NSCopying {
  var sampleBuffer: MTLCounterSampleBuffer?
  var startOfEncoderSampleIndex: Int
  var endOfEncoderSampleIndex: Int
}
@available(iOS 14.0, *)
class MTLResourceStatePassSampleBufferAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLResourceStatePassSampleBufferAttachmentDescriptor!
}
@available(iOS 14.0, *)
class MTLResourceStatePassDescriptor : NSObject, NSCopying {
  @available(iOS 14.0, *)
  var sampleBufferAttachments: MTLResourceStatePassSampleBufferAttachmentDescriptorArray { get }
}
