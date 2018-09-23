.class public Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppForkedProc"
.end annotation


# instance fields
.field public IsAbn:Z

.field public curCpuTimeBgMonitor:J

.field public flags:I

.field private highCpuUsedCount:I

.field public lastCpuTimeBgMonitor:[J

.field public name:Ljava/lang/String;

.field public final pid:I

.field public pkgName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->IsAbn:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    const/4 v1, 0x4

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    int-to-long v3, p4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1100()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]err when get info of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] AppForkedProc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " can\'t find pkgName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public addHighCpuUsedCount()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    return-void
.end method

.method public addTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    return-void
.end method

.method public getHighCpuUsedCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    return v0
.end method

.method public isAbn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->IsAbn:Z

    return v0
.end method

.method public reduceHighCpuUsedCount()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    return-void
.end method

.method public resetAbn()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->IsAbn:Z

    return-void
.end method

.method public resetHighCpuUsedCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    return-void
.end method

.method public setAbn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->IsAbn:Z

    return-void
.end method
