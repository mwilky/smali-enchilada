.class Lcom/android/server/am/AppStateBroadcaster;
.super Ljava/lang/Object;
.source "AppStateBroadcaster.java"


# static fields
.field private static final APP_STATE_EXITED:Ljava/lang/String; = "EXITED"

.field private static final APP_STATE_FOCUS_GAIN:Ljava/lang/String; = "FOCUS_GAIN"

.field private static final APP_STATE_FOCUS_LOSS:Ljava/lang/String; = "FOCUS_LOSS"

.field private static final APP_STATE_START:Ljava/lang/String; = "START"

.field private static final APP_TERM_REASONS:[Ljava/lang/String;

.field private static final APP_TERM_REASON_ANR:Ljava/lang/String; = "ANR"

.field private static final APP_TERM_REASON_CRASH:Ljava/lang/String; = "CRASH"

.field private static final APP_TERM_REASON_SYSTEM_HALT:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field private static final APP_TERM_REASON_USER_HALT:Ljava/lang/String; = "USER_HALTED"

.field private static final DEBUG:Z

.field private static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APP_STATE:Ljava/lang/String; = "ApplicationState"

.field private static final EXTRA_APP_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field private static final INTENT_NAME:Ljava/lang/String; = "oneplus.app.appstate"

.field private static final PERMISSION_NAME:Ljava/lang/String; = "oneplus.com.permission"

.field public static final STOP_REASON_ANR:I = 0x2

.field public static final STOP_REASON_CRASH:I = 0x3

.field public static final STOP_REASON_NORMAL_SYSTEM_HALT:I = 0x1

.field public static final STOP_REASON_USER_HALT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppStateBroadcaster"

.field private static sCurrentFocusedPackageName:Ljava/lang/String;

.field private static final sKnownRunningPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sCurrentFocusedPackageName:Ljava/lang/String;

    const-string v0, "USER_HALTED"

    const-string v1, "NORMAL_SYSTEM_HALT"

    const-string v2, "ANR"

    const-string v3, "CRASH"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcastAppExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oneplus.app.appstate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    const-string v2, "EXITED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationTermReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "oneplus.com.permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "EXITED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oneplus.app.appstate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "oneplus.com.permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static packageRunning(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "START"

    invoke-static {p0, p1, v1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static packageStopped(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sCurrentFocusedPackageName:Ljava/lang/String;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sCurrentFocusedPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "FOCUS_LOSS"

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AppStateBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendApplicationFocusLoss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->sCurrentFocusedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "FOCUS_GAIN"

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "AppStateBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendApplicationFocusGain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sput-object p1, Lcom/android/server/am/AppStateBroadcaster;->sCurrentFocusedPackageName:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static sendApplicationFocusLoss(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "FOCUS_LOSS"

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static sendApplicationStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AppStateBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendApplicationStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcaster;->packageRunning(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AppStateBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendApplicationStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_4

    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->packageStopped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
