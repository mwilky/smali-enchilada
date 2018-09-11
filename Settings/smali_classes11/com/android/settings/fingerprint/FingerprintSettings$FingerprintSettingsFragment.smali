.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
    }
.end annotation


# static fields
.field private static final ADD_FINGERPRINT_REQUEST:I = 0xa

.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final CONFIRM_REQUEST:I = 0x65

.field protected static final DEBUG:Z = true

.field private static final KEY_CUSTOM_TOGGLE_ONE:Ljava/lang/String; = "key_custom_toggle_one"

.field private static final KEY_CUSTOM_TOGGLE_TWO:Ljava/lang/String; = "key_custom_toggle_two"

.field private static final KEY_FINGERPRINT_ADD:Ljava/lang/String; = "key_fingerprint_add"

.field private static final KEY_FINGERPRINT_ENABLE_KEYGUARD_TOGGLE:Ljava/lang/String; = "fingerprint_enable_keyguard_toggle"

.field private static final KEY_FINGERPRINT_ITEM_PREFIX:Ljava/lang/String; = "key_fingerprint_item"

.field private static final KEY_LAUNCHED_CONFIRM:Ljava/lang/String; = "launched_confirm"

.field private static final MSG_FINGER_AUTH_ERROR:I = 0x3eb

.field private static final MSG_FINGER_AUTH_FAIL:I = 0x3ea

.field private static final MSG_FINGER_AUTH_HELP:I = 0x3ec

.field private static final MSG_FINGER_AUTH_SUCCESS:I = 0x3e9

.field private static final MSG_REFRESH_FINGERPRINT_TEMPLATES:I = 0x3e8

.field private static final RESET_HIGHLIGHT_DELAY_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "FingerprintSettings"

.field private static final TAG_AUTHENTICATE_SIDECAR:Ljava/lang/String; = "authenticate_sidecar"

.field private static final TAG_REMOVAL_SIDECAR:Ljava/lang/String; = "removal_sidecar"


# instance fields
.field private final KEY_AOD_ENABLED:Ljava/lang/String;

.field private final KEY_NOTIFICATION_WAKE_ENABLED:Ljava/lang/String;

.field mAuthenticateListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

.field private mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

.field private mCurrentUser:I

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintsRenaming:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mLaunchedConfirm:Z

.field mRemovalListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

