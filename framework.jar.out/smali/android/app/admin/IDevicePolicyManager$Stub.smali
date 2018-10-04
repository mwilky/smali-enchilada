.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x6f

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0xa7

.field static final TRANSACTION_addOverrideApn:I = 0x102

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x63

.field static final TRANSACTION_approveCaCert:I = 0x55

.field static final TRANSACTION_bindDeviceAdminServiceAsUser:I = 0xea

.field static final TRANSACTION_checkProvisioningPreCondition:I = 0xbd

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x5b

.field static final TRANSACTION_clearApplicationUserData:I = 0xf6

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x70

.field static final TRANSACTION_clearDeviceOwner:I = 0x45

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x64

.field static final TRANSACTION_clearProfileOwner:I = 0x4c

.field static final TRANSACTION_clearResetPasswordToken:I = 0xf1

.field static final TRANSACTION_clearSystemUpdatePolicyFreezePeriodRecord:I = 0xb2

.field static final TRANSACTION_createAdminSupportIntent:I = 0x7c

.field static final TRANSACTION_createAndManageUser:I = 0x7f

.field static final TRANSACTION_enableSystemApp:I = 0x86

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x87

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x54

.field static final TRANSACTION_forceRemoveActiveAdmin:I = 0x37

.field static final TRANSACTION_forceSecurityLogs:I = 0xdc

.field static final TRANSACTION_forceUpdateUserSetupComplete:I = 0xe2

.field static final TRANSACTION_generateKeyPair:I = 0x59

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x8a

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x8b

.field static final TRANSACTION_getActiveAdmins:I = 0x33

.field static final TRANSACTION_getAffiliationIds:I = 0xd6

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x62

.field static final TRANSACTION_getApplicationRestrictions:I = 0x67

.field static final TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x69

.field static final TRANSACTION_getAutoTimeRequired:I = 0xab

.field static final TRANSACTION_getBindDeviceAdminTargetUsers:I = 0xeb

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0xa3

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0xa4

.field static final TRANSACTION_getCameraDisabled:I = 0x2c

.field static final TRANSACTION_getCertInstallerPackage:I = 0x60

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x9c

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x9d

.field static final TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0x9f

.field static final TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0xa0

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0xa9

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x19

.field static final TRANSACTION_getDelegatePackages:I = 0x5e

.field static final TRANSACTION_getDelegatedScopes:I = 0x5d

.field static final TRANSACTION_getDeviceOwnerComponent:I = 0x42

.field static final TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x4f

.field static final TRANSACTION_getDeviceOwnerName:I = 0x44

.field static final TRANSACTION_getDeviceOwnerOrganizationName:I = 0xd1

.field static final TRANSACTION_getDeviceOwnerUserId:I = 0x46

.field static final TRANSACTION_getDisallowedSystemApps:I = 0xf9

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xb5

.field static final TRANSACTION_getEndUserSessionMessage:I = 0xff

.field static final TRANSACTION_getForceEphemeralUsers:I = 0xad

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x25

.field static final TRANSACTION_getKeepUninstalledPackages:I = 0xbf

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x30

.field static final TRANSACTION_getLastBugReportRequestTime:I = 0xee

.field static final TRANSACTION_getLastNetworkLogRetrievalTime:I = 0xef

.field static final TRANSACTION_getLastSecurityLogRetrievalTime:I = 0xed

.field static final TRANSACTION_getLockTaskFeatures:I = 0x90

.field static final TRANSACTION_getLockTaskPackages:I = 0x8d

.field static final TRANSACTION_getLongSupportMessage:I = 0xc7

.field static final TRANSACTION_getLongSupportMessageForUser:I = 0xc9

.field static final TRANSACTION_getMandatoryBackupTransport:I = 0xe6

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1c

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1f

.field static final TRANSACTION_getMeteredDataDisabledPackages:I = 0x101

.field static final TRANSACTION_getOrganizationColor:I = 0xcd

.field static final TRANSACTION_getOrganizationColorForUser:I = 0xce

.field static final TRANSACTION_getOrganizationName:I = 0xd0

.field static final TRANSACTION_getOrganizationNameForUser:I = 0xd2

.field static final TRANSACTION_getOverrideApns:I = 0x105

.field static final TRANSACTION_getOwnerInstalledCaCerts:I = 0xf5

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPendingSystemUpdate:I = 0xb7

.field static final TRANSACTION_getPermissionGrantState:I = 0xbb

.field static final TRANSACTION_getPermissionPolicy:I = 0xb9

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x72

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x73

.field static final TRANSACTION_getPermittedCrossProfileNotificationListeners:I = 0x7a

.field static final TRANSACTION_getPermittedInputMethods:I = 0x76

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x77

.field static final TRANSACTION_getProfileOwner:I = 0x48

.field static final TRANSACTION_getProfileOwnerName:I = 0x49

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_getRemoveWarning:I = 0x35

.field static final TRANSACTION_getRequiredStrongAuthTimeout:I = 0x21

