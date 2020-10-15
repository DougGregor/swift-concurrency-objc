
@available(macOS 10.12, *)
class GKNoise : NSObject {
  var gradientColors: [NSNumber : NSColor]
  convenience init(_ noiseSource: GKNoiseSource)
  init(_ noiseSource: GKNoiseSource, gradientColors: [NSNumber : NSColor])
  convenience init(componentNoises noises: [GKNoise], selectionNoise: GKNoise)
  convenience init(componentNoises noises: [GKNoise], selectionNoise: GKNoise, componentBoundaries: [NSNumber], boundaryBlendDistances blendDistances: [NSNumber])
  func value(atPosition position: vector_float2) -> Float
  func applyAbsoluteValue()
  func clamp(lowerBound: Double, upperBound: Double)
  func raiseToPower(_ power: Double)
  func invert()
  func applyTurbulence(frequency: Double, power: Double, roughness: Int32, seed: Int32)
  func remapValues(toCurveWithControlPoints controlPoints: [NSNumber : NSNumber])
  func remapValues(toTerracesWithPeaks peakInputValues: [NSNumber], terracesInverted inverted: Bool)
  func move(by delta: vector_double3)
  func scale(by factor: vector_double3)
  func rotate(by radians: vector_double3)
  func add(_ noise: GKNoise)
  func multiply(_ noise: GKNoise)
  func minimum(_ noise: GKNoise)
  func maximum(_ noise: GKNoise)
  func raiseToPower(_ noise: GKNoise)
  func displaceWithNoises(x xDisplacementNoise: GKNoise, y yDisplacementNoise: GKNoise, z zDisplacementNoise: GKNoise)
}
