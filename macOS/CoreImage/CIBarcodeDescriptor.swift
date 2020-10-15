
@available(macOS 10.13, *)
class CIBarcodeDescriptor : NSObject, NSSecureCoding, NSCopying {
}
extension CIQRCodeDescriptor {
  enum ErrorCorrectionLevel : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case levelL
    case levelM
    case levelQ
    case levelH
  }
}
@available(macOS 10.13, *)
class CIQRCodeDescriptor : CIBarcodeDescriptor {
  var errorCorrectedPayload: Data { get }
  var symbolVersion: Int { get }
  var maskPattern: UInt8 { get }
  var errorCorrectionLevel: CIQRCodeDescriptor.ErrorCorrectionLevel { get }
  init?(payload errorCorrectedPayload: Data, symbolVersion: Int, maskPattern: UInt8, errorCorrectionLevel: CIQRCodeDescriptor.ErrorCorrectionLevel)
}
@available(macOS 10.13, *)
class CIAztecCodeDescriptor : CIBarcodeDescriptor {
  var errorCorrectedPayload: Data { get }
  var isCompact: Bool { get }
  var layerCount: Int { get }
  var dataCodewordCount: Int { get }
  init?(payload errorCorrectedPayload: Data, isCompact: Bool, layerCount: Int, dataCodewordCount: Int)
}
@available(macOS 10.13, *)
class CIPDF417CodeDescriptor : CIBarcodeDescriptor {
  var errorCorrectedPayload: Data { get }
  var isCompact: Bool { get }
  var rowCount: Int { get }
  var columnCount: Int { get }
  init?(payload errorCorrectedPayload: Data, isCompact: Bool, rowCount: Int, columnCount: Int)
}
extension CIDataMatrixCodeDescriptor {
  enum ECCVersion : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case v000
    case v050
    case v080
    case v100
    case v140
    case v200
  }
}
@available(macOS 10.13, *)
class CIDataMatrixCodeDescriptor : CIBarcodeDescriptor {
  var errorCorrectedPayload: Data { get }
  var rowCount: Int { get }
  var columnCount: Int { get }
  var eccVersion: CIDataMatrixCodeDescriptor.ECCVersion { get }
  init?(payload errorCorrectedPayload: Data, rowCount: Int, columnCount: Int, eccVersion: CIDataMatrixCodeDescriptor.ECCVersion)
}
extension NSUserActivity {
  @available(macOS 10.13.4, *)
  @NSCopying var detectedBarcodeDescriptor: CIBarcodeDescriptor? { get }
}