.field static final TRANSACTION_getRestrictionsProvider:I = 0x6c

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x2e

.field static final TRANSACTION_getSecondaryUsers:I = 0x85

.field static final TRANSACTION_getShortSupportMessage:I = 0xc5

.field static final TRANSACTION_getShortSupportMessageForUser:I = 0xc8

.field static final TRANSACTION_getStartUserSessionMessage:I = 0xfe

.field static final TRANSACTION_getStorageEncryption:I = 0x28

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x29

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0xb1

.field static final TRANSACTION_getTransferOwnershipBundle:I = 0xfb

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0xa6

.field static final TRANSACTION_getUserProvisioningState:I = 0xd3

.field static final TRANSACTION_getUserRestrictions:I = 0x6e

.field static final TRANSACTION_getWifiMacAddress:I = 0xc2

.field static final TRANSACTION_hasDeviceOwner:I = 0x43

.field static final TRANSACTION_hasGrantedPolicy:I = 0x38

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x4d

.field static final TRANSACTION_installCaCert:I = 0x52

.field static final TRANSACTION_installExistingPackage:I = 0x88

.field static final TRANSACTION_installKeyPair:I = 0x57

.field static final TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x74

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x32

.field static final TRANSACTION_isAffiliatedUser:I = 0xd7

.field static final TRANSACTION_isApplicationHidden:I = 0x7e

.field static final TRANSACTION_isBackupServiceEnabled:I = 0xe4

.field static final TRANSACTION_isCaCertApproved:I = 0x56

.field static final TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x6a

.field static final TRANSACTION_isCurrentInputMethodSetByOwner:I = 0xf4

.field static final TRANSACTION_isDeviceProvisioned:I = 0xdf

.field static final TRANSACTION_isDeviceProvisioningConfigApplied:I = 0xe0

.field static final TRANSACTION_isEphemeralUser:I = 0xec

.field static final TRANSACTION_isInputMethodPermittedByAdmin:I = 0x78

.field static final TRANSACTION_isLockTaskPermitted:I = 0x8e

.field static final TRANSACTION_isLogoutEnabled:I = 0xf8

.field static final TRANSACTION_isManagedProfile:I = 0xc0

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x97

.field static final TRANSACTION_isMeteredDataDisabledPackageForUser:I = 0x108

.field static final TRANSACTION_isNetworkLoggingEnabled:I = 0xe8

.field static final TRANSACTION_isNotificationListenerServicePermitted:I = 0x7b

.field static final TRANSACTION_isOverrideApnEnabled:I = 0x107

.field static final TRANSACTION_isPackageSuspended:I = 0x51

.field static final TRANSACTION_isProfileActivePasswordSufficientForParent:I = 0x17

.field static final TRANSACTION_isProvisioningAllowed:I = 0xbc

.field static final TRANSACTION_isRemovingAdmin:I = 0xae

.field static final TRANSACTION_isResetPasswordTokenActive:I = 0xf2

.field static final TRANSACTION_isSecurityLoggingEnabled:I = 0xd9

.field static final TRANSACTION_isSeparateProfileChallengeAllowed:I = 0xca

.field static final TRANSACTION_isSystemOnlyUser:I = 0xc1

.field static final TRANSACTION_isUninstallBlocked:I = 0x9a

.field static final TRANSACTION_isUninstallInQueue:I = 0xdd

.field static final TRANSACTION_isUsingUnifiedPassword:I = 0x18

.field static final TRANSACTION_lockNow:I = 0x22

.field static final TRANSACTION_logoutUser:I = 0x84

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x98

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0xb6

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x34

.field static final TRANSACTION_reboot:I = 0xc3

.field static final TRANSACTION_removeActiveAdmin:I = 0x36

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0xa8

.field static final TRANSACTION_removeKeyPair:I = 0x58

.field static final TRANSACTION_removeOverrideApn:I = 0x104

.field static final TRANSACTION_removeUser:I = 0x80

.field static final TRANSACTION_reportFailedFingerprintAttempt:I = 0x3d

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x3b

.field static final TRANSACTION_reportKeyguardDismissed:I = 0x3f

.field static final TRANSACTION_reportKeyguardSecured:I = 0x40

.field static final TRANSACTION_reportPasswordChanged:I = 0x3a

.field static final TRANSACTION_reportSuccessfulFingerprintAttempt:I = 0x3e

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x3c

.field static final TRANSACTION_requestBugreport:I = 0x2a

.field static final TRANSACTION_resetPassword:I = 0x1d

.field static final TRANSACTION_resetPasswordWithToken:I = 0xf3

.field static final TRANSACTION_retrieveNetworkLogs:I = 0xe9

.field static final TRANSACTION_retrievePreRebootSecurityLogs:I = 0xdb

.field static final TRANSACTION_retrieveSecurityLogs:I = 0xda

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x89

.field static final TRANSACTION_setActiveAdmin:I = 0x31

.field static final TRANSACTION_setActivePasswordState:I = 0x39

