
@available(macOS 11.0, *)
class VZLinuxBootLoader : VZBootLoader {
  init(kernelURL: URL)
  var kernelURL: URL
  var commandLine: String
  var initialRamdiskURL: URL?
}
