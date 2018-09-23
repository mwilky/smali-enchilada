.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field static final KEY_LOCKSCREEN:Ljava/lang/String; = "lock_screen_notifications"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LOCKSCREEN_WORK_PROFILE:Ljava/lang/String; = "lock_screen_notifications_profile"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LOCKSCREEN_WORK_PROFILE_HEADER:Ljava/lang/String; = "lock_screen_notifications_profile_header"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_NOTI_DEFAULT_RINGTONE:Ljava/lang/String; = "notification_default_ringtone"

.field static final KEY_SWIPE_DOWN:Ljava/lang/String; = "gesture_swipe_down_fingerprint_notifications"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_ZEN_MODE:Ljava/lang/String; = "zen_mode_notifications"

.field private static final REQUEST_CODE:I = 0xc8

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SELECTED_PREFERENCE_KEY:Ljava/lang/String; = "selected_preference"

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "ConfigNotiSettings"


# instance fields
.field private mRequestPreference:Lcom/android/settings/RingtonePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroid/app/Application;",
            "Landroid/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/PulseNotificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/PulseNotificationPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v3, "lock_screen_notifications"

    const-string v4, "lock_screen_notifications_profile_header"

    const-string v5, "lock_screen_notifications_profile"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    new-instance v3, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    new-instance v4, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v4}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-direct {v3, p0, v4, p2, p3}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/Application;Landroid/app/Fragment;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/notification/ConfigureNotificationSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/notification/ZenModePreferenceController;

    const-string v4, "zen_mode_notifications"

    invoke-direct {v3, p0, p1, v4}, Lcom/android/settings/notification/ZenModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {p1, v2, v1, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ConfigNotiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x151

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16002f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/RingtonePreference;

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    const-string v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
