.class public Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field protected static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x3

.field private static final GOTO_FACEUNLOCK_PAGE_REQUEST:I = 0x4

.field private static final KEY_ADD_FACE:Ljava/lang/String; = "key_add_face"

.field private static final KEY_AUTO_FACE_UNLOCK_ENABLE:Ljava/lang/String; = "key_auto_face_unlock_enable"

.field private static final KEY_FACEUNLOCK_CATEGORY:Ljava/lang/String; = "key_faceunlock_category"

.field private static final KEY_FACEUNLOCK_MANAGEMENT_CATEGORY:Ljava/lang/String; = "key_faceunlock_management_category"

.field private static final KEY_FACE_UNLOCK_ASSISTIVE_LIGHTING:Ljava/lang/String; = "key_face_unlock_assistive_lighting"

.field private static final KEY_FACE_UNLOCK_ENABLE:Ljava/lang/String; = "key_face_unlock_enable"

.field private static final KEY_REMOVE_FACE:Ljava/lang/String; = "key_remove_face"

.field private static final ONEPLUS_AUTO_FACE_UNLOCK_ENABLE:Ljava/lang/String; = "oneplus_auto_face_unlock_enable"

.field private static final ONEPLUS_FACE_UNLOCK_ASSISTIVE_LIGHTING_ENABLE:Ljava/lang/String; = "oneplus_face_unlock_assistive_lighting_enable"

.field private static final ONEPLUS_FACE_UNLOCK_ENABLE:Ljava/lang/String; = "oneplus_face_unlock_enable"

.field private static final ONEPLUS_FACE_UNLOCK_ENROLL_ACTION:Ljava/lang/String; = "com.oneplus.faceunlock.FaceUnlockActivity"

.field private static final REFRESH_UI:I = 0x64

.field private static final RESULT_FAIL:I = 0x1

.field private static final RESULT_NOT_FOUND:I = 0x2

.field private static final RESULT_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPFaceUnlockSettings"


# instance fields
.field private mAddFace:Landroid/support/v7/preference/Preference;

.field private mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

.field private mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

.field private mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;

.field private mFaceUnlockManagerCategory:Landroid/support/v7/preference/PreferenceCategory;

.field public mPasswordConfirmed:Z

.field private mRemoveDialog:Landroid/app/AlertDialog;

.field private mRemoveFace:Landroid/support/v7/preference/Preference;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mPasswordConfirmed:Z

    new-instance v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->refreshUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->gotoAddFaceData()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->removeFaceData()V

    return-void
.end method

.method private bindFaceUnlockService()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v1, "OPFaceUnlockSettings"

    const-string v2, "Start bind oneplus face unlockservice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OPFaceUnlockSettings"

    const-string v2, "Bind oneplus face unlockservice exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private disableAutoUnlockSettings(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private disableFaceUnlockAssistiveLightingSettings(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static getSetupFaceUnlockIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceUnlockActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FaceUnlockActivity.StartMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FaceUnlockActivity.SkipFingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FaceUnlockActivity.SkipIntroduction"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private gotoAddFaceData()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceUnlockActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FaceUnlockActivity.StartMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OPFaceUnlockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static gotoFaceUnlockSettings(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$OPFaceUnlockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OPFaceUnlockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 1

    const-string v0, "key_faceunlock_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "key_faceunlock_management_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockManagerCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "key_add_face"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "key_remove_face"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "key_face_unlock_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_auto_face_unlock_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_face_unlock_assistive_lighting"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private isAutoFaceUnlockEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isFaceAdded()Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v2, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v2

    move v0, v2

    const-string v2, "OPFaceUnlockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start check face state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OPFaceUnlockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start check face State RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isFaceUnlockAssistiveLightingEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isFaceUnlockEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private launchChooseOrConfirmLock(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120dbd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.settings"

    const-class v3, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "hide_disabled_prefs"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "challenge"

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private refreshUI()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableAutoUnlockSettings(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableFaceUnlockAssistiveLightingSettings(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceUnlockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isAutoFaceUnlockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceUnlockAssistiveLightingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private removeFaceData()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->removeFace(I)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OPFaceUnlockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start remove face RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private switchAutoFaceUnlock(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private switchFaceUnlock(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableAutoUnlockSettings(Z)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableFaceUnlockAssistiveLightingSettings(Z)V

    return-void
.end method

.method private switchFaceUnlockAssistiveLighting(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    const-string v0, "OPFaceUnlockSettings"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->finish()V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16007e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->initView()V

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->bindFaceUnlockService()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->launchChooseOrConfirmLock(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->unbindFaceUnlockService()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "key_face_unlock_enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchFaceUnlock(Z)V

    return v3

    :cond_0
    const-string v2, "key_auto_face_unlock_enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchAutoFaceUnlock(Z)V

    return v3

    :cond_1
    const-string v2, "key_face_unlock_assistive_lighting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchFaceUnlockAssistiveLighting(Z)V

    return v3

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_add_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showDisableAospFaceUnlockDialog()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->gotoAddFaceData()V

    :goto_0
    return v2

    :cond_1
    const-string v1, "key_remove_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showRemoveFaceDataDialog()V

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->refreshUI()V

    return-void
.end method

.method public showDisableAospFaceUnlockDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120ad9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$4;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    const v2, 0x7f120fc6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    const v2, 0x7f12038a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showRemoveFaceDataDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120b09

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120b08

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    const v2, 0x7f120a37

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    const v2, 0x7f12038a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
