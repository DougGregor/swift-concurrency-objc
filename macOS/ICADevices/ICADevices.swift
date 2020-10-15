
@available(macOS 10.6, *)
let kICUTTypeRaw: CFString!
struct ICARawFileHeader {
  var imageDataOffset: UInt32
  var version: UInt32
  var imageWidth: UInt32
  var imageHeight: UInt32
  var bytesPerRow: UInt32
  var numberOfComponents: UInt32
  var bitsPerComponent: UInt32
  var bitsPerPixel: UInt32
  var cgColorSpaceModel: UInt32
  var bitmapInfo: UInt32
  var orientation: UInt32
  var dpi: UInt32
  var colorSyncModeStr: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
  init()
  init(imageDataOffset: UInt32, version: UInt32, imageWidth: UInt32, imageHeight: UInt32, bytesPerRow: UInt32, numberOfComponents: UInt32, bitsPerComponent: UInt32, bitsPerPixel: UInt32, cgColorSpaceModel: UInt32, bitmapInfo: UInt32, orientation: UInt32, dpi: UInt32, colorSyncModeStr: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar))
}
func ICDCreateColorSpace(_ bitsPerPixel: UInt32, _ samplesPerPixel: UInt32, _ icaObject: ICAObject, _ colorSyncMode: CFString!, _ abstractProfile: CFData!, _ tmpProfilePath: UnsafeMutablePointer<CChar>!) -> Unmanaged<CGColorSpace>!
func ICDAddImageInfoToNotificationDictionary(_ dict: CFMutableDictionary!, _ width: UInt32, _ height: UInt32, _ bytesPerRow: UInt32, _ dataStartRow: UInt32, _ dataNumberOfRows: UInt32, _ dataSize: UInt32, _ dataBuffer: UnsafeMutableRawPointer!) -> ICAError
func ICDAddBandInfoToNotificationDictionary(_ dict: CFMutableDictionary!, _ width: UInt32, _ height: UInt32, _ bitsPerPixel: UInt32, _ bitsPerComponent: UInt32, _ numComponents: UInt32, _ endianness: UInt32, _ pixelDataType: UInt32, _ bytesPerRow: UInt32, _ dataStartRow: UInt32, _ dataNumberOfRows: UInt32, _ dataSize: UInt32, _ dataBuffer: UnsafeMutableRawPointer!) -> ICAError
func ICDSendNotification(_ pb: UnsafeMutablePointer<ICASendNotificationPB>!) -> ICAError
func ICDSendNotificationAndWaitForReply(_ pb: UnsafeMutablePointer<ICASendNotificationPB>!) -> ICAError
