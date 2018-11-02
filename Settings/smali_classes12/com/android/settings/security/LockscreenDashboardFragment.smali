.class public Lcom/android/settings/security/LockscreenDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LockscreenDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# static fields
.field static final KEY_ADD_USER_FROM_LOCK_SCREEN:Ljava/lang/String; = "security_lockscreen_add_users_when_locked"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LOCK_SCREEN_NOTIFICATON:Ljava/lang/String; = "security_setting_lock_screen_notif"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LOCK_SCREEN_NOTIFICATON_WORK_PROFILE:Ljava/lang/String; = "security_setting_lock_screen_notif_work"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LOCK_SCREEN_NOTIFICATON_WORK_PROFILE_HEADER:Ljava/lang/String; = "security_setting_lock_screen_notif_work_header"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "LockscreenDashboardFragment"


# instance fields
.field private mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/security/LockscreenDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/security/LockscreenDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/security/LockscreenDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/security/LockscreenDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v3, "security_setting_lock_screen_notif"

    const-string v4, "security_setting_lock_screen_notif_work_header"

    const-string v5, "security_setting_lock_screen_notif_work"

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v4, "security_lockscreen_add_users_when_locked"

    invoke-direct {v3, p1, v4, v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {v3, p1, p0, v1}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    iget-object v3, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/security/LockdownButtonPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/security/LockdownButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f12071c

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LockscreenDashboardFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x372

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600b7

    return v0
.end method

.method public onOwnerInfoUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    :cond_0
    return-void
.end method
