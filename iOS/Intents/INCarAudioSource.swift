
@available(iOS 10.0, *)
enum INCarAudioSource : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case sourceUnknown
  case sourceCarPlay
  case sourceiPod
  case sourceRadio
  case sourceBluetooth
  case sourceAUX
  case sourceUSB
  case sourceMemoryCard
  case sourceOpticalDrive
  case sourceHardDrive
}
