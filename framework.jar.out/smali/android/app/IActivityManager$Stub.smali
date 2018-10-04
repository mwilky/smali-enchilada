.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final TRANSACTION_activityDestroyed:I = 0x3a

.field static final TRANSACTION_activityIdle:I = 0xf

.field static final TRANSACTION_activityPaused:I = 0x10

.field static final TRANSACTION_activityRelaunched:I = 0x102

.field static final TRANSACTION_activityResumed:I = 0x23

.field static final TRANSACTION_activitySlept:I = 0x79

.field static final TRANSACTION_activityStopped:I = 0x11

.field static final TRANSACTION_addAppTask:I = 0xd0

.field static final TRANSACTION_addInstrumentationResults:I = 0x28

.field static final TRANSACTION_addPackageDependency:I = 0x5d

.field static final TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x131

.field static final TRANSACTION_appNotRespondingViaProvider:I = 0xb8

.field static final TRANSACTION_attachApplication:I = 0xe

.field static final TRANSACTION_backgroundWhitelistUid:I = 0x12a

.field static final TRANSACTION_backupAgentCreated:I = 0x59

.field static final TRANSACTION_bindBackupAgent:I = 0x58

.field static final TRANSACTION_bindService:I = 0x20

.field static final TRANSACTION_bootAnimationComplete:I = 0xd4

.field static final TRANSACTION_broadcastIntent:I = 0xb

.field static final TRANSACTION_cancelIntentSender:I = 0x3c

.field static final TRANSACTION_cancelRecentsAnimation:I = 0xc5

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x123

.field static final TRANSACTION_checkGrantUriPermission:I = 0x75

.field static final TRANSACTION_checkPermission:I = 0x31

.field static final TRANSACTION_checkPermissionWithToken:I = 0xd8

.field static final TRANSACTION_checkUriPermission:I = 0x32

.field static final TRANSACTION_clearApplicationUserData:I = 0x4c

.field static final TRANSACTION_clearGrantedUriPermissions:I = 0x108

.field static final TRANSACTION_clearPendingBackup:I = 0xa0

.field static final TRANSACTION_closeSystemDialogs:I = 0x5f

.field static final TRANSACTION_convertFromTranslucent:I = 0xaf

.field static final TRANSACTION_convertToTranslucent:I = 0xb0

.field static final TRANSACTION_crashApplication:I = 0x70

.field static final TRANSACTION_createStackOnDisplay:I = 0xdc

.field static final TRANSACTION_dismissKeyguard:I = 0x121

.field static final TRANSACTION_dismissPip:I = 0xf6

.field static final TRANSACTION_dismissSplitScreenMode:I = 0xf5

.field static final TRANSACTION_dumpHeap:I = 0x76

.field static final TRANSACTION_dumpHeapFinished:I = 0xe2

.field static final TRANSACTION_enterPictureInPictureMode:I = 0xff

.field static final TRANSACTION_enterSafeMode:I = 0x40

.field static final TRANSACTION_exitFreeformMode:I = 0xf2

.field static final TRANSACTION_finishActivity:I = 0x8

.field static final TRANSACTION_finishActivityAffinity:I = 0x92

.field static final TRANSACTION_finishHeavyWeightApp:I = 0x6b

.field static final TRANSACTION_finishInstrumentation:I = 0x29

.field static final TRANSACTION_finishReceiver:I = 0xd

.field static final TRANSACTION_finishSubActivity:I = 0x1c

.field static final TRANSACTION_finishVoiceTask:I = 0xcb

.field static final TRANSACTION_forceStopPackage:I = 0x4d

.field static final TRANSACTION_getActivityClassForToken:I = 0x2d

.field static final TRANSACTION_getActivityDisplayId:I = 0xba

.field static final TRANSACTION_getActivityOptions:I = 0xc7

.field static final TRANSACTION_getAggregateNext:I = 0x136

.field static final TRANSACTION_getAllStackInfos:I = 0xab

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0xd1

.field static final TRANSACTION_getAppTasks:I = 0xc8

.field static final TRANSACTION_getAssistContextExtras:I = 0xa2

.field static final TRANSACTION_getCallingActivity:I = 0x13

.field static final TRANSACTION_getCallingPackage:I = 0x12

.field static final TRANSACTION_getConfiguration:I = 0x2a

.field static final TRANSACTION_getContentProvider:I = 0x19

.field static final TRANSACTION_getContentProviderExternal:I = 0x8a

.field static final TRANSACTION_getCurrentUser:I = 0x8e

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x52

.field static final TRANSACTION_getFilteredTasks:I = 0x15

.field static final TRANSACTION_getFocusedStackInfo:I = 0xad

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x7a

.field static final TRANSACTION_getGrantedUriPermissions:I = 0x107

.field static final TRANSACTION_getIntentForIntentSender:I = 0xa1

.field static final TRANSACTION_getIntentSender:I = 0x3b

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x129

.field static final TRANSACTION_getLaunchedFromPackage:I = 0xa4

