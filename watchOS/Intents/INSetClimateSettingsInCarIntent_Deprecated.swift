
extension INSetClimateSettingsInCarIntent {
  @available(watchOS, introduced: 3.0, deprecated: 5.0)
  convenience init(__enableFan enableFan: NSNumber?, enableAirConditioner: NSNumber?, enableClimateControl: NSNumber?, enableAutoMode: NSNumber?, airCirculationMode: INCarAirCirculationMode, fanSpeedIndex: NSNumber?, fanSpeedPercentage: NSNumber?, relativeFanSpeedSetting: INRelativeSetting, temperature: Measurement<UnitTemperature>?, relativeTemperatureSetting: INRelativeSetting, climateZone: INCarSeat)
}
