.class public Lcom/oneplus/settings/notification/OPRingPattern;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPRingPattern.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPRingPattern"


# instance fields
.field private final mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

.field private mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$2;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPRingPattern$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPRingPattern;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;-><init>(Lcom/oneplus/settings/notification/OPRingPattern;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPRingPattern;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->updateVibrateWhenRinging()V

    return-void
.end method

.method private initVibrateWhenRinging()V
    .locals 2

    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingPattern;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    const-string v0, "OPRingPattern"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVoiceCapable:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->updateVibrateWhenRinging()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/oneplus/settings/notification/OPRingPattern$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPRingPattern$1;-><init>(Lcom/oneplus/settings/notification/OPRingPattern;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160091

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingPattern;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVoiceCapable:Z

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->initVibrateWhenRinging()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