.field static final TRANSACTION_getLaunchedFromUid:I = 0x93

.field static final TRANSACTION_getLockTaskModeState:I = 0xe0

.field static final TRANSACTION_getMaxNumPictureInPictureActions:I = 0x101

.field static final TRANSACTION_getMemoryInfo:I = 0x4a

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x113

.field static final TRANSACTION_getMyMemoryState:I = 0x8c

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x7e

.field static final TRANSACTION_getPackageForIntentSender:I = 0x3d

.field static final TRANSACTION_getPackageForToken:I = 0x2e

.field static final TRANSACTION_getPackageProcessState:I = 0xe7

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x7c

.field static final TRANSACTION_getPersistedUriPermissions:I = 0xb7

.field static final TRANSACTION_getProcessLimit:I = 0x30

.field static final TRANSACTION_getProcessMemoryInfo:I = 0x60

.field static final TRANSACTION_getProcessPss:I = 0x87

.field static final TRANSACTION_getProcessesInErrorState:I = 0x4b

.field static final TRANSACTION_getProviderMimeType:I = 0x71

.field static final TRANSACTION_getRecentTasks:I = 0x38

.field static final TRANSACTION_getRequestedOrientation:I = 0x45

.field static final TRANSACTION_getRunningAppProcesses:I = 0x51

.field static final TRANSACTION_getRunningExternalApplications:I = 0x6a

.field static final TRANSACTION_getRunningServiceControlPanel:I = 0x1d

.field static final TRANSACTION_getRunningUserIds:I = 0x9b

.field static final TRANSACTION_getServices:I = 0x4f

.field static final TRANSACTION_getStackInfo:I = 0xae

.field static final TRANSACTION_getTagForIntentSender:I = 0xbc

.field static final TRANSACTION_getTaskBounds:I = 0xb9

.field static final TRANSACTION_getTaskDescription:I = 0x50

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0xd5

.field static final TRANSACTION_getTaskForActivity:I = 0x18

.field static final TRANSACTION_getTaskSnapshot:I = 0x124

.field static final TRANSACTION_getTasks:I = 0x14

.field static final TRANSACTION_getUidForIntentSender:I = 0x5b

.field static final TRANSACTION_getUidProcessState:I = 0xeb

.field static final TRANSACTION_getUriPermissionOwnerForActivity:I = 0x103

.field static final TRANSACTION_grantUriPermission:I = 0x33

.field static final TRANSACTION_grantUriPermissionFromOwner:I = 0x73

.field static final TRANSACTION_handleApplicationCrash:I = 0x5

.field static final TRANSACTION_handleApplicationStrictModeViolation:I = 0x6c

.field static final TRANSACTION_handleApplicationWtf:I = 0x64

.field static final TRANSACTION_handleIncomingUser:I = 0x5c

.field static final TRANSACTION_hang:I = 0xa7

.field static final TRANSACTION_initialAllPackages:I = 0x135

.field static final TRANSACTION_inputDispatchingTimedOut:I = 0x9f

.field static final TRANSACTION_isAppForeground:I = 0x109

.field static final TRANSACTION_isAppLocked:I = 0x133

.field static final TRANSACTION_isAppStartModeDisabled:I = 0xfa

.field static final TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0xec

.field static final TRANSACTION_isBackgroundRestricted:I = 0x11a

.field static final TRANSACTION_isImmersive:I = 0x6d

.field static final TRANSACTION_isInLockTaskMode:I = 0xc0

.field static final TRANSACTION_isInMultiWindowMode:I = 0xfc

.field static final TRANSACTION_isInPictureInPictureMode:I = 0xfd

.field static final TRANSACTION_isIntentSenderAForegroundService:I = 0x96

.field static final TRANSACTION_isIntentSenderAnActivity:I = 0x95

.field static final TRANSACTION_isIntentSenderTargetedToPackage:I = 0x85

.field static final TRANSACTION_isKeyguardDone:I = 0x134

.field static final TRANSACTION_isRootVoiceInteraction:I = 0xee

.field static final TRANSACTION_isTopActivityImmersive:I = 0x6f

.field static final TRANSACTION_isTopOfTask:I = 0xcc

.field static final TRANSACTION_isUidActive:I = 0x4

.field static final TRANSACTION_isUserAMonkey:I = 0x66

.field static final TRANSACTION_isUserRunning:I = 0x78

.field static final TRANSACTION_isVrModePackageEnabled:I = 0x115

.field static final TRANSACTION_keyguardGoingAway:I = 0xea

.field static final TRANSACTION_killAllBackgroundProcesses:I = 0x89

.field static final TRANSACTION_killApplication:I = 0x5e

.field static final TRANSACTION_killApplicationProcess:I = 0x61

.field static final TRANSACTION_killBackgroundProcesses:I = 0x65

.field static final TRANSACTION_killPackageDependents:I = 0xfe

.field static final TRANSACTION_killPids:I = 0x4e

