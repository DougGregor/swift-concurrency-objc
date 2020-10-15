
protocol CIGaussianGradient : CIFilterProtocol {
  var center: CGPoint { get set }
  @available(tvOS 5.0, *)
  var color0: CIColor { get set }
  @available(tvOS 5.0, *)
  var color1: CIColor { get set }
  var radius: Float { get set }
}
protocol CIHueSaturationValueGradient : CIFilterProtocol {
  var value: Float { get set }
  var radius: Float { get set }
  var softness: Float { get set }
  var dither: Float { get set }
  var colorSpace: CGColorSpace? { get set }
}
protocol CILinearGradient : CIFilterProtocol {
  var point0: CGPoint { get set }
  var point1: CGPoint { get set }
  @available(tvOS 5.0, *)
  var color0: CIColor { get set }
  @available(tvOS 5.0, *)
  var color1: CIColor { get set }
}
protocol CIRadialGradient : CIFilterProtocol {
  var center: CGPoint { get set }
  var radius0: Float { get set }
  var radius1: Float { get set }
  @available(tvOS 5.0, *)
  var color0: CIColor { get set }
  @available(tvOS 5.0, *)
  var color1: CIColor { get set }
}
protocol CISmoothLinearGradient : CIFilterProtocol {
  var point0: CGPoint { get set }
  var point1: CGPoint { get set }
  @available(tvOS 5.0, *)
  var color0: CIColor { get set }
  @available(tvOS 5.0, *)
  var color1: CIColor { get set }
}
protocol CISharpenLuminance : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var sharpness: Float { get set }
  var radius: Float { get set }
}
protocol CIUnsharpMask : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
  var intensity: Float { get set }
}
protocol CICircularScreen : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var width: Float { get set }
  var sharpness: Float { get set }
}
protocol CICMYKHalftone : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var width: Float { get set }
  var angle: Float { get set }
  var sharpness: Float { get set }
  var grayComponentReplacement: Float { get set }
  var underColorRemoval: Float { get set }
}
protocol CIDotScreen : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
  var sharpness: Float { get set }
}
protocol CIHatchedScreen : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
  var sharpness: Float { get set }
}
protocol CILineScreen : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
  var sharpness: Float { get set }
}
protocol CIFourCoordinateGeometryFilter : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var topLeft: CGPoint { get set }
  var topRight: CGPoint { get set }
  var bottomRight: CGPoint { get set }
  var bottomLeft: CGPoint { get set }
}
protocol CIBicubicScaleTransform : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var scale: Float { get set }
  var aspectRatio: Float { get set }
  var parameterB: Float { get set }
  var parameterC: Float { get set }
}
protocol CIEdgePreserveUpsample : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var smallImage: CIImage? { get set }
  var spatialSigma: Float { get set }
  var lumaSigma: Float { get set }
}
protocol CIKeystoneCorrectionCombined : CIFourCoordinateGeometryFilter {
  var focalLength: Float { get set }
}
protocol CIKeystoneCorrectionHorizontal : CIFourCoordinateGeometryFilter {
  var focalLength: Float { get set }
}
protocol CIKeystoneCorrectionVertical : CIFourCoordinateGeometryFilter {
  var focalLength: Float { get set }
}
protocol CILanczosScaleTransform : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var scale: Float { get set }
  var aspectRatio: Float { get set }
}
protocol CIPerspectiveCorrection : CIFourCoordinateGeometryFilter {
  var crop: Bool { get set }
}
protocol CIPerspectiveRotate : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var focalLength: Float { get set }
  var pitch: Float { get set }
  var yaw: Float { get set }
  var roll: Float { get set }
}
protocol CIPerspectiveTransform : CIFourCoordinateGeometryFilter {
}
protocol CIPerspectiveTransformWithExtent : CIFourCoordinateGeometryFilter {
  var extent: CGRect { get set }
}
protocol CIStraighten : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var angle: Float { get set }
}
protocol CITransitionFilter : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var targetImage: CIImage? { get set }
  var time: Float { get set }
}
protocol CIAccordionFoldTransition : CITransitionFilter {
  var bottomHeight: Float { get set }
  var numberOfFolds: Float { get set }
  var foldShadowAmount: Float { get set }
}
protocol CIBarsSwipeTransition : CITransitionFilter {
  var angle: Float { get set }
  var width: Float { get set }
  var barOffset: Float { get set }
}
protocol CICopyMachineTransition : CITransitionFilter {
  var extent: CGRect { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
  var angle: Float { get set }
  var width: Float { get set }
  var opacity: Float { get set }
}
protocol CIDisintegrateWithMaskTransition : CITransitionFilter {
  @available(tvOS 5.0, *)
  var maskImage: CIImage? { get set }
  var shadowRadius: Float { get set }
  var shadowDensity: Float { get set }
  var shadowOffset: CGPoint { get set }
}
protocol CIDissolveTransition : CITransitionFilter {
}
protocol CIFlashTransition : CITransitionFilter {
  var center: CGPoint { get set }
  var extent: CGRect { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
  var maxStriationRadius: Float { get set }
  var striationStrength: Float { get set }
  var striationContrast: Float { get set }
  var fadeThreshold: Float { get set }
}
protocol CIModTransition : CITransitionFilter {
  var center: CGPoint { get set }
  var angle: Float { get set }
  var radius: Float { get set }
  var compression: Float { get set }
}
protocol CIPageCurlTransition : CITransitionFilter {
  @available(tvOS 5.0, *)
  var backsideImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var shadingImage: CIImage? { get set }
  var extent: CGRect { get set }
  var angle: Float { get set }
  var radius: Float { get set }
}
protocol CIPageCurlWithShadowTransition : CITransitionFilter {
  @available(tvOS 5.0, *)
  var backsideImage: CIImage? { get set }
  var extent: CGRect { get set }
  var angle: Float { get set }
  var radius: Float { get set }
  var shadowSize: Float { get set }
  var shadowAmount: Float { get set }
  var shadowExtent: CGRect { get set }
}
protocol CIRippleTransition : CITransitionFilter {
  @available(tvOS 5.0, *)
  var shadingImage: CIImage? { get set }
  var center: CGPoint { get set }
  var extent: CGRect { get set }
  var width: Float { get set }
  var scale: Float { get set }
}
protocol CISwipeTransition : CITransitionFilter {
  var extent: CGRect { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
  var angle: Float { get set }
  var width: Float { get set }
  var opacity: Float { get set }
}
protocol CICompositeOperation : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var backgroundImage: CIImage? { get set }
}
protocol CIColorAbsoluteDifference : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var inputImage2: CIImage? { get set }
}
protocol CIColorClamp : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var minComponents: CIVector { get set }
  @available(tvOS 5.0, *)
  var maxComponents: CIVector { get set }
}
protocol CIColorControls : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var saturation: Float { get set }
  var brightness: Float { get set }
  var contrast: Float { get set }
}
protocol CIColorMatrix : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var rVector: CIVector { get set }
  @available(tvOS 5.0, *)
  var gVector: CIVector { get set }
  @available(tvOS 5.0, *)
  var bVector: CIVector { get set }
  @available(tvOS 5.0, *)
  var aVector: CIVector { get set }
  @available(tvOS 5.0, *)
  var biasVector: CIVector { get set }
}
protocol CIColorPolynomial : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var redCoefficients: CIVector { get set }
  @available(tvOS 5.0, *)
  var greenCoefficients: CIVector { get set }
  @available(tvOS 5.0, *)
  var blueCoefficients: CIVector { get set }
  @available(tvOS 5.0, *)
  var alphaCoefficients: CIVector { get set }
}
protocol CIColorThreshold : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var threshold: Float { get set }
}
protocol CIColorThresholdOtsu : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIDepthToDisparity : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIDisparityToDepth : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIExposureAdjust : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var ev: Float { get set }
}
protocol CIGammaAdjust : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var power: Float { get set }
}
protocol CIHueAdjust : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var angle: Float { get set }
}
protocol CILinearToSRGBToneCurve : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CISRGBToneCurveToLinear : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CITemperatureAndTint : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var neutral: CIVector { get set }
  @available(tvOS 5.0, *)
  var targetNeutral: CIVector { get set }
}
protocol CIToneCurve : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var point0: CGPoint { get set }
  var point1: CGPoint { get set }
  var point2: CGPoint { get set }
  var point3: CGPoint { get set }
  var point4: CGPoint { get set }
}
protocol CIVibrance : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var amount: Float { get set }
}
protocol CIWhitePointAdjust : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
}
protocol CIColorCrossPolynomial : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var redCoefficients: CIVector { get set }
  @available(tvOS 5.0, *)
  var greenCoefficients: CIVector { get set }
  @available(tvOS 5.0, *)
  var blueCoefficients: CIVector { get set }
}
protocol CIColorCube : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var cubeDimension: Float { get set }
  var cubeData: Data { get set }
}
protocol CIColorCubesMixedWithMask : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var maskImage: CIImage? { get set }
  var cubeDimension: Float { get set }
  var cube0Data: Data { get set }
  var cube1Data: Data { get set }
  var colorSpace: CGColorSpace? { get set }
}
protocol CIColorCubeWithColorSpace : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var cubeDimension: Float { get set }
  var cubeData: Data { get set }
  var colorSpace: CGColorSpace? { get set }
}
protocol CIColorCurves : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var curvesData: Data { get set }
  @available(tvOS 5.0, *)
  var curvesDomain: CIVector { get set }
  var colorSpace: CGColorSpace? { get set }
}
protocol CIColorInvert : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIColorMap : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var gradientImage: CIImage? { get set }
}
protocol CIColorMonochrome : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
  var intensity: Float { get set }
}
protocol CIColorPosterize : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var levels: Float { get set }
}
protocol CIDither : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var intensity: Float { get set }
}
protocol CIDocumentEnhancer : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var amount: Float { get set }
}
protocol CIFalseColor : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var color0: CIColor { get set }
  @available(tvOS 5.0, *)
  var color1: CIColor { get set }
}
protocol CILabDeltaE : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var image2: CIImage? { get set }
}
protocol CIMaskToAlpha : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIMaximumComponent : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIMinimumComponent : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIPaletteCentroid : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var paletteImage: CIImage? { get set }
  var perceptual: Bool { get set }
}
protocol CIPalettize : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var paletteImage: CIImage? { get set }
  var perceptual: Bool { get set }
}
protocol CIPhotoEffect : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CISepiaTone : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var intensity: Float { get set }
}
protocol CIThermal : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIVignette : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var intensity: Float { get set }
  var radius: Float { get set }
}
protocol CIVignetteEffect : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
  var intensity: Float { get set }
  var falloff: Float { get set }
}
protocol CIXRay : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIBumpDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
  var scale: Float { get set }
}
protocol CIBumpDistortionLinear : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
  var angle: Float { get set }
  var scale: Float { get set }
}
protocol CICircleSplashDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
}
protocol CICircularWrap : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
  var angle: Float { get set }
}
protocol CIDisplacementDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var displacementImage: CIImage? { get set }
  var scale: Float { get set }
}
protocol CIDroste : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var insetPoint0: CGPoint { get set }
  var insetPoint1: CGPoint { get set }
  var strands: Float { get set }
  var periodicity: Float { get set }
  var rotation: Float { get set }
  var zoom: Float { get set }
}
protocol CIGlassDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var textureImage: CIImage? { get set }
  var center: CGPoint { get set }
  var scale: Float { get set }
}
protocol CIGlassLozenge : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var point0: CGPoint { get set }
  var point1: CGPoint { get set }
  var radius: Float { get set }
  var refraction: Float { get set }
}
protocol CIHoleDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
}
protocol CILightTunnel : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var rotation: Float { get set }
  var radius: Float { get set }
}
protocol CINinePartStretched : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var breakpoint0: CGPoint { get set }
  var breakpoint1: CGPoint { get set }
  var growAmount: CGPoint { get set }
}
protocol CINinePartTiled : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var breakpoint0: CGPoint { get set }
  var breakpoint1: CGPoint { get set }
  var growAmount: CGPoint { get set }
  var flipYTiles: Bool { get set }
}
protocol CIPinchDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
  var scale: Float { get set }
}
protocol CIStretchCrop : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var size: CGPoint { get set }
  var cropAmount: Float { get set }
  var centerStretchAmount: Float { get set }
}
protocol CITorusLensDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
  var width: Float { get set }
  var refraction: Float { get set }
}
protocol CITwirlDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
  var angle: Float { get set }
}
protocol CIVortexDistortion : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var radius: Float { get set }
  var angle: Float { get set }
}
protocol CIAffineClamp : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var transform: CGAffineTransform { get set }
}
protocol CIAffineTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var transform: CGAffineTransform { get set }
}
protocol CIEightfoldReflectedTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
}
protocol CIFourfoldReflectedTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
  var acuteAngle: Float { get set }
}
protocol CIFourfoldRotatedTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
}
protocol CIFourfoldTranslatedTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
  var acuteAngle: Float { get set }
}
protocol CIGlideReflectedTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
}
protocol CIKaleidoscope : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var count: Int { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
}
protocol CIOpTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var scale: Float { get set }
  var angle: Float { get set }
  var width: Float { get set }
}
protocol CIParallelogramTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var acuteAngle: Float { get set }
  var width: Float { get set }
}
protocol CIPerspectiveTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var topLeft: CGPoint { get set }
  var topRight: CGPoint { get set }
  var bottomRight: CGPoint { get set }
  var bottomLeft: CGPoint { get set }
}
protocol CISixfoldReflectedTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
}
protocol CISixfoldRotatedTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
}
protocol CITriangleKaleidoscope : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var point: CGPoint { get set }
  var size: Float { get set }
  var rotation: Float { get set }
  var decay: Float { get set }
}
protocol CITriangleTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
}
protocol CITwelvefoldReflectedTile : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var angle: Float { get set }
  var width: Float { get set }
}
protocol CIAttributedTextImageGenerator : CIFilterProtocol {
  @available(tvOS 9.0, *)
  var text: NSAttributedString { get set }
  var scaleFactor: Float { get set }
}
protocol CIAztecCodeGenerator : CIFilterProtocol {
  var message: Data { get set }
  var correctionLevel: Float { get set }
  var layers: Float { get set }
  var compactStyle: Float { get set }
}
protocol CIBarcodeGenerator : CIFilterProtocol {
  @available(tvOS 11.0, *)
  var barcodeDescriptor: CIBarcodeDescriptor { get set }
}
protocol CICheckerboardGenerator : CIFilterProtocol {
  var center: CGPoint { get set }
  @available(tvOS 5.0, *)
  var color0: CIColor { get set }
  @available(tvOS 5.0, *)
  var color1: CIColor { get set }
  var width: Float { get set }
  var sharpness: Float { get set }
}
protocol CICode128BarcodeGenerator : CIFilterProtocol {
  var message: Data { get set }
  var quietSpace: Float { get set }
  var barcodeHeight: Float { get set }
}
protocol CILenticularHaloGenerator : CIFilterProtocol {
  var center: CGPoint { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
  var haloRadius: Float { get set }
  var haloWidth: Float { get set }
  var haloOverlap: Float { get set }
  var striationStrength: Float { get set }
  var striationContrast: Float { get set }
  var time: Float { get set }
}
protocol CIMeshGenerator : CIFilterProtocol {
  var width: Float { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
  var mesh: [Any] { get set }
}
protocol CIPDF417BarcodeGenerator : CIFilterProtocol {
  var message: Data { get set }
  var minWidth: Float { get set }
  var maxWidth: Float { get set }
  var minHeight: Float { get set }
  var maxHeight: Float { get set }
  var dataColumns: Float { get set }
  var rows: Float { get set }
  var preferredAspectRatio: Float { get set }
  var compactionMode: Float { get set }
  var compactStyle: Float { get set }
  var correctionLevel: Float { get set }
  var alwaysSpecifyCompaction: Float { get set }
}
protocol CIQRCodeGenerator : CIFilterProtocol {
  var message: Data { get set }
  var correctionLevel: String { get set }
}
protocol CIRandomGenerator : CIFilterProtocol {
}
protocol CIRoundedRectangleGenerator : CIFilterProtocol {
  var extent: CGRect { get set }
  var radius: Float { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
}
protocol CIStarShineGenerator : CIFilterProtocol {
  var center: CGPoint { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
  var radius: Float { get set }
  var crossScale: Float { get set }
  var crossAngle: Float { get set }
  var crossOpacity: Float { get set }
  var crossWidth: Float { get set }
  var epsilon: Float { get set }
}
protocol CIStripesGenerator : CIFilterProtocol {
  var center: CGPoint { get set }
  @available(tvOS 5.0, *)
  var color0: CIColor { get set }
  @available(tvOS 5.0, *)
  var color1: CIColor { get set }
  var width: Float { get set }
  var sharpness: Float { get set }
}
protocol CISunbeamsGenerator : CIFilterProtocol {
  var center: CGPoint { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
  var sunRadius: Float { get set }
  var maxStriationRadius: Float { get set }
  var striationStrength: Float { get set }
  var striationContrast: Float { get set }
  var time: Float { get set }
}
protocol CITextImageGenerator : CIFilterProtocol {
  var text: String { get set }
  var fontName: String { get set }
  var fontSize: Float { get set }
  var scaleFactor: Float { get set }
}
protocol CIBlendWithMask : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var backgroundImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var maskImage: CIImage? { get set }
}
protocol CIBloom : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
  var intensity: Float { get set }
}
protocol CIComicEffect : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIConvolution : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var weights: CIVector { get set }
  var bias: Float { get set }
}
protocol CICoreMLModel : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var headIndex: Float { get set }
  var softmaxNormalization: Bool { get set }
}
protocol CICrystallize : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
  var center: CGPoint { get set }
}
protocol CIDepthOfField : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var point0: CGPoint { get set }
  var point1: CGPoint { get set }
  var saturation: Float { get set }
  var unsharpMaskRadius: Float { get set }
  var unsharpMaskIntensity: Float { get set }
  var radius: Float { get set }
}
protocol CIEdges : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var intensity: Float { get set }
}
protocol CIEdgeWork : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIGaborGradients : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIGloom : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
  var intensity: Float { get set }
}
protocol CIHeightFieldFromMask : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIHexagonalPixellate : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var scale: Float { get set }
}
protocol CIHighlightShadowAdjust : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
  var shadowAmount: Float { get set }
  var highlightAmount: Float { get set }
}
protocol CILineOverlay : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var nrNoiseLevel: Float { get set }
  var nrSharpness: Float { get set }
  var edgeIntensity: Float { get set }
  var threshold: Float { get set }
  var contrast: Float { get set }
}
protocol CIMix : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var backgroundImage: CIImage? { get set }
  var amount: Float { get set }
}
protocol CIPixellate : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var scale: Float { get set }
}
protocol CIPointillize : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
  var center: CGPoint { get set }
}
protocol CISaliencyMap : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIShadedMaterial : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var shadingImage: CIImage? { get set }
  var scale: Float { get set }
}
protocol CISpotColor : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var centerColor1: CIColor { get set }
  @available(tvOS 5.0, *)
  var replacementColor1: CIColor { get set }
  var closeness1: Float { get set }
  var contrast1: Float { get set }
  @available(tvOS 5.0, *)
  var centerColor2: CIColor { get set }
  @available(tvOS 5.0, *)
  var replacementColor2: CIColor { get set }
  var closeness2: Float { get set }
  var contrast2: Float { get set }
  @available(tvOS 5.0, *)
  var centerColor3: CIColor { get set }
  @available(tvOS 5.0, *)
  var replacementColor3: CIColor { get set }
  var closeness3: Float { get set }
  var contrast3: Float { get set }
}
protocol CISpotLight : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var lightPosition: CIVector { get set }
  @available(tvOS 5.0, *)
  var lightPointsAt: CIVector { get set }
  var brightness: Float { get set }
  var concentration: Float { get set }
  @available(tvOS 5.0, *)
  var color: CIColor { get set }
}
protocol CIBokehBlur : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
  var ringAmount: Float { get set }
  var ringSize: Float { get set }
  var softness: Float { get set }
}
protocol CIBoxBlur : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIDiscBlur : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIGaussianBlur : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIMaskedVariableBlur : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  @available(tvOS 5.0, *)
  var mask: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIMedian : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
}
protocol CIMorphologyGradient : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIMorphologyMaximum : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIMorphologyMinimum : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
}
protocol CIMorphologyRectangleMaximum : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var width: Float { get set }
  var height: Float { get set }
}
protocol CIMorphologyRectangleMinimum : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var width: Float { get set }
  var height: Float { get set }
}
protocol CIMotionBlur : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var radius: Float { get set }
  var angle: Float { get set }
}
protocol CINoiseReduction : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var noiseLevel: Float { get set }
  var sharpness: Float { get set }
}
protocol CIZoomBlur : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var center: CGPoint { get set }
  var amount: Float { get set }
}
protocol CIAreaReductionFilter : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var extent: CGRect { get set }
}
protocol CIAreaAverage : CIAreaReductionFilter {
}
protocol CIAreaHistogram : CIAreaReductionFilter {
  var scale: Float { get set }
  var count: Int { get set }
}
protocol CIAreaMaximum : CIAreaReductionFilter {
}
protocol CIAreaMaximumAlpha : CIAreaReductionFilter {
}
protocol CIAreaMinimum : CIAreaReductionFilter {
}
protocol CIAreaMinimumAlpha : CIAreaReductionFilter {
}
protocol CIAreaMinMax : CIAreaReductionFilter {
}
protocol CIAreaMinMaxRed : CIAreaReductionFilter {
}
protocol CIColumnAverage : CIAreaReductionFilter {
}
protocol CIHistogramDisplay : CIFilterProtocol {
  @available(tvOS 5.0, *)
  var inputImage: CIImage? { get set }
  var height: Float { get set }
  var highLimit: Float { get set }
  var lowLimit: Float { get set }
}
protocol CIKMeans : CIAreaReductionFilter {
  @available(tvOS 5.0, *)
  var inputMeans: CIImage? { get set }
  var count: Int { get set }
  var passes: Float { get set }
  var perceptual: Bool { get set }
}
protocol CIRowAverage : CIAreaReductionFilter {
}
@available(tvOS 13.0, *)
extension CIFilter {
  class func gaussianGradient() -> CIFilter & CIGaussianGradient
  class func hueSaturationValueGradient() -> CIFilter & CIHueSaturationValueGradient
  class func linearGradient() -> CIFilter & CILinearGradient
  class func radialGradient() -> CIFilter & CIRadialGradient
  class func smoothLinearGradient() -> CIFilter & CISmoothLinearGradient
  class func sharpenLuminance() -> CIFilter & CISharpenLuminance
  class func unsharpMask() -> CIFilter & CIUnsharpMask
  class func circularScreen() -> CIFilter & CICircularScreen
  class func cmykHalftone() -> CIFilter & CICMYKHalftone
  class func dotScreen() -> CIFilter & CIDotScreen
  class func hatchedScreen() -> CIFilter & CIHatchedScreen
  class func lineScreen() -> CIFilter & CILineScreen
  class func bicubicScaleTransform() -> CIFilter & CIBicubicScaleTransform
  class func edgePreserveUpsample() -> CIFilter & CIEdgePreserveUpsample
  class func keystoneCorrectionCombined() -> CIFilter & CIKeystoneCorrectionCombined
  class func keystoneCorrectionHorizontal() -> CIFilter & CIKeystoneCorrectionHorizontal
  class func keystoneCorrectionVertical() -> CIFilter & CIKeystoneCorrectionVertical
  class func lanczosScaleTransform() -> CIFilter & CILanczosScaleTransform
  class func perspectiveCorrection() -> CIFilter & CIPerspectiveCorrection
  class func perspectiveRotate() -> CIFilter & CIPerspectiveRotate
  class func perspectiveTransform() -> CIFilter & CIPerspectiveTransform
  class func perspectiveTransformWithExtent() -> CIFilter & CIPerspectiveTransformWithExtent
  class func straighten() -> CIFilter & CIStraighten
  class func accordionFoldTransition() -> CIFilter & CIAccordionFoldTransition
  class func barsSwipeTransition() -> CIFilter & CIBarsSwipeTransition
  class func copyMachineTransition() -> CIFilter & CICopyMachineTransition
  class func disintegrateWithMaskTransition() -> CIFilter & CIDisintegrateWithMaskTransition
  class func dissolveTransition() -> CIFilter & CIDissolveTransition
  class func flashTransition() -> CIFilter & CIFlashTransition
  class func modTransition() -> CIFilter & CIModTransition
  class func pageCurlTransition() -> CIFilter & CIPageCurlTransition
  class func pageCurlWithShadowTransition() -> CIFilter & CIPageCurlWithShadowTransition
  class func rippleTransition() -> CIFilter & CIRippleTransition
  class func swipeTransition() -> CIFilter & CISwipeTransition
  class func additionCompositing() -> CIFilter & CICompositeOperation
  class func colorBlendMode() -> CIFilter & CICompositeOperation
  class func colorBurnBlendMode() -> CIFilter & CICompositeOperation
  class func colorDodgeBlendMode() -> CIFilter & CICompositeOperation
  class func darkenBlendMode() -> CIFilter & CICompositeOperation
  class func differenceBlendMode() -> CIFilter & CICompositeOperation
  class func divideBlendMode() -> CIFilter & CICompositeOperation
  class func exclusionBlendMode() -> CIFilter & CICompositeOperation
  class func hardLightBlendMode() -> CIFilter & CICompositeOperation
  class func hueBlendMode() -> CIFilter & CICompositeOperation
  class func lightenBlendMode() -> CIFilter & CICompositeOperation
  class func linearBurnBlendMode() -> CIFilter & CICompositeOperation
  class func linearDodgeBlendMode() -> CIFilter & CICompositeOperation
  class func luminosityBlendMode() -> CIFilter & CICompositeOperation
  class func maximumCompositing() -> CIFilter & CICompositeOperation
  class func minimumCompositing() -> CIFilter & CICompositeOperation
  class func multiplyBlendMode() -> CIFilter & CICompositeOperation
  class func multiplyCompositing() -> CIFilter & CICompositeOperation
  class func overlayBlendMode() -> CIFilter & CICompositeOperation
  class func pinLightBlendMode() -> CIFilter & CICompositeOperation
  class func saturationBlendMode() -> CIFilter & CICompositeOperation
  class func screenBlendMode() -> CIFilter & CICompositeOperation
  class func softLightBlendMode() -> CIFilter & CICompositeOperation
  class func sourceAtopCompositing() -> CIFilter & CICompositeOperation
  class func sourceInCompositing() -> CIFilter & CICompositeOperation
  class func sourceOutCompositing() -> CIFilter & CICompositeOperation
  class func sourceOverCompositing() -> CIFilter & CICompositeOperation
  class func subtractBlendMode() -> CIFilter & CICompositeOperation
  @available(tvOS 14.0, *)
  class func colorAbsoluteDifference() -> CIFilter & CIColorAbsoluteDifference
  class func colorClamp() -> CIFilter & CIColorClamp
  class func colorControls() -> CIFilter & CIColorControls
  class func colorMatrix() -> CIFilter & CIColorMatrix
  class func colorPolynomial() -> CIFilter & CIColorPolynomial
  @available(tvOS 14.0, *)
  class func colorThreshold() -> CIFilter & CIColorThreshold
  @available(tvOS 14.0, *)
  class func colorThresholdOtsu() -> CIFilter & CIColorThresholdOtsu
  class func depthToDisparity() -> CIFilter & CIDepthToDisparity
  class func disparityToDepth() -> CIFilter & CIDisparityToDepth
  class func exposureAdjust() -> CIFilter & CIExposureAdjust
  class func gammaAdjust() -> CIFilter & CIGammaAdjust
  class func hueAdjust() -> CIFilter & CIHueAdjust
  class func linearToSRGBToneCurve() -> CIFilter & CILinearToSRGBToneCurve
  class func sRGBToneCurveToLinear() -> CIFilter & CISRGBToneCurveToLinear
  class func temperatureAndTint() -> CIFilter & CITemperatureAndTint
  class func toneCurve() -> CIFilter & CIToneCurve
  class func vibrance() -> CIFilter & CIVibrance
  class func whitePointAdjust() -> CIFilter & CIWhitePointAdjust
  class func colorCrossPolynomial() -> CIFilter & CIColorCrossPolynomial
  class func colorCube() -> CIFilter & CIColorCube
  class func colorCubesMixedWithMask() -> CIFilter & CIColorCubesMixedWithMask
  class func colorCubeWithColorSpace() -> CIFilter & CIColorCubeWithColorSpace
  class func colorCurves() -> CIFilter & CIColorCurves
  class func colorInvert() -> CIFilter & CIColorInvert
  class func colorMap() -> CIFilter & CIColorMap
  class func colorMonochrome() -> CIFilter & CIColorMonochrome
  class func colorPosterize() -> CIFilter & CIColorPosterize
  class func dither() -> CIFilter & CIDither
  class func documentEnhancer() -> CIFilter & CIDocumentEnhancer
  class func falseColor() -> CIFilter & CIFalseColor
  class func labDeltaE() -> CIFilter & CILabDeltaE
  class func maskToAlpha() -> CIFilter & CIMaskToAlpha
  class func maximumComponent() -> CIFilter & CIMaximumComponent
  class func minimumComponent() -> CIFilter & CIMinimumComponent
  class func paletteCentroid() -> CIFilter & CIPaletteCentroid
  class func palettize() -> CIFilter & CIPalettize
  class func photoEffectChrome() -> CIFilter & CIPhotoEffect
  class func photoEffectFade() -> CIFilter & CIPhotoEffect
  class func photoEffectInstant() -> CIFilter & CIPhotoEffect
  class func photoEffectMono() -> CIFilter & CIPhotoEffect
  class func photoEffectNoir() -> CIFilter & CIPhotoEffect
  class func photoEffectProcess() -> CIFilter & CIPhotoEffect
  class func photoEffectTonal() -> CIFilter & CIPhotoEffect
  class func photoEffectTransfer() -> CIFilter & CIPhotoEffect
  class func sepiaTone() -> CIFilter & CISepiaTone
  class func thermal() -> CIFilter & CIThermal
  class func vignette() -> CIFilter & CIVignette
  class func vignetteEffect() -> CIFilter & CIVignetteEffect
  class func xRay() -> CIFilter & CIXRay
  @available(tvOS 14.0, *)
  class func bumpDistortion() -> CIFilter & CIBumpDistortion
  @available(tvOS 14.0, *)
  class func bumpDistortionLinear() -> CIFilter & CIBumpDistortionLinear
  @available(tvOS 14.0, *)
  class func circleSplashDistortion() -> CIFilter & CICircleSplashDistortion
  @available(tvOS 14.0, *)
  class func circularWrap() -> CIFilter & CICircularWrap
  @available(tvOS 14.0, *)
  class func displacementDistortion() -> CIFilter & CIDisplacementDistortion
  @available(tvOS 14.0, *)
  class func droste() -> CIFilter & CIDroste
  @available(tvOS 14.0, *)
  class func glassDistortion() -> CIFilter & CIGlassDistortion
  @available(tvOS 14.0, *)
  class func glassLozenge() -> CIFilter & CIGlassLozenge
  @available(tvOS 14.0, *)
  class func holeDistortion() -> CIFilter & CIHoleDistortion
  @available(tvOS 14.0, *)
  class func lightTunnel() -> CIFilter & CILightTunnel
  @available(tvOS 14.0, *)
  class func ninePartStretched() -> CIFilter & CINinePartStretched
  @available(tvOS 14.0, *)
  class func ninePartTiled() -> CIFilter & CINinePartTiled
  @available(tvOS 14.0, *)
  class func pinchDistortion() -> CIFilter & CIPinchDistortion
  @available(tvOS 14.0, *)
  class func stretchCrop() -> CIFilter & CIStretchCrop
  @available(tvOS 14.0, *)
  class func torusLensDistortion() -> CIFilter & CITorusLensDistortion
  @available(tvOS 14.0, *)
  class func twirlDistortion() -> CIFilter & CITwirlDistortion
  @available(tvOS 14.0, *)
  class func vortexDistortion() -> CIFilter & CIVortexDistortion
  class func affineClamp() -> CIFilter & CIAffineClamp
  class func affineTile() -> CIFilter & CIAffineTile
  class func eightfoldReflectedTile() -> CIFilter & CIEightfoldReflectedTile
  class func fourfoldReflectedTile() -> CIFilter & CIFourfoldReflectedTile
  class func fourfoldRotatedTile() -> CIFilter & CIFourfoldRotatedTile
  class func fourfoldTranslatedTile() -> CIFilter & CIFourfoldTranslatedTile
  class func glideReflectedTile() -> CIFilter & CIGlideReflectedTile
  class func kaleidoscope() -> CIFilter & CIKaleidoscope
  class func opTile() -> CIFilter & CIOpTile
  class func parallelogramTile() -> CIFilter & CIParallelogramTile
  class func perspectiveTile() -> CIFilter & CIPerspectiveTile
  class func sixfoldReflectedTile() -> CIFilter & CISixfoldReflectedTile
  class func sixfoldRotatedTile() -> CIFilter & CISixfoldRotatedTile
  class func triangleKaleidoscope() -> CIFilter & CITriangleKaleidoscope
  class func triangleTile() -> CIFilter & CITriangleTile
  class func twelvefoldReflectedTile() -> CIFilter & CITwelvefoldReflectedTile
  class func attributedTextImageGenerator() -> CIFilter & CIAttributedTextImageGenerator
  class func aztecCodeGenerator() -> CIFilter & CIAztecCodeGenerator
  class func barcodeGenerator() -> CIFilter & CIBarcodeGenerator
  class func checkerboardGenerator() -> CIFilter & CICheckerboardGenerator
  class func code128BarcodeGenerator() -> CIFilter & CICode128BarcodeGenerator
  class func lenticularHaloGenerator() -> CIFilter & CILenticularHaloGenerator
  class func meshGenerator() -> CIFilter & CIMeshGenerator
  class func pdf417BarcodeGenerator() -> CIFilter & CIPDF417BarcodeGenerator
  class func qrCodeGenerator() -> CIFilter & CIQRCodeGenerator
  class func randomGenerator() -> CIFilter & CIRandomGenerator
  class func roundedRectangleGenerator() -> CIFilter & CIRoundedRectangleGenerator
  class func starShineGenerator() -> CIFilter & CIStarShineGenerator
  class func stripesGenerator() -> CIFilter & CIStripesGenerator
  class func sunbeamsGenerator() -> CIFilter & CISunbeamsGenerator
  class func textImageGenerator() -> CIFilter & CITextImageGenerator
  class func blendWithAlphaMask() -> CIFilter & CIBlendWithMask
  class func blendWithBlueMask() -> CIFilter & CIBlendWithMask
  class func blendWithMask() -> CIFilter & CIBlendWithMask
  class func blendWithRedMask() -> CIFilter & CIBlendWithMask
  class func bloom() -> CIFilter & CIBloom
  class func comicEffect() -> CIFilter & CIComicEffect
  class func convolution3X3() -> CIFilter & CIConvolution
  class func convolution5X5() -> CIFilter & CIConvolution
  class func convolution7X7() -> CIFilter & CIConvolution
  class func convolution9Horizontal() -> CIFilter & CIConvolution
  class func convolution9Vertical() -> CIFilter & CIConvolution
  class func coreMLModel() -> CIFilter & CICoreMLModel
  class func crystallize() -> CIFilter & CICrystallize
  class func depthOfField() -> CIFilter & CIDepthOfField
  class func edges() -> CIFilter & CIEdges
  class func edgeWork() -> CIFilter & CIEdgeWork
  class func gaborGradients() -> CIFilter & CIGaborGradients
  class func gloom() -> CIFilter & CIGloom
  class func heightFieldFromMask() -> CIFilter & CIHeightFieldFromMask
  class func hexagonalPixellate() -> CIFilter & CIHexagonalPixellate
  class func highlightShadowAdjust() -> CIFilter & CIHighlightShadowAdjust
  class func lineOverlay() -> CIFilter & CILineOverlay
  class func mix() -> CIFilter & CIMix
  class func pixellate() -> CIFilter & CIPixellate
  class func pointillize() -> CIFilter & CIPointillize
  class func saliencyMap() -> CIFilter & CISaliencyMap
  class func shadedMaterial() -> CIFilter & CIShadedMaterial
  class func spotColor() -> CIFilter & CISpotColor
  class func spotLight() -> CIFilter & CISpotLight
  class func bokehBlur() -> CIFilter & CIBokehBlur
  class func boxBlur() -> CIFilter & CIBoxBlur
  class func discBlur() -> CIFilter & CIDiscBlur
  class func gaussianBlur() -> CIFilter & CIGaussianBlur
  class func maskedVariableBlur() -> CIFilter & CIMaskedVariableBlur
  class func median() -> CIFilter & CIMedian
  class func morphologyGradient() -> CIFilter & CIMorphologyGradient
  class func morphologyMaximum() -> CIFilter & CIMorphologyMaximum
  class func morphologyMinimum() -> CIFilter & CIMorphologyMinimum
  class func morphologyRectangleMaximum() -> CIFilter & CIMorphologyRectangleMaximum
  class func morphologyRectangleMinimum() -> CIFilter & CIMorphologyRectangleMinimum
  class func motionBlur() -> CIFilter & CIMotionBlur
  class func noiseReduction() -> CIFilter & CINoiseReduction
  class func zoomBlur() -> CIFilter & CIZoomBlur
  @available(tvOS 14.0, *)
  class func areaAverage() -> CIFilter & CIAreaAverage
  @available(tvOS 14.0, *)
  class func areaHistogram() -> CIFilter & CIAreaHistogram
  @available(tvOS 14.0, *)
  class func areaMaximum() -> CIFilter & CIAreaMaximum
  @available(tvOS 14.0, *)
  class func areaMaximumAlpha() -> CIFilter & CIAreaMaximumAlpha
  @available(tvOS 14.0, *)
  class func areaMinimum() -> CIFilter & CIAreaMinimum
  @available(tvOS 14.0, *)
  class func areaMinimumAlpha() -> CIFilter & CIAreaMinimumAlpha
  @available(tvOS 14.0, *)
  class func areaMinMax() -> CIFilter & CIAreaMinMax
  @available(tvOS 14.0, *)
  class func areaMinMaxRed() -> CIFilter & CIAreaMinMaxRed
  @available(tvOS 14.0, *)
  class func columnAverage() -> CIFilter & CIColumnAverage
  @available(tvOS 14.0, *)
  class func histogramDisplay() -> CIFilter & CIHistogramDisplay
  @available(tvOS 14.0, *)
  class func kMeans() -> CIFilter & CIKMeans
  @available(tvOS 14.0, *)
  class func rowAverage() -> CIFilter & CIRowAverage
}
