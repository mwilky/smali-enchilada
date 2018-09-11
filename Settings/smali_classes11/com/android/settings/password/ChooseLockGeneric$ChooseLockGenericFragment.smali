.class public Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static final CHOOSE_LOCK_BEFORE_FINGERPRINT_REQUEST:I = 0x67

.field private static final CHOOSE_LOCK_REQUEST:I = 0x66

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final ENABLE_ENCRYPTION_REQUEST:I = 0x65

.field public static final ENCRYPT_REQUESTED_DISABLED:Ljava/lang/String; = "encrypt_requested_disabled"

.field public static final ENCRYPT_REQUESTED_QUALITY:Ljava/lang/String; = "encrypt_requested_quality"

.field public static final EXTRA_CHOOSE_LOCK_GENERIC_EXTRAS:Ljava/lang/String; = "choose_lock_generic_extras"

.field public static final EXTRA_SHOW_OPTIONS_BUTTON:Ljava/lang/String; = "show_options_button"

.field public static final HIDE_DISABLED_PREFS:Ljava/lang/String; = "hide_disabled_prefs"

.field private static final KEY_SKIP_FINGERPRINT:Ljava/lang/String; = "unlock_skip_fingerprint"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final SKIP_FINGERPRINT_REQUEST:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ChooseLockGenericFragment"

.field public static final TAG_FRP_WARNING_DIALOG:Ljava/lang/String; = "frp_warning_dialog"

.field private static final WAITING_FOR_CONFIRMATION:Ljava/lang/String; = "waiting_for_confirmation"


# instance fields
.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mController:Lcom/android/settings/password/ChooseLockGenericController;

.field private mCryptfsChangepwDefaultProgressDialog:Landroid/app/ProgressDialog;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForChangeCredRequiredForBoot:Z

.field protected mForFingerprint:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mHideDrawer:Z