.field static final TRANSACTION_killProcessesBelowForeground:I = 0x8d

.field static final TRANSACTION_killUid:I = 0xa5

.field static final TRANSACTION_launchAssistIntent:I = 0xd6

.field static final TRANSACTION_makePackageIdle:I = 0x112

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x49

.field static final TRANSACTION_moveStackToDisplay:I = 0x11f

.field static final TRANSACTION_moveTaskBackwards:I = 0x17

.field static final TRANSACTION_moveTaskToFront:I = 0x16

.field static final TRANSACTION_moveTaskToStack:I = 0xa9

.field static final TRANSACTION_moveTasksToFullscreenStack:I = 0xf8

.field static final TRANSACTION_moveTopActivityToPinnedStack:I = 0xf9

.field static final TRANSACTION_navigateUpTo:I = 0x90

.field static final TRANSACTION_needToAddNameForToast:I = 0x137

.field static final TRANSACTION_newUriPermissionOwner:I = 0x72

.field static final TRANSACTION_noteAlarmFinish:I = 0xe6

.field static final TRANSACTION_noteAlarmStart:I = 0xe5

.field static final TRANSACTION_noteWakeupAlarm:I = 0x42

.field static final TRANSACTION_notifyActivityDrawn:I = 0xb1

.field static final TRANSACTION_notifyCleartextNetwork:I = 0xdb

.field static final TRANSACTION_notifyEnterAnimationComplete:I = 0xce

.field static final TRANSACTION_notifyLaunchTaskBehindComplete:I = 0xcd

.field static final TRANSACTION_notifyLockedProfile:I = 0x116

.field static final TRANSACTION_notifyPinnedStackAnimationEnded:I = 0x10e

.field static final TRANSACTION_notifyPinnedStackAnimationStarted:I = 0x10d

.field static final TRANSACTION_openContentUri:I = 0x1

.field static final TRANSACTION_overridePendingTransition:I = 0x63

.field static final TRANSACTION_peekService:I = 0x53

.field static final TRANSACTION_performIdleMaintenance:I = 0xb4

.field static final TRANSACTION_positionTaskInStack:I = 0xf1

.field static final TRANSACTION_profileControl:I = 0x54

.field static final TRANSACTION_publishContentProviders:I = 0x1a

.field static final TRANSACTION_publishService:I = 0x22

.field static final TRANSACTION_refContentProvider:I = 0x1b

.field static final TRANSACTION_registerIntentSenderCancelListener:I = 0x3e

.field static final TRANSACTION_registerProcessObserver:I = 0x83

.field static final TRANSACTION_registerReceiver:I = 0x9

.field static final TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x130

.field static final TRANSACTION_registerRemoteAnimations:I = 0x12f

.field static final TRANSACTION_registerTaskStackListener:I = 0xd9

.field static final TRANSACTION_registerUidObserver:I = 0x2

.field static final TRANSACTION_registerUserSwitchObserver:I = 0x99

.field static final TRANSACTION_releaseActivityInstance:I = 0xd2

.field static final TRANSACTION_releasePersistableUriPermission:I = 0xb6

.field static final TRANSACTION_releaseSomeActivities:I = 0xd3

.field static final TRANSACTION_removeContentProvider:I = 0x43

.field static final TRANSACTION_removeContentProviderExternal:I = 0x8b

.field static final TRANSACTION_removeStack:I = 0x10f

.field static final TRANSACTION_removeStacksInWindowingModes:I = 0x110

.field static final TRANSACTION_removeStacksWithActivityTypes:I = 0x111

.field static final TRANSACTION_removeTask:I = 0x82

.field static final TRANSACTION_reportActivityFullyDrawn:I = 0xb2

.field static final TRANSACTION_reportAssistContextExtras:I = 0xa3

.field static final TRANSACTION_reportSizeConfigurations:I = 0xf3

.field static final TRANSACTION_requestAssistContextExtras:I = 0xde

.field static final TRANSACTION_requestAutofillData:I = 0x120

.field static final TRANSACTION_requestBugReport:I = 0x9c

.field static final TRANSACTION_requestTelephonyBugReport:I = 0x9d

.field static final TRANSACTION_requestWifiBugReport:I = 0x9e

.field static final TRANSACTION_resizeDockedStack:I = 0x104

.field static final TRANSACTION_resizePinnedStack:I = 0x114

.field static final TRANSACTION_resizeStack:I = 0xaa

.field static final TRANSACTION_resizeTask:I = 0xdf

.field static final TRANSACTION_restart:I = 0xb3

.field static final TRANSACTION_restartUserInBackground:I = 0x122

.field static final TRANSACTION_resumeAppSwitches:I = 0x57

.field static final TRANSACTION_revokeUriPermission:I = 0x34

.field static final TRANSACTION_revokeUriPermissionFromOwner:I = 0x74

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x125

.field static final TRANSACTION_sendIdleJobTrigger:I = 0x118

