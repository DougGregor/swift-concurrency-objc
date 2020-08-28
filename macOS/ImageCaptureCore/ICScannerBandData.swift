
@available(macOS 10.4, *)
class ICScannerBandData : NSObject {
  @available(macOS 10.4, *)
  var fullImageWidth: Int { get }
  @available(macOS 10.4, *)
  var fullImageHeight: Int { get }
  @available(macOS 10.4, *)
  var bitsPerPixel: Int { get }
  @available(macOS 10.4, *)
  var bitsPerComponent: Int { get }
  @available(macOS 10.4, *)
  var numComponents: Int { get }
  @available(macOS 10.4, *)
  var isBigEndian: Bool { get }
  @available(macOS 10.4, *)
  var pixelDataType: ICScannerPixelDataType { get }
  @available(macOS 10.4, *)
  var colorSyncProfilePath: String? { get }
  @available(macOS 10.4, *)
  var bytesPerRow: Int { get }
  @available(macOS 10.4, *)
  var dataStartRow: Int { get }
  @available(macOS 10.4, *)
  var dataNumRows: Int { get }
  @available(macOS 10.4, *)
  var dataSize: Int { get }
  @available(macOS 10.4, *)
  var dataBuffer: Data? { get }
}