.field static final TRANSACTION_setAffiliationIds:I = 0xd5

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x61

.field static final TRANSACTION_setApplicationHidden:I = 0x7d

.field static final TRANSACTION_setApplicationRestrictions:I = 0x66

.field static final TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x68

.field static final TRANSACTION_setAutoTimeRequired:I = 0xaa

.field static final TRANSACTION_setBackupServiceEnabled:I = 0xe3

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0xa2

.field static final TRANSACTION_setCameraDisabled:I = 0x2b

.field static final TRANSACTION_setCertInstallerPackage:I = 0x5f

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x9b

.field static final TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0x9e

.field static final TRANSACTION_setDefaultSmsApplication:I = 0x65

.field static final TRANSACTION_setDelegatedScopes:I = 0x5c

.field static final TRANSACTION_setDeviceOwner:I = 0x41

.field static final TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x4e

.field static final TRANSACTION_setDeviceProvisioningConfigApplied:I = 0xe1

.field static final TRANSACTION_setEndUserSessionMessage:I = 0xfd

.field static final TRANSACTION_setForceEphemeralUsers:I = 0xac

.field static final TRANSACTION_setGlobalProxy:I = 0x24

.field static final TRANSACTION_setGlobalSetting:I = 0x91

.field static final TRANSACTION_setKeepUninstalledPackages:I = 0xbe

.field static final TRANSACTION_setKeyPairCertificate:I = 0x5a

.field static final TRANSACTION_setKeyguardDisabled:I = 0xb3

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2f

.field static final TRANSACTION_setLockTaskFeatures:I = 0x8f

.field static final TRANSACTION_setLockTaskPackages:I = 0x8c

.field static final TRANSACTION_setLogoutEnabled:I = 0xf7

.field static final TRANSACTION_setLongSupportMessage:I = 0xc6

.field static final TRANSACTION_setMandatoryBackupTransport:I = 0xe5

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x96

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1b

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1e

.field static final TRANSACTION_setMeteredDataDisabledPackages:I = 0x100

.field static final TRANSACTION_setNetworkLoggingEnabled:I = 0xe7

.field static final TRANSACTION_setOrganizationColor:I = 0xcb

.field static final TRANSACTION_setOrganizationColorForUser:I = 0xcc

.field static final TRANSACTION_setOrganizationName:I = 0xcf

.field static final TRANSACTION_setOverrideApnsEnabled:I = 0x106

.field static final TRANSACTION_setPackagesSuspended:I = 0x50

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermissionGrantState:I = 0xba

.field static final TRANSACTION_setPermissionPolicy:I = 0xb8

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x71

.field static final TRANSACTION_setPermittedCrossProfileNotificationListeners:I = 0x79

.field static final TRANSACTION_setPermittedInputMethods:I = 0x75

.field static final TRANSACTION_setProfileEnabled:I = 0x4a

.field static final TRANSACTION_setProfileName:I = 0x4b

.field static final TRANSACTION_setProfileOwner:I = 0x47

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x26

.field static final TRANSACTION_setRequiredStrongAuthTimeout:I = 0x20

.field static final TRANSACTION_setResetPasswordToken:I = 0xf0

.field static final TRANSACTION_setRestrictionsProvider:I = 0x6b

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x2d

.field static final TRANSACTION_setSecureSetting:I = 0x93

.field static final TRANSACTION_setSecurityLoggingEnabled:I = 0xd8

.field static final TRANSACTION_setShortSupportMessage:I = 0xc4

.field static final TRANSACTION_setStartUserSessionMessage:I = 0xfc

.field static final TRANSACTION_setStatusBarDisabled:I = 0xb4

.field static final TRANSACTION_setStorageEncryption:I = 0x27

.field static final TRANSACTION_setSystemSetting:I = 0x92

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0xb0

.field static final TRANSACTION_setTime:I = 0x94

.field static final TRANSACTION_setTimeZone:I = 0x95

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0xa5

.field static final TRANSACTION_setUninstallBlocked:I = 0x99

.field static final TRANSACTION_setUserIcon:I = 0xaf

.field static final TRANSACTION_setUserProvisioningState:I = 0xd4

.field static final TRANSACTION_setUserRestriction:I = 0x6d

.field static final TRANSACTION_startManagedQuickContact:I = 0xa1

.field static final TRANSACTION_startUserInBackground:I = 0x82

.field static final TRANSACTION_stopUser:I = 0x83

.field static final TRANSACTION_switchUser:I = 0x81

.field static final TRANSACTION_transferOwnership:I = 0xfa

.field static final TRANSACTION_uninstallCaCerts:I = 0x53

.field static final TRANSACTION_uninstallPackageWithActiveAdmins:I = 0xde

.field static final TRANSACTION_updateOverrideApn:I = 0x103

