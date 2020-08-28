
@available(macOS 10.13, *)
let VNNormalizedIdentityRect: CGRect
@available(macOS 10.13, *)
func VNNormalizedRectIsIdentityRect(_ normalizedRect: CGRect) -> Bool
@available(macOS 10.13, *)
func VNImagePointForNormalizedPoint(_ normalizedPoint: CGPoint, _ imageWidth: Int, _ imageHeight: Int) -> CGPoint
@available(macOS 11.0, *)
func VNNormalizedPointForImagePoint(_ imagePoint: CGPoint, _ imageWidth: Int, _ imageHeight: Int) -> CGPoint
@available(macOS 10.13, *)
func VNImageRectForNormalizedRect(_ normalizedRect: CGRect, _ imageWidth: Int, _ imageHeight: Int) -> CGRect
@available(macOS 10.13, *)
func VNNormalizedRectForImageRect(_ imageRect: CGRect, _ imageWidth: Int, _ imageHeight: Int) -> CGRect
@available(macOS 10.13, *)
func VNNormalizedFaceBoundingBoxPointForLandmarkPoint(_ faceLandmarkPoint: vector_float2, _ faceBoundingBox: CGRect, _ imageWidth: Int, _ imageHeight: Int) -> CGPoint
@available(macOS 10.13, *)
func VNImagePointForFaceLandmarkPoint(_ faceLandmarkPoint: vector_float2, _ faceBoundingBox: CGRect, _ imageWidth: Int, _ imageHeight: Int) -> CGPoint
@available(macOS 10.15, *)
func VNElementTypeSize(_ elementType: VNElementType) -> Int
