
@available(iOS, introduced: 11.0, deprecated: 13.0, message: "Please conform to INStartAudioCallIntentHandling, INStartVideoCallIntentHandling and INSearchCallHistoryIntentHandling instead")
protocol INCallsDomainHandling : INSearchCallHistoryIntentHandling, INStartAudioCallIntentHandling, INStartVideoCallIntentHandling {
}
@available(iOS, introduced: 10.3, deprecated: 13.0, message: "Please conform to INActivateCarSignalIntentHandling, INSetCarLockStatusIntentHandling, INGetCarLockStatusIntentHandling and INGetCarPowerLevelStatusIntentHandling instead")
protocol INCarCommandsDomainHandling : INActivateCarSignalIntentHandling, INGetCarLockStatusIntentHandling, INGetCarPowerLevelStatusIntentHandling, INSetCarLockStatusIntentHandling {
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "Please conform to INSetAudioSourceInCarIntentHandling, INSetClimateSettingsInCarIntentHandling, INSetDefrosterSettingsInCarIntentHandling, INSetSeatSettingsInCarIntentHandling, INSetProfileInCarIntentHandling and INSaveProfileInCarIntentHandling instead")
protocol INCarPlayDomainHandling : INSaveProfileInCarIntentHandling, INSetAudioSourceInCarIntentHandling, INSetClimateSettingsInCarIntentHandling, INSetDefrosterSettingsInCarIntentHandling, INSetProfileInCarIntentHandling, INSetSeatSettingsInCarIntentHandling {
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "Please conform to INStartWorkoutIntentHandling, INPauseWorkoutIntentHandling, INEndWorkoutIntentHandling, INCancelWorkoutIntentHandling and INResumeWorkoutIntentHandling instead")
protocol INWorkoutsDomainHandling : INCancelWorkoutIntentHandling, INEndWorkoutIntentHandling, INPauseWorkoutIntentHandling, INResumeWorkoutIntentHandling, INStartWorkoutIntentHandling {
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "Please conform to INSetRadioStationIntentHandling instead")
protocol INRadioDomainHandling : INSetRadioStationIntentHandling {
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "Please conform to INSendMessageIntentHandling, INSearchForMessagesIntentHandling and INSetMessageAttributeIntentHandling instead")
protocol INMessagesDomainHandling : INSearchForMessagesIntentHandling, INSendMessageIntentHandling, INSetMessageAttributeIntentHandling {
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "Please conform to INSendPaymentIntentHandling and INRequestPaymentIntentHandling instead")
protocol INPaymentsDomainHandling : INRequestPaymentIntentHandling, INSendPaymentIntentHandling {
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "Please conform to INSearchForPhotosIntentHandling and INStartPhotoPlaybackIntentHandling instead")
protocol INPhotosDomainHandling : INSearchForPhotosIntentHandling, INStartPhotoPlaybackIntentHandling {
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "Please conform to INListRideOptionsIntentHandling, INRequestRideIntentHandling and INGetRideStatusIntentHandling instead")
protocol INRidesharingDomainHandling : INGetRideStatusIntentHandling, INListRideOptionsIntentHandling, INRequestRideIntentHandling {
}
@available(iOS, introduced: 11.0, deprecated: 13.0, message: "Please conform to INCreateNoteIntentHandling, INAppendToNoteIntentHandling, INAddTasksIntentHandling, INCreateTaskListIntentHandling, INSetTaskAttributeIntentHandling and INSearchForNotebookItemsIntentHandling instead")
protocol INNotebookDomainHandling : INAddTasksIntentHandling, INAppendToNoteIntentHandling, INCreateNoteIntentHandling, INCreateTaskListIntentHandling, INSearchForNotebookItemsIntentHandling, INSetTaskAttributeIntentHandling {
}
@available(iOS, introduced: 11.0, deprecated: 13.0, message: "Please conform to INGetVisualCodeIntentHandling instead")
protocol INVisualCodeDomainHandling : INGetVisualCodeIntentHandling {
}
