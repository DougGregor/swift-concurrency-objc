
@available(macOS 10.15, *)
class CAEDRMetadata : NSObject {
  class func hdr10(displayInfo displayData: Data?, contentInfo contentData: Data?, opticalOutputScale scale: Float) -> CAEDRMetadata
  class func hdr10(minLuminance minNits: Float, maxLuminance maxNits: Float, opticalOutputScale scale: Float) -> CAEDRMetadata
  class var hlg: CAEDRMetadata { get }
}
