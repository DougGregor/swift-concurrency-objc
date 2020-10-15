
@available(tvOS 11.0, *)
let VNNormalizedIdentityRect: CGRect
@available(tvOS 11.0, *)
func VNNormalizedRectIsIdentityRect(_ normalizedRect: CGRect) -> Bool
@available(tvOS 11.0, *)
func VNImagePointForNormalizedPoint(_ normalizedPoint: CGPoint, _ imageWidth: Int, _ imageHeight: Int) -> CGPoint
@available(tvOS 14.0, *)
func VNNormalizedPointForImagePoint(_ imagePoint: CGPoint, _ imageWidth: Int, _ imageHeight: Int) -> CGPoint
@available(tvOS 11.0, *)
func VNImageRectForNormalizedRect(_ normalizedRect: CGRect, _ imageWidth: Int, _ imageHeight: Int) -> CGRect
@available(tvOS 11.0, *)
func VNNormalizedRectForImageRect(_ imageRect: CGRect, _ imageWidth: Int, _ imageHeight: Int) -> CGRect
@available(tvOS 11.0, *)
func VNNormalizedFaceBoundingBoxPointForLandmarkPoint(_ faceLandmarkPoint: vector_float2, _ faceBoundingBox: CGRect, _ imageWidth: Int, _ imageHeight: Int) -> CGPoint
@available(tvOS 11.0, *)
func VNImagePointForFaceLandmarkPoint(_ faceLandmarkPoint: vector_float2, _ faceBoundingBox: CGRect, _ imageWidth: Int, _ imageHeight: Int) -> CGPoint
@available(tvOS 13.0, *)
func VNElementTypeSize(_ elementType: VNElementType) -> Int