.field static final TRANSACTION_sendIntentSender:I = 0x119

.field static final TRANSACTION_serviceDoneExecuting:I = 0x39

.field static final TRANSACTION_setActivityController:I = 0x35

.field static final TRANSACTION_setAgentApp:I = 0x25

.field static final TRANSACTION_setAlwaysFinish:I = 0x26

.field static final TRANSACTION_setDebugApp:I = 0x24

.field static final TRANSACTION_setDisablePreviewScreenshots:I = 0x128

.field static final TRANSACTION_setDumpHeapDebugLimit:I = 0xe1

.field static final TRANSACTION_setFocusedStack:I = 0xac

.field static final TRANSACTION_setFocusedTask:I = 0x81

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x7b

.field static final TRANSACTION_setHasTopUi:I = 0x11d

.field static final TRANSACTION_setImmersive:I = 0x6e

.field static final TRANSACTION_setKeyguardDone:I = 0x132

.field static final TRANSACTION_setLockScreenShown:I = 0x91

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x7f

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x7d

.field static final TRANSACTION_setPersistentVrThread:I = 0x126

.field static final TRANSACTION_setPictureInPictureParams:I = 0x100

.field static final TRANSACTION_setProcessImportant:I = 0x47

.field static final TRANSACTION_setProcessLimit:I = 0x2f

.field static final TRANSACTION_setProcessMemoryTrimLevel:I = 0xbb

.field static final TRANSACTION_setRenderThread:I = 0x11c

.field static final TRANSACTION_setRequestedOrientation:I = 0x44

.field static final TRANSACTION_setServiceForeground:I = 0x48

.field static final TRANSACTION_setShowWhenLocked:I = 0x12c

.field static final TRANSACTION_setSplitScreenResizing:I = 0x105

.field static final TRANSACTION_setTaskDescription:I = 0xc1

.field static final TRANSACTION_setTaskResizeable:I = 0xdd

.field static final TRANSACTION_setTaskWindowingMode:I = 0xa8

.field static final TRANSACTION_setTaskWindowingModeSplitScreenPrimary:I = 0xf4

.field static final TRANSACTION_setTurnScreenOn:I = 0x12d

.field static final TRANSACTION_setUserIsMonkey:I = 0xa6

.field static final TRANSACTION_setVoiceKeepAwake:I = 0xe3

.field static final TRANSACTION_setVrMode:I = 0x106

.field static final TRANSACTION_setVrThread:I = 0x11b

.field static final TRANSACTION_shouldUpRecreateTask:I = 0x8f

.field static final TRANSACTION_showAssistFromActivity:I = 0xed

.field static final TRANSACTION_showBootMessage:I = 0x88

.field static final TRANSACTION_showLockTaskEscapeMessage:I = 0xe8

.field static final TRANSACTION_showWaitingForDebugger:I = 0x36

.field static final TRANSACTION_shutdown:I = 0x55

.field static final TRANSACTION_signalPersistentProcesses:I = 0x37

.field static final TRANSACTION_startActivities:I = 0x77

.field static final TRANSACTION_startActivity:I = 0x6

.field static final TRANSACTION_startActivityAndWait:I = 0x67

.field static final TRANSACTION_startActivityAsCaller:I = 0xcf

.field static final TRANSACTION_startActivityAsUser:I = 0x97

.field static final TRANSACTION_startActivityFromRecents:I = 0xc6

.field static final TRANSACTION_startActivityIntentSender:I = 0x62

.field static final TRANSACTION_startActivityWithConfig:I = 0x69

.field static final TRANSACTION_startAssistantActivity:I = 0xc3

.field static final TRANSACTION_startBinderTracking:I = 0xef

.field static final TRANSACTION_startConfirmDeviceCredentialIntent:I = 0x117

.field static final TRANSACTION_startInPlaceAnimationOnFrontMostApplication:I = 0xd7

.field static final TRANSACTION_startInstrumentation:I = 0x27

.field static final TRANSACTION_startLocalVoiceInteraction:I = 0x10a

.field static final TRANSACTION_startLockTaskModeByToken:I = 0xbe

.field static final TRANSACTION_startNextMatchingActivity:I = 0x41

.field static final TRANSACTION_startRecentsActivity:I = 0xc4

.field static final TRANSACTION_startService:I = 0x1e

.field static final TRANSACTION_startSystemLockTaskMode:I = 0xc9

.field static final TRANSACTION_startUserInBackground:I = 0xbd

.field static final TRANSACTION_startUserInBackgroundWithListener:I = 0x12e

.field static final TRANSACTION_startVoiceActivity:I = 0xc2

.field static final TRANSACTION_stopAppSwitches:I = 0x56

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0xf0

.field static final TRANSACTION_stopLocalVoiceInteraction:I = 0x10b

.field static final TRANSACTION_stopLockTaskModeByToken:I = 0xbf

.field static final TRANSACTION_stopService:I = 0x1f

.field static final TRANSACTION_stopServiceToken:I = 0x2c

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0xca

