.class public abstract Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AbstractUptimePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field static final KEY_UPTIME:Ljava/lang/String; = "up_time"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mUptime:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->updateTimes()V

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;-><init>(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateTimes()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mUptime:Landroid/support/v7/preference/Preference;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "up_time"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mUptime:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->updateTimes()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "up_time"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
