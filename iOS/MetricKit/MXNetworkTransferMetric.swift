
@available(iOS 13.0, *)
class MXNetworkTransferMetric : MXMetric {
  var cumulativeWifiUpload: Measurement<UnitInformationStorage> { get }
  var cumulativeWifiDownload: Measurement<UnitInformationStorage> { get }
  var cumulativeCellularUpload: Measurement<UnitInformationStorage> { get }
  var cumulativeCellularDownload: Measurement<UnitInformationStorage> { get }
}