.field static final TRANSACTION_stopUser:I = 0x98

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x10c

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0xf7

.field static final TRANSACTION_switchUser:I = 0x80

.field static final TRANSACTION_takePersistableUriPermission:I = 0xb5

.field static final TRANSACTION_unbindBackupAgent:I = 0x5a

.field static final TRANSACTION_unbindFinished:I = 0x46

.field static final TRANSACTION_unbindService:I = 0x21

.field static final TRANSACTION_unbroadcastIntent:I = 0xc

.field static final TRANSACTION_unhandledBack:I = 0x7

.field static final TRANSACTION_unlockUser:I = 0xfb

.field static final TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3f

.field static final TRANSACTION_unregisterProcessObserver:I = 0x84

.field static final TRANSACTION_unregisterReceiver:I = 0xa

.field static final TRANSACTION_unregisterTaskStackListener:I = 0xda

.field static final TRANSACTION_unregisterUidObserver:I = 0x3

.field static final TRANSACTION_unregisterUserSwitchObserver:I = 0x9a

.field static final TRANSACTION_unstableProviderDied:I = 0x94

.field static final TRANSACTION_updateConfiguration:I = 0x2b

.field static final TRANSACTION_updateDeviceOwner:I = 0xe9

.field static final TRANSACTION_updateDisplayOverrideConfiguration:I = 0x11e

.field static final TRANSACTION_updateLockTaskFeatures:I = 0x12b

.field static final TRANSACTION_updateLockTaskPackages:I = 0xe4

.field static final TRANSACTION_updatePersistentConfiguration:I = 0x86

.field static final TRANSACTION_waitForNetworkStateUpdate:I = 0x127

.field static final TRANSACTION_willActivityBeVisible:I = 0x68


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method private onTransact$bindService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move-object v6, v12

    move-object v7, v13

    move v8, v14

    move-object v9, v15

    move/from16 v10, v16

    invoke-virtual/range {v2 .. v10}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/16 v22, 0x1

    if-eqz v2, :cond_3

    move/from16 v13, v22

    goto :goto_3

    :cond_3
    move v13, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v14, v22

    goto :goto_4

    :cond_4
    move v14, v3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move-object/from16 v2, p0

    move-object v3, v1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    move/from16 v15, v23

    invoke-virtual/range {v2 .. v15}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v22
.end method

.method private onTransact$checkGrantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v1, p0

    move v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$checkUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object v1, p0

    move v3, v0

    move v4, v8

    move v5, v9

    move v6, v10

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$crashApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move v2, v0

    move v3, v7

    move-object v4, v8

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$dumpHeap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v10

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v6, v10

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    :goto_3
    move-object v8, v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    move-object v1, p0

    move-object v2, v0

    move v3, v9

    move-object v7, v11

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10
.end method

.method private onTransact$finishReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v6, v10

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    move v6, v1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move-object v4, v9

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    return v10
.end method

.method private onTransact$getIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v20, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, v20

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move-object/from16 v2, p0

    move v3, v1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_1
    move-object/from16 v3, v20

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$grantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$grantUriPermissionFromOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object v2, p0

    move-object v3, v1

    move v4, v10

    move-object v5, v11

    move v7, v12

    move v8, v13

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$handleIncomingUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    move v6, v12

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v7, v12

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object v2, p0

    move v3, v0

    move v4, v10

    move v5, v11

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12
.end method

.method private onTransact$launchAssistIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_1
    move-object v7, v1

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    move-object v2, p0

    move v4, v0

    move-object v5, v8

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$noteWakeupAlarm$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object v2, v0

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$profileControl$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfilerInfo;

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v1, p0

    move-object v2, v0

    move v3, v7

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v8
.end method

.method private onTransact$registerReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v11

    move-object v6, v12

    move-object v8, v13

    move v9, v14

    move v10, v15

    invoke-virtual/range {v3 .. v10}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v4
.end method

.method private onTransact$reportAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistStructure;

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistContent;

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$requestAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v6, v10

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v7, v10

    goto :goto_3

    :cond_2
    move v7, v2

    :goto_3
    move-object v1, p0

    move v2, v0

    move-object v3, v8

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10
.end method

.method private onTransact$requestAutofillData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$resizeDockedStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    :goto_4
    move-object v7, v1

    goto :goto_5

    :cond_4
    goto :goto_4

    :goto_5
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$resizeStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    move v4, v8

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v5, v8

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v6, v8

    goto :goto_4

    :cond_3
    move v6, v2

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v1, p0

    move v2, v0

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    return v8
.end method

.method private onTransact$revokeUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$sendIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, v3

    :goto_1
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move v5, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    invoke-virtual/range {v2 .. v10}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setServiceForeground$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object v2, p0

    move-object v4, v0

    move v5, v8

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$setTaskWindowingModeSplitScreenPrimary$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v7, v9

    goto :goto_4

    :cond_3
    move v7, v2

    :goto_4
    move-object v1, p0

    move v2, v0

    move v3, v8

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9
.end method