.field private mIsSetNewPassword:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private mPasswordConfirmed:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 161
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 171
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 115
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # I

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 115
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindFaceUnlockService()V
    .locals 4

    .line 209
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 212
    const-string v1, "ChooseLockGenericFragment"

    const-string v2, "Start bind oneplus face unlockservice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ChooseLockGenericFragment"

    const-string v2, "Bind oneplus face unlockservice exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getIntentForUnlockMethod(I)Landroid/content/Intent;
    .locals 4
    .param p1, "quality"    # I

    .line 742
    const/4 v0, 0x0

    .line 743
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    if-lt p1, v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_0
    const/high16 v1, 0x20000

    if-lt p1, v1, :cond_2

    .line 746
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v1

    .line 747
    .local v1, "minLength":I
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 748
    const/4 v1, 0x4

    .line 750
    :cond_1
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v2

    .line 751
    .local v2, "maxLength":I
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(III)Landroid/content/Intent;

    move-result-object v0

    .line 752
    .end local v1    # "minLength":I
    .end local v2    # "maxLength":I
    goto :goto_0

    :cond_2
    const/high16 v1, 0x10000

    if-ne p1, v1, :cond_3

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object v0

    .line 755
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 756
    const-string v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    :cond_4
    return-object v0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 3

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 573
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 574
    .local v0, "credentialOwner":I
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    sget-object v1, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object v1, v1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    return-object v1

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 579
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 578
    invoke-static {v1}, Lcom/android/settings/password/ScreenLockType;->fromQuality(I)Lcom/android/settings/password/ScreenLockType;

    move-result-object v1

    .line 580
    .local v1, "lock":Lcom/android/settings/password/ScreenLockType;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 4

    .line 898
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .local v0, "hasFingerprints":Z
    goto :goto_0

    .line 901
    .end local v0    # "hasFingerprints":Z
    :cond_0
    const/4 v0, 0x0

    .line 903
    .restart local v0    # "hasFingerprints":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    .line 904
    .local v1, "isProfile":Z
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_c

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_8

    const/high16 v3, 0x30000

    if-eq v2, v3, :cond_8

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x50000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x60000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_4

    .line 942
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 943
    const v2, 0x7f121231

    return v2

    .line 945
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 946
    const v2, 0x7f121230

    return v2

    .line 947
    :cond_2
    if-eqz v1, :cond_3

    .line 948
    const v2, 0x7f121232

    return v2

    .line 950
    :cond_3
    const v2, 0x7f12122f

    return v2

    .line 931
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 932
    const v2, 0x7f121225

    return v2

    .line 934
    :cond_5
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 935
    const v2, 0x7f121224

    return v2

    .line 936
    :cond_6
    if-eqz v1, :cond_7

    .line 937
    const v2, 0x7f121226

    return v2

    .line 939
    :cond_7
    const v2, 0x7f121223

    return v2

    .line 918
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 919
    const v2, 0x7f12122d

    return v2

    .line 920
    :cond_9
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 921
    const v2, 0x7f12122c

    return v2

    .line 922
    :cond_a
    if-eqz v1, :cond_b

    .line 923
    const v2, 0x7f12122e

    return v2

    .line 925
    :cond_b
    const v2, 0x7f12122b

    return v2

    .line 906
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 907
    const v2, 0x7f121229

    return v2

    .line 909
    :cond_d
    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    .line 910
    const v2, 0x7f121228

    return v2

    .line 911
    :cond_e
    if-eqz v1, :cond_f

    .line 912
    const v2, 0x7f12122a

    return v2

    .line 914
    :cond_f
    const v2, 0x7f121227

    return v2
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 2

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 892
    .local v0, "isProfile":Z
    if-eqz v0, :cond_0

    const v1, 0x7f121235

    goto :goto_0

    .line 893
    :cond_0
    const v1, 0x7f121234

    .line 892
    :goto_0
    return v1
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .line 956
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    .line 957
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 956
    :goto_0
    return v0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 8
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .line 370
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 371
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 372
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 373
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    iput p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 377
    iput-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object v1

    .line 381
    .local v1, "unlockMethodIntent":Landroid/content/Intent;
    const-string v2, "for_cred_req_boot"

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 388
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    .line 389
    .local v3, "accEn":Z
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    .line 390
    .local v4, "required":Z
    invoke-virtual {p0, v2, p1, v4, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 392
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "for_fingerprint"

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    const-string v6, ":settings:hide_drawer"

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    nop

    .line 397
    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v6, :cond_0

    .line 398
    const/16 v6, 0x67

    goto :goto_0

    .line 399
    :cond_0
    const/16 v6, 0x65

    .line 395
    :goto_0
    invoke-virtual {p0, v5, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 400
    .end local v1    # "unlockMethodIntent":Landroid/content/Intent;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "accEn":Z
    .end local v4    # "required":Z
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 401
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 404
    return-void

    .line 406
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    .line 408
    :goto_1
    return-void
.end method

.method private removeAllFingerprintForUserAndFinish(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 763
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeFaceData()V

    .line 766
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 768
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 772
    move v2, p1

    .line 773
    .local v2, "groupId":I
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 774
    .local v0, "finger":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    invoke-virtual {v1, v0, p1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 793
    .end local v0    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v2    # "groupId":I
    goto :goto_0

    .line 796
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    goto :goto_0

    .line 804
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->showResetPasswordDefaultDialog()V

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.DISMISS_APPLOCKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "applocker_package_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v1, "applocker_dismiss_all"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 811
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 814
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method private removeFaceData()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->removeFace(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start remove face RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private removeManagedProfileFingerprintsAndFinishIfNecessary(I)V
    .locals 7
    .param p1, "parentUserId"    # I

    .line 850
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 853
    :cond_0
    const/4 v0, 0x0

    .line 854
    .local v0, "hasChildProfile":Z
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 856
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 857
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 858
    .local v2, "profilesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 859
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 860
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 861
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 862
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 863
    const/4 v0, 0x1

    .line 864
    goto :goto_1

    .line 858
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 868
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "profilesSize":I
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 870
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->showResetPasswordDefaultDialog()V

    .line 874
    :cond_3
    return-void
.end method

.method private setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V
    .locals 1
    .param p1, "lock"    # Lcom/android/settings/password/ScreenLockType;
    .param p2, "summary"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 557
    iget-object v0, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 558
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 561
    :cond_0
    return-void
.end method

.method private setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V
    .locals 1
    .param p1, "lock"    # Lcom/android/settings/password/ScreenLockType;
    .param p2, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 543
    iget-object v0, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 544
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 547
    :cond_0
    return-void
.end method

.method private setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "lock"    # Lcom/android/settings/password/ScreenLockType;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 550
    iget-object v0, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 551
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 554
    :cond_0
    return-void
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 5
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .line 961
    const v0, 0x16058

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 963
    invoke-static {p1}, Lcom/android/settings/password/ScreenLockType;->fromKey(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    .line 964
    .local v0, "lock":Lcom/android/settings/password/ScreenLockType;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 965
    sget-object v2, Lcom/android/settings/password/ChooseLockGeneric$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {v0}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 977
    :pswitch_0
    iget v2, v0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 978
    return v3

    .line 968
    :pswitch_1
    iget v2, v0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    sget-object v4, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    if-ne v0, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    .line 972
    return v3

    .line 981
    :cond_1
    :goto_1
    const-string v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unknown unlock method to set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .line 986
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v0

    .line 987
    .local v0, "title":I
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 988
    .local v1, "message":I
    nop

    .line 989
    invoke-static {v0, v1, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v2

    .line 991
    .local v2, "dialog":Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "frp_warning_dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method private showResetPasswordDefaultDialog()V
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->savePINPasswordLength(JI)V

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 822
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 827
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120cbb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 829
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 830
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/app/Activity;)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 846
    :cond_2
    return-void

    .line 823
    :cond_3
    :goto_0
    return-void
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    .line 219
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 221
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 3

    .line 564
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 566
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 567
    const v2, 0x7f120478

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 569
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 2

    .line 640
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    return-void

    .line 644
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    return-void

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 649
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    return-void

    .line 653
    :cond_2
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f120f6a

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    .line 654
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    .line 655
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    .line 656
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    .line 657
    return-void
.end method

.method private updatePreferenceText()V
    .locals 3

    .line 522
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 523
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f12067a

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    .line 525
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f12067b

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    .line 526
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f120679

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 532
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 531
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 534
    :cond_1
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)Z

    .line 537
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v0, :cond_3

    .line 538
    :cond_2
    const-string v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)Z

    .line 540
    :cond_3
    return-void
.end method

.method private updatePreferencesOrFinish(Z)V
    .locals 5
    .param p1, "isRecreatingActivity"    # Z

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 490
    .local v1, "quality":I
    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 492
    const-string v4, "minimum_quality"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 493
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v2, v1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result v1

    .line 494
    const-string v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 496
    .local v2, "hideDisabledPrefs":Z
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 497
    .local v3, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 498
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 501
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 502
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 504
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 505
    .end local v2    # "hideDisabledPrefs":Z
    .end local v3    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 507
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    .line 509
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 2

    .line 324
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 325
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(I)V

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v0

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12067d

    .line 328
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 331
    :cond_0
    return-void
.end method

.method protected addPreferences()V
    .locals 2

    .line 512
    const v0, 0x7f1600b6

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 515
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a02f0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 516
    const-string v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 517
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a02f2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 518
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a02f1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 519
    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 593
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 18
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    move-object/from16 v0, p0

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 605
    .local v1, "entries":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v3, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 606
    .local v2, "adminEnforcedQuality":I
    nop

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v5, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 606
    invoke-static {v3, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 609
    .local v3, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_6

    aget-object v9, v5, v8

    .line 610
    .local v9, "lock":Lcom/android/settings/password/ScreenLockType;
    iget-object v10, v9, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    .line 611
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v0, v10}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 612
    .local v11, "pref":Landroid/support/v7/preference/Preference;
    instance-of v12, v11, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v12, :cond_5

    .line 613
    iget-object v12, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v12, v9}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v12

    .line 614
    .local v12, "visible":Z
    iget-object v13, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    move/from16 v14, p1

    invoke-virtual {v13, v9, v14}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v13

    .line 615
    .local v13, "enabled":Z
    iget-object v15, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 616
    invoke-virtual {v15, v9, v2}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockDisabledByAdmin(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v15

    .line 617
    .local v15, "disabledByAdmin":Z
    if-eqz p2, :cond_1

    .line 618
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    :goto_1
    move/from16 v12, v16

    .line 620
    :cond_1
    if-nez v12, :cond_2

    .line 621
    invoke-virtual {v1, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 622
    :cond_2
    if-eqz v15, :cond_3

    if-eqz v3, :cond_3

    .line 623
    move-object v7, v11

    check-cast v7, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v7, v3}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 624
    :cond_3
    if-nez v13, :cond_4

    .line 627
    move-object v7, v11

    check-cast v7, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 628
    const v7, 0x7f121239

    invoke-virtual {v11, v7}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 629
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 631
    :cond_4
    const/4 v7, 0x0

    move-object v7, v11

    check-cast v7, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .end local v9    # "lock":Lcom/android/settings/password/ScreenLockType;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "pref":Landroid/support/v7/preference/Preference;
    .end local v12    # "visible":Z
    .end local v13    # "enabled":Z
    .end local v15    # "disabledByAdmin":Z
    goto :goto_2

    .line 609
    :cond_5
    move/from16 v14, p1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 635
    :cond_6
    move/from16 v14, p1

    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z
    .param p4, "unlockMethodIntent"    # Landroid/content/Intent;

    .line 695
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getFindSensorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 887
    const v0, 0x7f12070e

    return v0
.end method

.method protected getLockManagedPasswordIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->createIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(III)Landroid/content/Intent;
    .locals 3
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .line 664
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;-><init>(Landroid/content/Context;)V

    .line 666
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordQuality(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    .line 667
    invoke-virtual {v0, p2, p3}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordLengthRange(II)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 668
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 669
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    .line 670
    .local v0, "builder":Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v1, :cond_0

    .line 671
    iget-wide v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setChallenge(J)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPassword(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 676
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 3

    .line 680
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 682
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 683
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    .line 684
    .local v0, "builder":Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v1, :cond_0

    .line 685
    iget-wide v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setChallenge(J)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setPattern(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 690
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 226
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 412
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 414
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    .line 415
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 417
    if-eqz p3, :cond_0

    .line 418
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 421
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 422
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_c

    .line 423
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 425
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 424
    invoke-direct {p0, v1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_3

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_3

    .line 430
    :cond_2
    const/16 v3, 0x66

    if-eq p1, v3, :cond_8

    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    goto :goto_1

    .line 445
    :cond_3
    const/16 v3, 0x67

    if-ne p1, v3, :cond_5

    if-ne p2, v1, :cond_5

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getFindSensorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_4

    .line 449
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 452
    :cond_4
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 455
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_3

    :cond_5
    const/16 v3, 0x68

    if-ne p1, v3, :cond_7

    .line 456
    if-eqz p2, :cond_c

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 458
    if-ne p2, v1, :cond_6

    goto :goto_0

    .line 457
    :cond_6
    move v2, p2

    :goto_0
    invoke-virtual {v0, v2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    .line 462
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    .line 432
    :cond_8
    :goto_1
    if-nez p2, :cond_b

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_9

    goto :goto_2

    .line 439
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "lockscreen.password_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 440
    .local v1, "quality":I
    if-eq v1, v2, :cond_a

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 444
    .end local v1    # "quality":I
    :cond_a
    goto :goto_3

    .line 433
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 465
    :cond_c
    :goto_3
    if-nez p1, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v0, :cond_d

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 468
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 231
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->bindFaceUnlockService()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "chooseLockAction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 237
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 238
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 239
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 240
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 242
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Landroid/app/ProgressDialog;

    .line 244
    const-string v1, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 246
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "confirm_credentials"

    .line 250
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 251
    .local v1, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    if-eqz v4, :cond_2

    .line 252
    xor-int/lit8 v4, v1, 0x1

    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "password"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, ":settings:hide_drawer"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "has_challenge"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "for_fingerprint"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "for_cred_req_boot"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    .line 268
    if-eqz p1, :cond_4

    .line 269
    const-string v4, "password_confirmed"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 270
    const-string v4, "waiting_for_confirmation"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 271
    const-string v4, "encrypt_requested_quality"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 272
    const-string v4, "encrypt_requested_disabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 274
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 275
    const-string v4, "password"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 284
    :cond_4
    nop

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 284
    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v4

    .line 288
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iput v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 289
    new-instance v4, Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v4, v5, v6}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 290
    const-string v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 292
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f120878

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 296
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 298
    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v4, :cond_7

    .line 299
    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 300
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v3, :cond_d

    .line 301
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_7

    .line 304
    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v4, :cond_d

    .line 305
    new-instance v4, Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 307
    .local v4, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    nop

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 309
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v3

    goto :goto_4

    :cond_8
    move v5, v2

    .line 310
    .local v5, "managedProfileWithUnifiedLock":Z
    :goto_4
    if-eqz v5, :cond_9

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v6, :cond_9

    move v6, v3

    goto :goto_5

    :cond_9
    move v6, v2

    .line 311
    .local v6, "skipConfirmation":Z
    :goto_5
    if-nez v6, :cond_b

    const/16 v7, 0x64

    const v8, 0x7f12123f

    .line 313
    invoke-virtual {p0, v8}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 312
    invoke-virtual {v4, v7, v8, v3, v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_6

    .line 317
    :cond_a
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .end local v4    # "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    .end local v5    # "managedProfileWithUnifiedLock":Z
    .end local v6    # "skipConfirmation":Z
    goto :goto_7

    .line 314
    .restart local v4    # "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    .restart local v5    # "managedProfileWithUnifiedLock":Z
    .restart local v6    # "skipConfirmation":Z
    :cond_b
    :goto_6
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 315
    if-eqz p1, :cond_c

    move v2, v3

    nop

    :cond_c
    invoke-direct {p0, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 320
    .end local v4    # "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    .end local v5    # "managedProfileWithUnifiedLock":Z
    .end local v6    # "skipConfirmation":Z
    :cond_d
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addHeaderView()V

    .line 321
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 878
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 879
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 881
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->unbindFaceUnlockService()V

    .line 883
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 335
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 341
    return v2

    .line 342
    :cond_0
    const-string v1, "unlock_skip_fingerprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v1, "chooseLockGenericIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string v3, "confirm_credentials"

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 350
    const-string v3, "password"

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    :cond_1
    const/16 v3, 0x68

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    return v2

    .line 356
    .end local v1    # "chooseLockGenericIntent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 476
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 478
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "password"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method

.method updateUnlockMethodAndFinish(IZZ)V
    .locals 4
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z
    .param p3, "chooseLockSkipped"    # Z

    .line 713
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_4

    .line 717
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result p1

    .line 718
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object v0

    .line 719
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 720
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "show_options_button"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    const-string v1, "show_options_button"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 723
    :cond_0
    const-string v1, "choose_lock_generic_extras"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 724
    nop

    .line 725
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v1, :cond_1

    .line 726
    const/16 v1, 0x67

    goto :goto_0

    .line 727
    :cond_1
    const/16 v1, 0x66

    .line 724
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 728
    return-void

    .line 731
    :cond_2
    if-nez p1, :cond_3

    .line 732
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    .line 733
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 735
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    goto :goto_1

    .line 737
    :cond_3
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 739
    :goto_1
    return-void

    .line 714
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