.field private mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 147
    const-string v0, "prox_wake_enabled"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->KEY_AOD_ENABLED:Ljava/lang/String;

    .line 148
    const-string v0, "notification_wake_enabled"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->KEY_NOTIFICATION_WAKE_ENABLED:Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    .line 205
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    .line 230
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 758
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 134
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 134
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 134
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 134
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 134
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # I

    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method private addCustomToggleCategory(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 7
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 458
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, "customToggleCategory":Landroid/support/v7/preference/PreferenceCategory;
    const v1, 0x7f120c91

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 461
    new-instance v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 462
    .local v1, "customToggleOne":Landroid/support/v14/preference/SwitchPreference;
    const-string v2, "key_custom_toggle_one"

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 463
    const v2, 0x7f120c92

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "prox_wake_enabled"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 465
    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 467
    new-instance v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 468
    .local v2, "customToggleTwo":Landroid/support/v14/preference/SwitchPreference;
    const-string v4, "key_custom_toggle_two"

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 469
    const v4, 0x7f120c93

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/16 v6, 0xb

    invoke-static {v4, v6}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 472
    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 474
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 475
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 476
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 477
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 421
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 422
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 424
    .local v1, "fingerprintCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 425
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    .line 426
    .local v4, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;)V

    .line 428
    .local v5, "pref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 431
    invoke-virtual {v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    .line 432
    const v6, 0x7f080197

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setIcon(I)V

    .line 433
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->isRemovingFingerprint(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    invoke-virtual {v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setEnabled(Z)V

    .line 436
    :cond_0
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 437
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 439
    :cond_1
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 440
    invoke-virtual {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 424
    .end local v4    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v5    # "pref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 443
    .local v2, "addPreference":Landroid/support/v7/preference/Preference;
    const-string v3, "key_fingerprint_add"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 444
    const v3, 0x7f120657

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 445
    const v3, 0x7f0801c8

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 446
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 447
    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 450
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addCustomToggleCategory(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 454
    :cond_3
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 410
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 413
    :cond_0
    const v1, 0x7f1600b5

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addPreferencesFromResource(I)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 415
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 417
    return-object v0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 693
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 694
    const v1, 0x7f08042b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightFingerprintItem(I)V
    .locals 10
    .param p1, "fpId"    # I

    .line 701
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "prefName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 703
    .local v1, "fpref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 704
    .local v2, "highlight":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v3

    .line 706
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 707
    .local v4, "centerX":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 708
    .local v5, "centerY":I
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 709
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 710
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    .line 711
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    .line 712
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "centerX":I
    .end local v5    # "centerY":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .param p2, "view"    # Landroid/view/View;

    .line 375
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 376
    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 12

    .line 722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 723
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v10

    .line 724
    .local v10, "challenge":J
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 725
    .local v2, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    nop

    .line 726
    const v1, 0x7f120f99

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 725
    const/16 v3, 0x65

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    const-string v1, "com.android.settings"

    const-class v3, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v1, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    const-string v1, "hide_disabled_prefs"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 733
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    const-string v1, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string v1, "challenge"

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 736
    const-string v1, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 739
    :cond_0
    return-void
.end method

.method private needDisableDoze()Z
    .locals 7

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 482
    .local v0, "singleTap":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prox_wake_enabled"

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 483
    .local v3, "aodEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_wake_enabled"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v1, v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 484
    .local v4, "notificationWakeEnabled":Z
    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 752
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 756
    return-void
.end method

.method private retryFingerprint()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 294
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-eqz v0, :cond_1

    .line 300
    return-void

    .line 302
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 307
    return-void

    .line 295
    :cond_2
    :goto_0
    return-void
.end method

.method private showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 9
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .line 594
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;-><init>()V

    .line 595
    .local v0, "renameDialog":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 596
    .local v1, "args":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    .line 598
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 599
    .local v2, "f":Landroid/hardware/fingerprint/Fingerprint;
    const-string v3, "fingerprint"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 600
    .end local v2    # "f":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_0

    .line 601
    :cond_0
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 603
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 604
    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 605
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private updateAddPreference()V
    .locals 9

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 494
    .local v0, "max":I
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 497
    .local v1, "tooMany":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v4

    .line 498
    .local v4, "removalInProgress":Z
    if-eqz v1, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120656

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v5, ""

    .line 500
    .local v5, "maxSummary":Ljava/lang/CharSequence;
    :goto_1
    const-string v6, "key_fingerprint_add"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 501
    .local v6, "addPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v6, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v6, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 503
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 522
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 523
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 524
    return-void
.end method


# virtual methods
.method deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->startRemove(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 744
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 746
    .local v1, "prefToRemove":Landroid/support/v7/preference/Preference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 747
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 748
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    .line 649
    const v0, 0x7f120717

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 311
    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "errMsgId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .line 266
    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    goto :goto_0

    .line 270
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 272
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 285
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 286
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 289
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 290
    return-void

    .line 268
    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 654
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 655
    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 666
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 668
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 669
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .end local v1    # "activity":Landroid/app/Activity;
    goto :goto_1

    .line 657
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 658
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 660
    :cond_2
    if-eqz p3, :cond_3

    .line 661
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 673
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v0, :cond_4

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 677
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 316
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 320
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    .line 322
    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 324
    nop

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "authenticate_sidecar"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    .line 326
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    const-string v3, "authenticate_sidecar"

    .line 329
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 333
    nop

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "removal_sidecar"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    .line 335
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    if-nez v1, :cond_1

    .line 336
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    const-string v3, "removal_sidecar"

    .line 338
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 341
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 344
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 345
    .local v1, "renameDialog":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;
    if-eqz v1, :cond_2

    .line 346
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 349
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 353
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 354
    const-string v3, "mFingerprintsRenaming"

    .line 355
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 356
    const-string v3, "hw_auth_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 358
    const-string v3, "launched_confirm"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.USER_ID"

    .line 362
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 361
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 365
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const/4 v4, 0x1

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez v3, :cond_4

    .line 366
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 367
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    .line 370
    :cond_4
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v3}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v3

    .line 371
    .local v3, "pref":Lcom/android/settingslib/widget/FooterPreference;
    const/16 v5, 0x20

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-static {v0, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 373
    .local v5, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    new-instance v6, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v7, "admin_details"

    new-instance v8, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$yE_lJ-MtxexMYsEgD8_Zrh5Z2iY;

    invoke-direct {v8, v0, v5}, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$yE_lJ-MtxexMYsEgD8_Zrh5Z2iY;-><init>(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-direct {v6, v7, v8}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 377
    .local v6, "adminLinkInfo":Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    nop

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHelpResource()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 377
    invoke-static {v0, v7, v8}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 379
    .local v7, "helpIntent":Landroid/content/Intent;
    new-instance v8, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v9, "url"

    invoke-direct {v8, v0, v9, v7}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 382
    .local v8, "linkInfo":Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    if-eqz v5, :cond_5

    .line 384
    const v9, 0x7f120f78

    goto :goto_0

    .line 385
    :cond_5
    const v9, 0x7f120f77

    .line 382
    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    aput-object v8, v10, v2

    aput-object v6, v10, v4

    invoke-static {v9, v10}, Lcom/android/settings/utils/AnnotationSpan;->linkifyRemoveFingerprintUrl(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    return-void
.end method

.method public onDeleteClick(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)V
    .locals 7
    .param p1, "p"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 568
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 569
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 570
    .local v0, "hasMultipleFingerprint":Z
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    .line 572
    .local v2, "fp":Landroid/hardware/fingerprint/Fingerprint;
    if-eqz v0, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    const-string v1, "FingerprintSettings"

    const-string v3, "Fingerprint delete in progress, skipping"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void

    .line 577
    :cond_1
    invoke-static {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->newInstance(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    move-result-object v1

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_2
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-direct {v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;-><init>()V

    .line 581
    .local v3, "lastDeleteDialog":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;
    nop

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    .line 583
    .local v4, "isProfileChallengeUser":Z
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 584
    .local v5, "args":Landroid/os/Bundle;
    const-string v6, "fingerprint"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 585
    const-string v6, "isProfileChallengeUser"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    invoke-virtual {v3, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 587
    invoke-virtual {v3, p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v6, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    .line 589
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 588
    invoke-virtual {v3, v1, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 591
    .end local v3    # "lastDeleteDialog":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;
    .end local v4    # "isProfileChallengeUser":Z
    .end local v5    # "args":Landroid/os/Bundle;
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 681
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 684
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 685
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 528
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 529
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    .line 537
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .line 611
    const/4 v0, 0x1

    .line 612
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "key":Ljava/lang/String;
    const-string v2, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 615
    :cond_0
    const-string v2, "key_custom_toggle_one"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 617
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 618
    .local v2, "value":Z
    const-string v5, "FingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prox_wake_enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz v2, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "prox_wake_enabled"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "doze_enabled"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "prox_wake_enabled"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 624
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needDisableDoze()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_enabled"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 628
    .end local v2    # "value":Z
    :cond_2
    :goto_0
    goto :goto_2

    :cond_3
    const-string v2, "key_custom_toggle_two"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 630
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 631
    .restart local v2    # "value":Z
    const-string v5, "FingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "single_tab_enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/16 v5, 0xb

    if-eqz v2, :cond_4

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "doze_enabled"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 636
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 637
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needDisableDoze()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_enabled"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mCurrentUser:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 641
    .end local v2    # "value":Z
    :cond_5
    :goto_1
    goto :goto_2

    .line 642
    :cond_6
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :goto_2
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 549
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "key":Ljava/lang/String;
    const-string v1, "key_fingerprint_add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-class v3, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 553
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 552
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    const-string v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 556
    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f010029

    const v4, 0x7f010028

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 558
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v1, :cond_1

    .line 559
    move-object v1, p1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 560
    .local v1, "fpref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    .line 561
    .local v2, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 563
    .end local v1    # "fpref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    .end local v2    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .line 511
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 515
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 516
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 519
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 541
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 543
    const-string v0, "launched_confirm"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    const-string v0, "mFingerprintsRenaming"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 545
    return-void
.end method

.method protected removeFingerprintPreference(I)V
    .locals 5
    .param p1, "fingerprintId"    # I

    .line 391
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 393
    .local v1, "prefToRemove":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 395
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove preference with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_0
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find preference to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    :goto_0
    return-void
.end method