.method private onTransact$startActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object v2, p0

    move-object v3, v1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v3

    :goto_2
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-virtual/range {v2 .. v12}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityAndWait$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProfilerInfo;

    move-object v12, v3

    goto :goto_1

    :cond_1
    move-object v12, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    move-object v13, v3

    goto :goto_2

    :cond_2
    move-object v13, v4

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v14, v21

    invoke-virtual/range {v3 .. v14}, Landroid/app/IActivityManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v1, v4}, Landroid/app/WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v4
.end method

.method private onTransact$startActivityAsCaller$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v21, 0x1

    if-eqz v2, :cond_3

    move/from16 v13, v21

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v14, v22

    invoke-virtual/range {v2 .. v14}, Landroid/app/IActivityManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v21
.end method

.method private onTransact$startActivityAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object v13, v3

    :goto_1
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityWithConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startAssistantActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object v1, p0

    move-object v2, v0

    move v3, v9

    move v4, v10

    move-object v6, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityManager$Stub;->startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$startInstrumentation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v3, p0

    move-object v5, v1

    move v6, v12

    move-object v8, v2

    move-object v9, v13

    move v10, v14

    move-object v11, v15

    invoke-virtual/range {v3 .. v11}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v5, p2

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6
.end method

.method private onTransact$startService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v5, v10

    goto :goto_2

    :cond_1
    move v5, v9

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object v1, p0

    move-object v2, v0

    move-object v4, v8

    move-object v6, v11

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p2, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v10
.end method

