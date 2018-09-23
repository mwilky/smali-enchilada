.class Lcom/android/server/am/EmbryoSupervisor;
.super Ljava/lang/Object;
.source "EmbryoSupervisor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/EmbryoSupervisor$RankComparator;,
        Lcom/android/server/am/EmbryoSupervisor$LowToHighComparator;,
        Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "EmbryoSupervisor"


# instance fields
.field private doAbortion:Z

.field private embryo:Lcom/android/server/am/Embryo;

.field private foregroundTime:J

.field private info:Landroid/content/pm/ApplicationInfo;

.field private isLaunchable:Z

.field private launchCount:J

.field private mHelper:Lcom/android/server/am/EmbryoHelper;

.field private needUpdateSelf:Z

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private rank:I

.field private startTime:J

.field private userId:I

.field private waitingforFork:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/am/EmbryoHelper;->getInstance()Lcom/android/server/am/EmbryoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->mHelper:Lcom/android/server/am/EmbryoHelper;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/EmbryoSupervisor;->waitingforFork:Z

    iput-boolean v2, p0, Lcom/android/server/am/EmbryoSupervisor;->doAbortion:Z

    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->startTime:J

    iput-boolean v2, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    iput-boolean v2, p0, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable:Z

    iput-object p1, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    iput v2, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    iput p2, p0, Lcom/android/server/am/EmbryoSupervisor;->userId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/EmbryoSupervisor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/am/EmbryoSupervisor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/am/EmbryoSupervisor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/EmbryoSupervisor;->rank:I

    return v0
.end method

.method private updateSelf()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->mHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v1, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/EmbryoHelper;->checkIfPackageIsLaunchable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable:Z

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->mHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v1, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/EmbryoSupervisor;->userId:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/EmbryoHelper;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/server/am/Embryo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    if-eqz v0, :cond_0

    const-string v0, "EmbryoSupervisor"

    const-string/jumbo v1, "set embryo twice?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Embryo;->unlink(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Embryo;->link(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    return-void
.end method

.method public binderDied()V
    .locals 3

    const-string v0, "EmbryoSupervisor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Embryo child process died. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Embryo;->unlink(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Embryo;->unlink(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public detach()Lcom/android/server/am/Embryo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    iget-object v2, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v2, p0}, Lcom/android/server/am/Embryo;->unlink(Landroid/os/IBinder$DeathRecipient;)V

    iput-object v1, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    return-object v0
.end method

.method public dump()V
    .locals 4

    const-string v0, "EmbryoSupervisor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/am/Uterus$EmbryoMemory;)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    iget v1, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/server/am/Uterus$EmbryoMemory;->update(Landroid/os/Debug$MemoryInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/EmbryoSupervisor;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    return-wide v0
.end method

.method public getForegroundTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    return-wide v0
.end method

.method public getInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/EmbryoSupervisor;->updateSelf()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->info:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/EmbryoSupervisor;->rank:I

    return v0
.end method

.method public hasEmbryo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLaunchable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/EmbryoSupervisor;->updateSelf()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable:Z

    return v0
.end method

.method public isWaitingForFork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->waitingforFork:Z

    return v0
.end method

.method public match(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v1, p0, Lcom/android/server/am/EmbryoSupervisor;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/android/server/am/EmbryoSupervisor;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needAbortion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->doAbortion:Z

    return v0
.end method

.method public restoreForegroundTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    return-void
.end method

.method public setAbortion()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->doAbortion:Z

    return-void
.end method

.method public setRank(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/EmbryoSupervisor;->rank:I

    return-void
.end method

.method public setSelfUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    return-void
.end method

.method public setWaitingForFork(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/EmbryoSupervisor;->waitingforFork:Z

    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->waitingforFork:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->doAbortion:Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->startTime:J

    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    return-void
.end method

.method public stop()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/EmbryoSupervisor;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    return-void
.end method

.method public updateInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/EmbryoSupervisor;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method
