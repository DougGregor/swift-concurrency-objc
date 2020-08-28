
@available(macOS 10.13, *)
class AVCameraCalibrationData : NSObject {
  var intrinsicMatrix: matrix_float3x3 { get }
  var intrinsicMatrixReferenceDimensions: CGSize { get }
  var extrinsicMatrix: matrix_float4x3 { get }
  var pixelSize: Float { get }
  var lensDistortionLookupTable: Data? { get }
  var inverseLensDistortionLookupTable: Data? { get }
  var lensDistortionCenter: CGPoint { get }
}
