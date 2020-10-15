
@available(macOS 10.12, *)
class GKNoiseSource : NSObject {
}
@available(macOS 10.12, *)
class GKCoherentNoiseSource : GKNoiseSource {
  var frequency: Double
  var octaveCount: Int
  var lacunarity: Double
  var seed: Int32
}
@available(macOS 10.12, *)
class GKPerlinNoiseSource : GKCoherentNoiseSource {
  var persistence: Double
  init(frequency: Double, octaveCount: Int, persistence: Double, lacunarity: Double, seed: Int32)
}
@available(macOS 10.12, *)
class GKBillowNoiseSource : GKCoherentNoiseSource {
  var persistence: Double
  init(frequency: Double, octaveCount: Int, persistence: Double, lacunarity: Double, seed: Int32)
}
@available(macOS 10.12, *)
class GKRidgedNoiseSource : GKCoherentNoiseSource {
  init(frequency: Double, octaveCount: Int, lacunarity: Double, seed: Int32)
}
@available(macOS 10.12, *)
class GKVoronoiNoiseSource : GKNoiseSource {
  var frequency: Double
  var displacement: Double
  var isDistanceEnabled: Bool
  var seed: Int32
  class func voronoiNoise(withFrequency frequency: Double, displacement: Double, distanceEnabled: Bool, seed: Int32) -> Self
  init(frequency: Double, displacement: Double, distanceEnabled: Bool, seed: Int32)
}
@available(macOS 10.12, *)
class GKConstantNoiseSource : GKNoiseSource {
  var value: Double
  class func constantNoise(withValue value: Double) -> Self
  init(value: Double)
}
@available(macOS 10.12, *)
class GKCylindersNoiseSource : GKNoiseSource {
  var frequency: Double
  class func cylindersNoise(withFrequency frequency: Double) -> Self
  init(frequency: Double)
}
@available(macOS 10.12, *)
class GKSpheresNoiseSource : GKNoiseSource {
  var frequency: Double
  class func spheresNoise(withFrequency frequency: Double) -> Self
  init(frequency: Double)
}
@available(macOS 10.12, *)
class GKCheckerboardNoiseSource : GKNoiseSource {
  var squareSize: Double
  class func checkerboardNoise(withSquareSize squareSize: Double) -> Self
  init(squareSize: Double)
}
