.class public Lcom/android/settings/location/LocationEnabler;
.super Ljava/lang/Object;
.source "LocationEnabler.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;
    }
.end annotation


# static fields
.field static final INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LocationEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

.field mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationEnabler;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private isRestricted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string v1, "no_share_location"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string v2, "no_config_location"

    invoke-static {v1, v2, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method hasShareLocationRestriction(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string v1, "no_share_location"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isEnabled(I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isManagedProfileRestrictedByBase()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/location/LocationEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationEnabler$1;-><init>(Lcom/android/settings/location/LocationEnabler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/location/LocationEnabler;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void
.end method

.method refreshLocationMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "LocationEnabler"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LocationEnabler"

    const-string v2, "Location mode has been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;->onLocationModeChanged(IZ)V

    :cond_1
    return-void
.end method

.method setLocationEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "LocationEnabler"

    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LocationEnabler"

    const-string v3, "Restricted user, not setting location mode"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    invoke-interface {v1, v0, v2}, Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;->onLocationModeChanged(IZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, p1, v3, v2}, Lcom/android/settingslib/Utils;->updateLocationEnabled(Landroid/content/Context;ZII)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void
.end method

.method setLocationMode(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "LocationEnabler"

    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LocationEnabler"

    const-string v3, "Restricted user, not setting location mode"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    invoke-interface {v1, v0, v2}, Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;->onLocationModeChanged(IZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v0, p1, v3, v2}, Lcom/android/settingslib/Utils;->updateLocationMode(Landroid/content/Context;IIII)Z

    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void
.end method
