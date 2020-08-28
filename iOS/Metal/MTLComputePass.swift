
var MTLCounterDontSample: Int { get }
var MTLMaxComputePassSampleBuffers: Int32 { get }
@available(iOS 14.0, *)
class MTLComputePassSampleBufferAttachmentDescriptor : NSObject, NSCopying {
  var sampleBuffer: MTLCounterSampleBuffer?
  var startOfEncoderSampleIndex: Int
  var endOfEncoderSampleIndex: Int
}
@available(iOS 14.0, *)
class MTLComputePassSampleBufferAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLComputePassSampleBufferAttachmentDescriptor!
}
@available(iOS 14.0, *)
class MTLComputePassDescriptor : NSObject, NSCopying {
  var dispatchType: MTLDispatchType
  var sampleBufferAttachments: MTLComputePassSampleBufferAttachmentDescriptorArray { get }
}