.method private onTransact$startVoiceActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v2, p0

    move-object v3, v1

    move v4, v14

    move v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$unlockUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.app.IActivityManager"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_7a

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->needToAddNameForToast(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAggregateNext()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v11

    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->initialAllPackages(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isKeyguardDone()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->isAppLocked(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v11

    nop

    :cond_0
    move v0, v1

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setKeyguardDone(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    goto :goto_1

    :cond_2
    nop

    :goto_1
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationDefinition;

    goto :goto_2

    :cond_3
    nop

    :goto_2
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v1, v11

    nop

    :cond_4
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v1, v11

    nop

    :cond_5
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->updateLockTaskFeatures(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->backgroundWhitelistUid(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v1, v11

    nop

    :cond_6
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v11

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/app/ActivityManager$TaskSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v11

    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_9
    nop

    :goto_5
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_17
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$requestAutofillData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->moveStackToDisplay(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    goto :goto_6

    :cond_a
    nop

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v11

    nop

    :cond_b
    move v0, v1

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_1e
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$sendIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    goto :goto_7

    :cond_c
    move-object v1, v0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_8

    :cond_d
    nop

    :goto_8
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_9

    :cond_e
    nop

    :goto_9
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_a

    :cond_f
    move-object v1, v0

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_b

    :cond_10
    nop

    :goto_b
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->removeStacksWithActivityTypes([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->removeStacksInWindowingModes([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->removeStack(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationEnded()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationStarted()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_c

    :cond_11
    nop

    :goto_c
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isAppForeground(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_2f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_30
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_12

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_12
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v11

    :pswitch_31
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    move v1, v11

    nop

    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_e

    :cond_14
    nop

    :goto_e
    invoke-virtual {v6, v2, v1, v0}, Landroid/app/IActivityManager$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_32
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v1, v11

    nop

    :cond_15
    move v0, v1

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setSplitScreenResizing(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_33
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$resizeDockedStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v11

    :pswitch_35
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_37
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    sget-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    goto :goto_f

    :cond_16
    nop

    :goto_f
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    goto :goto_10

    :cond_17
    nop

    :goto_10
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_39
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_3a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_3b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_3c
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$unlockUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_3d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_3e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_11

    :cond_18
    nop

    :goto_11
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_3f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    move v1, v11

    nop

    :cond_19
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->moveTasksToFullscreenStack(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_40
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v1, v11

    nop

    :cond_1a
    move v0, v1

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_41
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v1, v11

    nop

    :cond_1b
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->dismissPip(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_42
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v11

    nop

    :cond_1c
    move v0, v1

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->dismissSplitScreenMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_43
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$setTaskWindowingModeSplitScreenPrimary$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_44
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_45
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->exitFreeformMode(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_46
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->positionTaskInStack(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_47
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_12

    :cond_1d
    nop

    :goto_12
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_48
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_49
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_4a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_13

    :cond_1e
    nop

    :goto_13
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_4b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_4c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_4d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->keyguardGoingAway(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_4e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->updateDeviceOwner(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_4f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    return v11

    :pswitch_50
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_51
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    goto :goto_14

    :cond_1f
    nop

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_52
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    goto :goto_15

    :cond_20
    nop

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_53
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_54
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    move v1, v11

    nop

    :cond_21
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_55
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_56
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object v1, v12

    move v2, v13

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_57
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_58
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_16

    :cond_22
    nop

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v1, v0, v2}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_59
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$requestAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_5a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_5b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->createStackOnDisplay(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_5c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_5d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_5e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_5f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_60
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_17

    :cond_23
    nop

    :goto_17
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_61
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$launchAssistIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_62
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_24

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_24
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_18
    return v11

    :pswitch_63
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_64
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_65
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_66
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_25

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    :cond_25
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_19
    return v11

    :pswitch_67
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_1a

    :cond_26
    move-object v2, v0

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$TaskDescription;

    goto :goto_1b

    :cond_27
    move-object v3, v0

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1c

    :cond_28
    nop

    :goto_1c
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/app/IActivityManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_68
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAsCaller$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_69
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_6a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_6b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_6c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_6d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopSystemLockTaskMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_6e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_6f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    return v11

    :pswitch_70
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_29

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_29
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    return v11

    :pswitch_71
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_1e

    :cond_2a
    nop

    :goto_1e
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_72
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    move v1, v11

    nop

    :cond_2b
    move v0, v1

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->cancelRecentsAnimation(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_73
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_1f

    :cond_2c
    nop

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_74
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startAssistantActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_75
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startVoiceActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_76
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    goto :goto_20

    :cond_2d
    nop

    :goto_20
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_77
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_78
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_79
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_7a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_7b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_7c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_7d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_7e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2e

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    :cond_2e
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21
    return v11

    :pswitch_7f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_80
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    move v2, v11

    goto :goto_22

    :cond_2f
    move v2, v1

    :goto_22
    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_30

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_30
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    return v11

    :pswitch_81
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_24

    :cond_31
    nop

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_82
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_25

    :cond_32
    nop

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_83
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_84
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->restart()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_85
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_33

    move v1, v11

    nop

    :cond_33
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_86
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->notifyActivityDrawn(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_87
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_26

    :cond_34
    nop

    :goto_26
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_88
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_89
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_35

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    :cond_35
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_27
    return v11

    :pswitch_8a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_36

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    :cond_36
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_28
    return v11

    :pswitch_8b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setFocusedStack(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_8c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    :pswitch_8d
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$resizeStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_8e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    move v1, v11

    nop

    :cond_37
    invoke-virtual {v6, v0, v2, v1}, Landroid/app/IActivityManager$Stub;->moveTaskToStack(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_8f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    move v1, v11

    nop

    :cond_38
    invoke-virtual {v6, v0, v2, v1}, Landroid/app/IActivityManager$Stub;->setTaskWindowingMode(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_90
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    move v1, v11

    nop

    :cond_39
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_91
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    move v1, v11

    nop

    :cond_3a
    move v0, v1

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_92
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_93
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_94
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$reportAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_95
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_3b
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    return v11

    :pswitch_96
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3c

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2a

    :cond_3c
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2a
    return v11

    :pswitch_97
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->clearPendingBackup()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_98
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    move v1, v11

    nop

    :cond_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_99
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_9a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_9b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_9c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v11

    :pswitch_9d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_9e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_9f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    move v1, v11

    nop

    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a0
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_a1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderAForegroundService(Landroid/content/IIntentSender;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_a4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v11

    goto :goto_2b

    :cond_3f
    move v0, v1

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    move v1, v11

    nop

    :cond_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setLockScreenShown(ZZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_a7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_41

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_2c

    :cond_41
    move-object v2, v0

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_2d

    :cond_42
    nop

    :goto_2d
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/app/IActivityManager$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_43

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    :cond_43
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2e
    return v11

    :pswitch_aa
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_ab
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return v11

    :pswitch_ac
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_ad
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v6, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_44

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    :cond_44
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2f
    return v11

    :pswitch_ae
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_af
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_30

    :cond_45
    nop

    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46

    move v1, v11

    nop

    :cond_46
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_b0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    return v11

    :pswitch_b1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    goto :goto_31

    :cond_47
    nop

    :goto_31
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_b2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_b3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_b4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_b5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_b6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setFocusedTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_b7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_b8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    move v1, v11

    nop

    :cond_48
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_b9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_ba
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_bb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_bc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setFrontActivityScreenCompatMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_bd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_be
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activitySlept(Landroid/os/IBinder;)V

    return v11

    :pswitch_bf
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_c0
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_c1
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$dumpHeap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_c2
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$checkGrantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_c3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_32

    :cond_49
    nop

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_c4
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$grantUriPermissionFromOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_c5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v11

    :pswitch_c6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_33

    :cond_4a
    nop

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_c7
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$crashApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_c8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_c9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    move v1, v11

    nop

    :cond_4b
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_ca
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_cb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    sget-object v0, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$ViolationInfo;

    goto :goto_34

    :cond_4c
    nop

    :goto_34
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_cc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_cd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    :pswitch_ce
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityWithConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_cf
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_d0
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAndWait$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_d1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_d2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_d3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    move v1, v11

    nop

    :cond_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    sget-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    goto :goto_35

    :cond_4e
    nop

    :goto_35
    invoke-virtual {v6, v2, v3, v1, v0}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_d4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_d5
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_d6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_d7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v11

    :pswitch_d8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_d9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_da
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_db
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$handleIncomingUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_dc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_dd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_36

    :cond_4f
    nop

    :goto_36
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_de
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_df
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_e0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_e1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_e2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_e3
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$profileControl$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_e4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_50

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_37

    :cond_50
    nop

    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v11

    :pswitch_e5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_51

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_38

    :cond_51
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_38
    return v11

    :pswitch_e6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    :pswitch_e7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_52

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_39

    :cond_52
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_39
    return v11

    :pswitch_e8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    :pswitch_e9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_53

    move v1, v11

    nop

    :cond_53
    invoke-virtual {v6, v0, v2, v1}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_ea
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_eb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    move v1, v11

    nop

    :cond_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_ec
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    :pswitch_ed
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return v11

    :pswitch_ee
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55

    move v1, v11

    nop

    :cond_55
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_ef
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$setServiceForeground$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_f0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_56

    move v1, v11

    nop

    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_f1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_57

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_3a

    :cond_57
    nop

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_58

    move v1, v11

    nop

    :cond_58
    invoke-virtual {v6, v2, v0, v1}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_f2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_f3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_f4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59

    move v1, v11

    nop

    :cond_59
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_f5
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$noteWakeupAlarm$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_f6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5a

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_3b

    :cond_5a
    move-object v2, v0

    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5b

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_3c

    :cond_5b
    nop

    :goto_3c
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_f7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_f8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_f9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_fa
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_fb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_fc
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$getIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_fd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    return v11

    :pswitch_fe
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    return v11

    :pswitch_ff
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5c

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3d

    :cond_5c
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3d
    return v11

    :pswitch_100
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_101
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5d

    move v1, v11

    nop

    :cond_5d
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_102
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5e

    move v1, v11

    nop

    :cond_5e
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_103
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$revokeUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_104
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$grantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_105
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$checkUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_106
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_107
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_108
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_109
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_10a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5f

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3e

    :cond_5f
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3e
    return v11

    :pswitch_10b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_60

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_3f

    :cond_60
    nop

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_10c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_61

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    goto :goto_40

    :cond_61
    nop

    :goto_40
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_10d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_62

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_41

    :cond_62
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_41
    return v11

    :pswitch_10e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_63

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_42

    :cond_63
    nop

    :goto_42
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_10f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_64

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_43

    :cond_64
    nop

    :goto_43
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_110
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startInstrumentation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_111
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    move v1, v11

    nop

    :cond_65
    move v0, v1

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_112
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_113
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66

    move v2, v11

    goto :goto_44

    :cond_66
    move v2, v1

    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_67

    move v1, v11

    nop

    :cond_67
    invoke-virtual {v6, v0, v2, v1}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_114
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activityResumed(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_115
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_68

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_45

    :cond_68
    nop

    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v6, v1, v0, v2}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_116
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_117
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$bindService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_118
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_69

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_46

    :cond_69
    nop

    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_119
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_11a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6a

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_47

    :cond_6a
    nop

    :goto_47
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_48

    :cond_6b
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_48
    return v11

    :pswitch_11b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_11c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_11d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    sget-object v1, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_11e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    move v4, v11

    goto :goto_49

    :cond_6c
    move v4, v1

    :goto_49
    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_6d

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v9, v11}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4a

    :cond_6d
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4a
    return v11

    :pswitch_11f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6e

    move v1, v11

    nop

    :cond_6e
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_120
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->moveTaskBackwards(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_121
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6f

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_4b

    :cond_6f
    nop

    :goto_4b
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_122
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    :pswitch_123
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    :pswitch_124
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_70

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4c

    :cond_70
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4c
    return v11

    :pswitch_125
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_126
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_71

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_4d

    :cond_71
    move-object v2, v0

    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_72

    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    goto :goto_4e

    :cond_72
    move-object v3, v0

    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_73

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_4f

    :cond_73
    nop

    :goto_4f
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/app/IActivityManager$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    return v11

    :pswitch_127
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activityPaused(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_128
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_74

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    goto :goto_50

    :cond_74
    nop

    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_75

    move v1, v11

    nop

    :cond_75
    invoke-virtual {v6, v2, v0, v1}, Landroid/app/IActivityManager$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    return v11

    :pswitch_129
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_12a
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$finishReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_12b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_76

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_51

    :cond_76
    nop

    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v1, v0, v2}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_12c
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_12d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_12e
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$registerReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_12f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_77

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_52

    :cond_77
    nop

    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v1, v2, v0, v3}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_130
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_131
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :pswitch_132
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_78

    sget-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    goto :goto_53

    :cond_78
    nop

    :goto_53
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_133
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_134
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_135
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_136
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_79

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_54

    :cond_79
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_54
    return v11

    :cond_7a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
