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

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mPasswordConfirmed:Z

    .line 81
    new-instance v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    .line 96
    new-instance v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->refreshUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->gotoAddFaceData()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->removeFaceData()V

    return-void
.end method

.method private bindFaceUnlockService()V
    .locals 4

    .line 125
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 128
    const-string v1, "OPFaceUnlockSettings"

    const-string v2, "Start bind oneplus face unlockservice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OPFaceUnlockSettings"

    const-string v2, "Bind oneplus face unlockservice exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private disableAutoUnlockSettings(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 330
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 333
    :cond_0
    return-void
.end method

.method private disableFaceUnlockAssistiveLightingSettings(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 336
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public static getSetupFaceUnlockIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceUnlockActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v1, "FaceUnlockActivity.StartMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v1, "FaceUnlockActivity.SkipFingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v1, "FaceUnlockActivity.SkipIntroduction"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    return-object v0
.end method

.method private gotoAddFaceData()V
    .locals 5

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 262
    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceUnlockActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v1, "FaceUnlockActivity.StartMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OPFaceUnlockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method public static gotoFaceUnlockSettings(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 374
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$OPFaceUnlockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OPFaceUnlockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 140
    const-string v0, "key_faceunlock_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 141
    const-string v0, "key_faceunlock_management_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockManagerCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 142
    const-string v0, "key_add_face"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    const-string v0, "key_remove_face"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    const-string v0, "key_face_unlock_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    const-string v0, "key_auto_face_unlock_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    const-string v0, "key_face_unlock_assistive_lighting"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    return-void
.end method

.method private isAutoFaceUnlockEnabled()Z
    .locals 3

    .line 353
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 354
    .local v0, "enabled":I
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

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 234
    return v1

    .line 236
    :cond_0
    const/4 v0, 0x2

    .line 238
    .local v0, "addState":I
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v2, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v2

    move v0, v2

    .line 239
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

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "OPFaceUnlockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start check face State RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isFaceUnlockAssistiveLightingEnabled()Z
    .locals 3

    .line 362
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 363
    .local v0, "enabled":I
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

    .line 342
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 343
    .local v0, "enabled":I
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
    .param p1, "requestCode"    # I

    .line 382
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v8

    .line 383
    .local v8, "challenge":J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 385
    .local v1, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    nop

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120d7f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    const-string v2, "com.android.settings"

    const-class v3, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string v2, "hide_disabled_prefs"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    const-string v2, "challenge"

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 395
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 397
    :cond_0
    return-void
.end method

.method private refreshUI()V
    .locals 2

    .line 163
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableAutoUnlockSettings(Z)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableFaceUnlockAssistiveLightingSettings(Z)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceUnlockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isAutoFaceUnlockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceUnlockAssistiveLightingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 184
    :cond_2
    return-void
.end method

.method private removeFaceData()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->removeFace(I)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "OPFaceUnlockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start remove face RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private switchAutoFaceUnlock(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 358
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    return-void
.end method

.method private switchFaceUnlock(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    invoke-direct {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableAutoUnlockSettings(Z)V

    .line 349
    invoke-direct {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableFaceUnlockAssistiveLightingSettings(Z)V

    .line 350
    return-void
.end method

.method private switchFaceUnlockAssistiveLighting(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 367
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    return-void
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    .line 135
    const-string v0, "OPFaceUnlockSettings"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 137
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 412
    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 401
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

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->finish()V

    .line 406
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 407
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f16007c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->addPreferencesFromResource(I)V

    .line 118
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->initView()V

    .line 119
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->bindFaceUnlockService()V

    .line 120
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->launchChooseOrConfirmLock(I)V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->unbindFaceUnlockService()V

    .line 195
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 190
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "key":Ljava/lang/String;
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 218
    .local v1, "newValue":Z
    const-string v2, "key_face_unlock_enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 219
    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchFaceUnlock(Z)V

    .line 220
    return v3

    .line 221
    :cond_0
    const-string v2, "key_auto_face_unlock_enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchAutoFaceUnlock(Z)V

    .line 223
    return v3

    .line 224
    :cond_1
    const-string v2, "key_face_unlock_assistive_lighting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchFaceUnlockAssistiveLighting(Z)V

    .line 226
    return v3

    .line 228
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 199
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "key":Ljava/lang/String;
    const-string v1, "key_add_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showDisableAospFaceUnlockDialog()V

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->gotoAddFaceData()V

    .line 206
    :goto_0
    return v2

    .line 207
    :cond_1
    const-string v1, "key_remove_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showRemoveFaceDataDialog()V

    .line 209
    return v2

    .line 211
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 0

    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 159
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->refreshUI()V

    .line 160
    return-void
.end method

.method public showDisableAospFaceUnlockDialog()V
    .locals 3

    .line 284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    const v1, 0x7f120ace

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$4;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 287
    const v2, 0x7f120f85

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 296
    const v2, 0x7f12038a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 303
    .local v0, "disableDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 304
    return-void
.end method

.method public showRemoveFaceDataDialog()V
    .locals 3

    .line 307
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    const v1, 0x7f120afa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    const v1, 0x7f120af9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 311
    const v2, 0x7f120a37

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 319
    const v2, 0x7f12038a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveDialog:Landroid/app/AlertDialog;

    .line 326
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 327
    return-void
.end method
