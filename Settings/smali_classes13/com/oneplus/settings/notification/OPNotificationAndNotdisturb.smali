.class public Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNotificationAndNotdisturb.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;
    }
.end annotation


# static fields
.field private static final KEY_DO_NOT_DISTURB_SETTINGS:Ljava/lang/String; = "do_not_disturb_settings"

.field private static final KEY_MODE_SETTINGS_CATEGORY:Ljava/lang/String; = "mode_settings_category"

.field private static final KEY_RING_SETTINGS:Ljava/lang/String; = "ring_settings"

.field private static final KEY_SILENT_SETTINGS:Ljava/lang/String; = "silent_settings"

.field private static final KEY_VIBRATION_MODE:Ljava/lang/String; = "vibration_settings"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static isSupportSocTriState:Z


# instance fields
.field private mDonotdisturbSetings:Landroid/support/v7/preference/Preference;

.field private mRingSettings:Landroid/support/v7/preference/Preference;

.field private mSilentSettings:Landroid/support/v7/preference/Preference;

.field private mVibrationSettings:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160089

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->addPreferencesFromResource(I)V

    const-string v0, "ring_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mRingSettings:Landroid/support/v7/preference/Preference;

    const-string v0, "silent_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mSilentSettings:Landroid/support/v7/preference/Preference;

    const-string v0, "vibration_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mVibrationSettings:Landroid/support/v7/preference/Preference;

    const-string v0, "do_not_disturb_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mDonotdisturbSetings:Landroid/support/v7/preference/Preference;

    const-string v0, "mode_settings_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ring_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mDonotdisturbSetings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mVibrationSettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    return-void
.end method