.field static final TRANSACTION_wipeDataWithReason:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/admin/IDevicePolicyManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.app.admin.IDevicePolicyManager"

    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_13d

    const/4 v6, 0x0

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v6, v14

    nop

    :cond_3
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_3

    :cond_4
    nop

    :goto_3
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_4

    :cond_5
    nop

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_5

    :cond_6
    move-object v1, v0

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    goto :goto_6

    :cond_7
    nop

    :goto_6
    invoke-virtual {v9, v1, v2, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_7

    :cond_8
    move-object v1, v0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    goto :goto_8

    :cond_9
    nop

    :goto_8
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_9

    :cond_a
    nop

    :goto_9
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_a

    :cond_b
    nop

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b

    :cond_c
    nop

    :goto_b
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_d

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v1, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_d
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v14

    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_d

    :cond_e
    nop

    :goto_d
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_f

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v1, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_f
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v14

    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_f

    :cond_10
    move-object v1, v0

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_10

    :cond_11
    nop

    :goto_10
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_11

    :cond_12
    move-object v1, v0

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_12

    :cond_13
    nop

    :goto_12
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_14

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v14}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_14
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v14

    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_14

    :cond_15
    move-object v1, v0

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_15

    :cond_16
    move-object v2, v0

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    goto :goto_16

    :cond_17
    nop

    :goto_16
    invoke-virtual {v9, v1, v2, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_17

    :cond_18
    nop

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLogoutEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_18

    :cond_19
    nop

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    move v6, v14

    nop

    :cond_1a
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLogoutEnabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_19

    :cond_1b
    nop

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_1a

    :cond_1c
    nop

    :goto_1a
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1d

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/content/pm/StringParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_1d
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    return v14

    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCurrentInputMethodSetByOwner()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1c

    :cond_1e
    nop

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1d

    :cond_1f
    nop

    :goto_1d
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1e

    :cond_20
    nop

    :goto_1e
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1f

    :cond_21
    nop

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v14

    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastBugReportRequestTime()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v14

    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v14

    :pswitch_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_20

    :cond_22
    nop

    :goto_20
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_1d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_21

    :cond_23
    nop

    :goto_21
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :pswitch_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_22

    :cond_24
    move-object v1, v0

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_23
    move-object v4, v0

    goto :goto_24

    :cond_25
    goto :goto_23

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object v0, v9

    move-object v2, v8

    move-object v3, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_1f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_25

    :cond_26
    nop

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :pswitch_20
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_26

    :cond_27
    nop

    :goto_26
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_21
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_27

    :cond_28
    nop

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    move v6, v14

    nop

    :cond_29
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_22
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2a

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v14}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    :cond_2a
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_28
    return v14

    :pswitch_23
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_29

    :cond_2b
    move-object v1, v0

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_2a

    :cond_2c
    nop

    :goto_2a
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMandatoryBackupTransport(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_24
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_2b

    :cond_2d
    nop

    :goto_2b
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_25
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_2c

    :cond_2e
    nop

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    move v6, v14

    nop

    :cond_2f
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_26
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceUpdateUserSetupComplete()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_27
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_28
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_29
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_2a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_2c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceSecurityLogs()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v14

    :pswitch_2d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_2d

    :cond_30
    nop

    :goto_2d
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_31

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    :cond_31
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2e
    return v14

    :pswitch_2e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_2f

    :cond_32
    nop

    :goto_2f
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_33

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    :cond_33
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_30
    return v14

    :pswitch_2f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_31

    :cond_34
    nop

    :goto_31
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_30
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_32

    :cond_35
    nop

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36

    move v6, v14

    nop

    :cond_36
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_31
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_32
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_37

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_33

    :cond_37
    nop

    :goto_33
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_33
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_34

    :cond_38
    nop

    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_34
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_35
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_36
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_39

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v1, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_35

    :cond_39
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35
    return v14

    :pswitch_37
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3a

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_36

    :cond_3a
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_36
    return v14

    :pswitch_38
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_37

    :cond_3b
    nop

    :goto_37
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3c

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v1, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_38

    :cond_3c
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_38
    return v14

    :pswitch_39
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_39

    :cond_3d
    move-object v1, v0

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_3a

    :cond_3e
    nop

    :goto_3a
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_3a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_3b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_3b

    :cond_3f
    nop

    :goto_3b
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_3c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_3d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_40

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_3c

    :cond_40
    nop

    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_3e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSeparateProfileChallengeAllowed(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_3f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_3d

    :cond_41
    nop

    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_42

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v2, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_3e

    :cond_42
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3e
    return v14

    :pswitch_40
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_3f

    :cond_43
    nop

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_44

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v2, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_40

    :cond_44
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_40
    return v14

    :pswitch_41
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_45

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_41

    :cond_45
    nop

    :goto_41
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_46

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v1, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_42

    :cond_46
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_42
    return v14

    :pswitch_42
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_43

    :cond_47
    move-object v1, v0

    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_44

    :cond_48
    nop

    :goto_44
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_43
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_49

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_45

    :cond_49
    nop

    :goto_45
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4a

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v1, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_46

    :cond_4a
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_46
    return v14

    :pswitch_44
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4b

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_47

    :cond_4b
    move-object v1, v0

    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4c

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_48

    :cond_4c
    nop

    :goto_48
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_45
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_49

    :cond_4d
    nop

    :goto_49
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_46
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_4a

    :cond_4e
    nop

    :goto_4a
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_47
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_4b

    :cond_4f
    nop

    :goto_4b
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSystemOnlyUser(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_48
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_50

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_4c

    :cond_50
    nop

    :goto_4c
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_49
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_51

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_4d

    :cond_51
    nop

    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_4a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_52

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_4e

    :cond_52
    nop

    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_4b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkProvisioningPreCondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_4c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_4d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_53

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_4f

    :cond_53
    nop

    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_4e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_54

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_50
    move-object v1, v0

    goto :goto_51

    :cond_54
    goto :goto_50

    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object v0, v9

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_4f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_55

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_52

    :cond_55
    nop

    :goto_52
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_50
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_56

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_53

    :cond_56
    nop

    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_51
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_57

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_54

    :cond_57
    nop

    :goto_54
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_58

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/app/admin/SystemUpdateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_55

    :cond_58
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_55
    return v14

    :pswitch_52
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_59

    sget-object v0, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/SystemUpdateInfo;

    goto :goto_56

    :cond_59
    nop

    :goto_56
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_53
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_54
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5a

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_57

    :cond_5a
    nop

    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5b

    move v6, v14

    nop

    :cond_5b
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_55
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_58

    :cond_5c
    nop

    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5d

    move v6, v14

    nop

    :cond_5d
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_56
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearSystemUpdatePolicyFreezePeriodRecord()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_57
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5e

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v14}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_59

    :cond_5e
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_59
    return v14

    :pswitch_58
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_5a

    :cond_5f
    move-object v1, v0

    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_60

    sget-object v0, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/SystemUpdatePolicy;

    goto :goto_5b

    :cond_60
    nop

    :goto_5b
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_59
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_61

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_5c

    :cond_61
    move-object v1, v0

    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_5d

    :cond_62
    nop

    :goto_5d
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_5a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_63

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_5e

    :cond_63
    nop

    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_5b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_64

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_5f

    :cond_64
    nop

    :goto_5f
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_5c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_65

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_60

    :cond_65
    nop

    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_66

    move v6, v14

    nop

    :cond_66
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_5d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_5e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_67

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_61

    :cond_67
    nop

    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_68

    move v6, v14

    nop

    :cond_68
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_5f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_69

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_62

    :cond_69
    nop

    :goto_62
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_60
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6a

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_63

    :cond_6a
    nop

    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_61
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_64

    :cond_6b
    nop

    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_62
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_65

    :cond_6c
    move-object v1, v0

    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_66

    :cond_6d
    nop

    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6e

    move v6, v14

    nop

    :cond_6e
    move v3, v6

    invoke-virtual {v9, v1, v0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :pswitch_63
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6f

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_67

    :cond_6f
    move-object v1, v0

    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_70

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_68

    :cond_70
    move-object v2, v0

    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_71

    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    goto :goto_69

    :cond_71
    nop

    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_72

    move v6, v14

    nop

    :cond_72
    move v3, v6

    invoke-virtual {v9, v1, v2, v0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_64
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_65
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_73

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_6a

    :cond_73
    nop

    :goto_6a
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_66
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_74

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_6b

    :cond_74
    nop

    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_75

    move v6, v14

    nop

    :cond_75
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_67
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_76

    move v4, v14

    goto :goto_6c

    :cond_76
    move v4, v6

    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_77

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_6d
    move-object v7, v0

    goto :goto_6e

    :cond_77
    goto :goto_6d

    :goto_6e
    move-object v0, v9

    move-object v1, v8

    move-wide v2, v15

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_68
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_69
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_78

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_6f

    :cond_78
    nop

    :goto_6f
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_6a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_79

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_70

    :cond_79
    nop

    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7a

    move v6, v14

    nop

    :cond_7a
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_6b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_6c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_71

    :cond_7b
    nop

    :goto_71
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_6d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7c

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_72

    :cond_7c
    nop

    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7d

    move v6, v14

    nop

    :cond_7d
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_6e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_73

    :cond_7e
    nop

    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_6f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_74

    :cond_7f
    nop

    :goto_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_80

    move v6, v14

    nop

    :cond_80
    move v3, v6

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_70
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_81

    move v6, v14

    nop

    :cond_81
    move v0, v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_71
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_82

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_75

    :cond_82
    nop

    :goto_75
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_72
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_83

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_76

    :cond_83
    nop

    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_84

    move v6, v14

    nop

    :cond_84
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_73
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_85

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_77

    :cond_85
    nop

    :goto_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_74
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_86

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_78

    :cond_86
    nop

    :goto_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTime(Landroid/content/ComponentName;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_75
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_87

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_79

    :cond_87
    nop

    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_76
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_88

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_7a

    :cond_88
    nop

    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_77
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_89

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_7b

    :cond_89
    nop

    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_78
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8a

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_7c

    :cond_8a
    nop

    :goto_7c
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskFeatures(Landroid/content/ComponentName;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_79
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_7d

    :cond_8b
    nop

    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskFeatures(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_7a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_7b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8c

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_7e

    :cond_8c
    nop

    :goto_7e
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v14

    :pswitch_7c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_7f

    :cond_8d
    nop

    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_7d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v14

    :pswitch_7e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v14

    :pswitch_7f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_80

    :cond_8e
    nop

    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8f

    move v6, v14

    nop

    :cond_8f
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_80
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_81

    :cond_90
    nop

    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_81
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_91

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_82

    :cond_91
    move-object v1, v0

    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_92

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_83

    :cond_92
    nop

    :goto_83
    invoke-virtual {v9, v1, v2, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_82
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_93

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_84

    :cond_93
    nop

    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_83
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_94

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_85

    :cond_94
    nop

    :goto_85
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :pswitch_84
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_95

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_86

    :cond_95
    nop

    :goto_86
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUser(Landroid/content/ComponentName;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_85
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_96

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_87

    :cond_96
    move-object v1, v0

    :goto_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_97

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_88

    :cond_97
    nop

    :goto_88
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_86
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_98

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_89

    :cond_98
    move-object v1, v0

    :goto_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_99

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_8a

    :cond_99
    nop

    :goto_8a
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_87
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9a

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_8b

    :cond_9a
    move-object v1, v0

    :goto_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9b

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_8c

    :cond_9b
    nop

    :goto_8c
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_88
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9c

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_8d

    :cond_9c
    move-object v1, v0

    :goto_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9d

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_8e

    :cond_9d
    nop

    :goto_8e
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_89
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9e

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_8f

    :cond_9e
    move-object v1, v0

    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9f

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    move-object v3, v2

    goto :goto_90

    :cond_9f
    move-object v3, v0

    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a0

    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    :goto_91
    move-object v4, v0

    goto :goto_92

    :cond_a0
    goto :goto_91

    :goto_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, v9

    move-object v2, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a1

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v14}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_93

    :cond_a1
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_93
    return v14

    :pswitch_8a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a2

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_94

    :cond_a2
    nop

    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_8b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a3

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_95

    :cond_a3
    nop

    :goto_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a4

    move v6, v14

    nop

    :cond_a4
    move v3, v6

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_8c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_a5

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_96

    :cond_a5
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_96
    return v14

    :pswitch_8d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_8e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a6

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_97

    :cond_a6
    nop

    :goto_97
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_8f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_98

    :cond_a7
    nop

    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_90
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a8

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_99

    :cond_a8
    nop

    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_91
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v14

    :pswitch_92
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a9

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_9a

    :cond_a9
    nop

    :goto_9a
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v14

    :pswitch_93
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_aa

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_9b

    :cond_aa
    nop

    :goto_9b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_94
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ab

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_9c

    :cond_ab
    nop

    :goto_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_95
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v14

    :pswitch_96
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ac

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_9d

    :cond_ac
    nop

    :goto_9d
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v14

    :pswitch_97
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ad

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_9e

    :cond_ad
    nop

    :goto_9e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_98
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ae

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_9f

    :cond_ae
    nop

    :goto_9f
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_99
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_af

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_a0

    :cond_af
    move-object v1, v0

    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b0

    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    goto :goto_a1

    :cond_b0
    nop

    :goto_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v1, v0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_9a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b1

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_a2

    :cond_b1
    nop

    :goto_a2
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_b2

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a3

    :cond_b2
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a3
    return v14

    :pswitch_9b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b3

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_a4

    :cond_b3
    nop

    :goto_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b4

    move v6, v14

    nop

    :cond_b4
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_9c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_b5

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a5

    :cond_b5
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a5
    return v14

    :pswitch_9d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b6

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_a6

    :cond_b6
    move-object v1, v0

    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_a7

    :cond_b7
    nop

    :goto_a7
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_9e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_9f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b8

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_a8

    :cond_b8
    nop

    :goto_a8
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_a0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b9

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_a9

    :cond_b9
    nop

    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_a1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ba

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_aa

    :cond_ba
    nop

    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_bb

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v12, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_ab

    :cond_bb
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_ab
    return v14

    :pswitch_a2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_bc

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_ac

    :cond_bc
    move-object v1, v0

    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bd

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_ad

    :cond_bd
    nop

    :goto_ad
    invoke-virtual {v9, v1, v2, v3, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_a3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_be

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_ae

    :cond_be
    nop

    :goto_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_a4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_bf

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_af

    :cond_bf
    nop

    :goto_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_a5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c0

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_b0

    :cond_c0
    move-object v1, v0

    :goto_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c1

    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    goto :goto_b1

    :cond_c1
    move-object v2, v0

    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c2

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b2

    :cond_c2
    nop

    :goto_b2
    invoke-virtual {v9, v1, v2, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_a6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c3

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b3

    :cond_c3
    nop

    :goto_b3
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_a7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c4

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b4

    :cond_c4
    nop

    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c5

    move v6, v14

    nop

    :cond_c5
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_a8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c6

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b5

    :cond_c6
    nop

    :goto_b5
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_a9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b6

    :cond_c7
    nop

    :goto_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_aa
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c8

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b7

    :cond_c8
    nop

    :goto_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_ab
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c9

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b8

    :cond_c9
    nop

    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v14

    :pswitch_ac
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ca

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_b9

    :cond_ca
    nop

    :goto_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_ad
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cb

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_ba

    :cond_cb
    nop

    :goto_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v9, v1, v0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_ae
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_cc

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_bb
    move-object v1, v0

    goto :goto_bc

    :cond_cc
    goto :goto_bb

    :goto_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cd

    move v6, v14

    nop

    :cond_cd
    move-object v0, v9

    move-object v2, v7

    move-object v3, v8

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_af
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ce

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_bd

    :cond_ce
    move-object v1, v0

    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cf

    sget-object v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    :goto_be
    move-object v4, v0

    goto :goto_bf

    :cond_cf
    goto :goto_be

    :goto_bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object v6, v0

    move-object v0, v9

    move-object v2, v7

    move-object v3, v8

    move v5, v15

    move-object/from16 v19, v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v19

    invoke-virtual {v2, v12, v14}, Landroid/security/keymaster/KeymasterCertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :pswitch_b0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d0

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_c0

    :cond_d0
    nop

    :goto_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_b1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d1

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_c1
    move-object v1, v0

    goto :goto_c2

    :cond_d1
    goto :goto_c1

    :goto_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d2

    move v7, v14

    goto :goto_c3

    :cond_d2
    move v7, v6

    :goto_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d3

    move v8, v14

    goto :goto_c4

    :cond_d3
    move v8, v6

    :goto_c4
    move-object v0, v9

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_b2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_b3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d4

    move v6, v14

    nop

    :cond_d4
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_b4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d5

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_c5

    :cond_d5
    nop

    :goto_c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_b5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d6

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_c6

    :cond_d6
    nop

    :goto_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_b6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_c7

    :cond_d7
    nop

    :goto_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_b7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d8

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_c8

    :cond_d8
    nop

    :goto_c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_b8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d9

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_c9

    :cond_d9
    nop

    :goto_c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_da

    move v6, v14

    nop

    :cond_da
    move v3, v6

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v14

    :pswitch_b9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_db

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_ca

    :cond_db
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_ca
    return v14

    :pswitch_ba
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_dc

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_cb

    :cond_dc
    move-object v1, v0

    :goto_cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_dd

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_cc

    :cond_dd
    nop

    :goto_cc
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_bb
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_bc
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_de

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_cd

    :cond_de
    nop

    :goto_cd
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_bd
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_df

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_ce

    :cond_df
    nop

    :goto_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_be
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e0

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_cf

    :cond_e0
    nop

    :goto_cf
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_bf
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_c0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_e1

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d0

    :cond_e1
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d0
    return v14

    :pswitch_c1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e2

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_d1

    :cond_e2
    nop

    :goto_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_c2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_c3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_c4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_c5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDeviceOwner()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_c6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e3

    move v0, v14

    goto :goto_d2

    :cond_e3
    move v0, v6

    :goto_d2
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_e4

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d3

    :cond_e4
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d3
    return v14

    :pswitch_c7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e5

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_d4

    :cond_e5
    nop

    :goto_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_c8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_c9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_ca
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulFingerprintAttempt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_cb
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedFingerprintAttempt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_cc
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_cd
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_ce
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportPasswordChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_cf
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e6

    sget-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PasswordMetrics;

    goto :goto_d5

    :cond_e6
    nop

    :goto_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_d0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_d6

    :cond_e7
    nop

    :goto_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_d1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e8

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_d7

    :cond_e8
    nop

    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_d2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e9

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_d8

    :cond_e9
    nop

    :goto_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_d3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ea

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_d9

    :cond_ea
    move-object v1, v0

    :goto_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_eb

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    goto :goto_da

    :cond_eb
    nop

    :goto_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v1, v0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_d4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_d5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :pswitch_d6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ec

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_db

    :cond_ec
    nop

    :goto_db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_d7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ed

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_dc

    :cond_ed
    nop

    :goto_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ee

    move v6, v14

    nop

    :cond_ee
    move v1, v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_d8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ef

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_dd

    :cond_ef
    nop

    :goto_dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f0

    move v6, v14

    nop

    :cond_f0
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_d9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f1

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_de

    :cond_f1
    nop

    :goto_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f2

    move v6, v14

    nop

    :cond_f2
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_da
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f3

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_df

    :cond_f3
    nop

    :goto_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_db
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f4

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_e0

    :cond_f4
    nop

    :goto_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f5

    move v6, v14

    nop

    :cond_f5
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_dc
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f6

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_e1

    :cond_f6
    nop

    :goto_e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_dd
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_e2

    :cond_f7
    nop

    :goto_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f8

    move v6, v14

    nop

    :cond_f8
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_de
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f9

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_e3

    :cond_f9
    nop

    :goto_e3
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_df
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_e0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fa

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_e4

    :cond_fa
    nop

    :goto_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_e1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fb

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_e5

    :cond_fb
    nop

    :goto_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fc

    move v6, v14

    nop

    :cond_fc
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_e2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fd

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_e6

    :cond_fd
    move-object v1, v0

    :goto_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fe

    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyInfo;

    goto :goto_e7

    :cond_fe
    nop

    :goto_e7
    invoke-virtual {v9, v1, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_e3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_ff

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e8

    :cond_ff
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e8
    return v14

    :pswitch_e4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_100

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_e9

    :cond_100
    nop

    :goto_e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_101

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v12, v14}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_ea

    :cond_101
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_ea
    return v14

    :pswitch_e5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeDataWithReason(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_e6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_102

    move v6, v14

    nop

    :cond_102
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_e7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_103

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_eb

    :cond_103
    nop

    :goto_eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_104

    move v6, v14

    nop

    :cond_104
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v14

    :pswitch_e8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_105

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_ec

    :cond_105
    nop

    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_106

    move v6, v14

    nop

    :cond_106
    move v3, v6

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_e9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_107

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_ed

    :cond_107
    nop

    :goto_ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_108

    move v6, v14

    nop

    :cond_108
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v14

    :pswitch_ea
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_109

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_ee

    :cond_109
    nop

    :goto_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10a

    move v6, v14

    nop

    :cond_10a
    move v3, v6

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_eb
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_ec
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_ef

    :cond_10b
    nop

    :goto_ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10c

    move v6, v14

    nop

    :cond_10c
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_ed
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f0

    :cond_10d
    nop

    :goto_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10e

    move v6, v14

    nop

    :cond_10e
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_ee
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10f

    move v6, v14

    nop

    :cond_10f
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_ef
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_110

    move v6, v14

    nop

    :cond_110
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_f0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_111

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f1

    :cond_111
    nop

    :goto_f1
    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_f1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProfileActivePasswordSufficientForParent(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_f2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_112

    move v6, v14

    nop

    :cond_112
    move v1, v6

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_f3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_113

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f2

    :cond_113
    nop

    :goto_f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_114

    move v6, v14

    nop

    :cond_114
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v14

    :pswitch_f4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_115

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f3

    :cond_115
    nop

    :goto_f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_116

    move v6, v14

    nop

    :cond_116
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v14

    :pswitch_f5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_117

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f4

    :cond_117
    nop

    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_118

    move v6, v14

    nop

    :cond_118
    move v3, v6

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_f6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_119

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f5

    :cond_119
    nop

    :goto_f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11a

    move v6, v14

    nop

    :cond_11a
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_f7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f6

    :cond_11b
    nop

    :goto_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11c

    move v6, v14

    nop

    :cond_11c
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_f8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f7

    :cond_11d
    nop

    :goto_f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11e

    move v6, v14

    nop

    :cond_11e
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_f9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f8

    :cond_11f
    nop

    :goto_f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_120

    move v6, v14

    nop

    :cond_120
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_fa
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_121

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f9

    :cond_121
    nop

    :goto_f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_122

    move v6, v14

    nop

    :cond_122
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_fb
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_123

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_fa

    :cond_123
    nop

    :goto_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_124

    move v6, v14

    nop

    :cond_124
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_fc
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_125

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_fb

    :cond_125
    nop

    :goto_fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_126

    move v6, v14

    nop

    :cond_126
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_fd
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_127

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_fc

    :cond_127
    nop

    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_128

    move v6, v14

    nop

    :cond_128
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_fe
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_129

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_fd

    :cond_129
    nop

    :goto_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12a

    move v6, v14

    nop

    :cond_12a
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_ff
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_fe

    :cond_12b
    nop

    :goto_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12c

    move v6, v14

    nop

    :cond_12c
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_100
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_ff

    :cond_12d
    nop

    :goto_ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12e

    move v6, v14

    nop

    :cond_12e
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_101
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_100

    :cond_12f
    nop

    :goto_100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_130

    move v6, v14

    nop

    :cond_130
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_102
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_131

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_101

    :cond_131
    nop

    :goto_101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_132

    move v6, v14

    nop

    :cond_132
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_103
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_133

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_102

    :cond_133
    nop

    :goto_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_134

    move v6, v14

    nop

    :cond_134
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_104
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_135

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_103

    :cond_135
    nop

    :goto_103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_136

    move v6, v14

    nop

    :cond_136
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_105
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_137

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_104

    :cond_137
    nop

    :goto_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_138

    move v6, v14

    nop

    :cond_138
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_106
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_139

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_105

    :cond_139
    nop

    :goto_105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13a

    move v6, v14

    nop

    :cond_13a
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_107
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_106

    :cond_13b
    nop

    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13c

    move v6, v14

    nop

    :cond_13c
    move v2, v6

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :cond_13d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
