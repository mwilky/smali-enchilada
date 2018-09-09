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
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/android/server/am/EmbryoHelper;->getInstance()Lcom/android/server/am/EmbryoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->mHelper:Lcom/android/server/am/EmbryoHelper;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    .line 43
    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/EmbryoSupervisor;->waitingforFork:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/server/am/EmbryoSupervisor;->doAbortion:Z

    .line 46
    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->startTime:J

    .line 48
    iput-boolean v2, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable:Z

    .line 54
    iput-object p1, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    .line 56
    iput v2, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    .line 57
    iput p2, p0, Lcom/android/server/am/EmbryoSupervisor;->userId:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/EmbryoSupervisor;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/EmbryoSupervisor;

    .line 34
    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/am/EmbryoSupervisor;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/EmbryoSupervisor;

    .line 34
    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/am/EmbryoSupervisor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/EmbryoSupervisor;

    .line 34
    iget v0, p0, Lcom/android/server/am/EmbryoSupervisor;->rank:I

    return v0
.end method

.method private updateSelf()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->mHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v1, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/EmbryoHelper;->checkIfPackageIsLaunchable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable:Z

    .line 62
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->mHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v1, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/EmbryoSupervisor;->userId:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/EmbryoHelper;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->info:Landroid/content/pm/ApplicationInfo;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    .line 65
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/server/am/Embryo;)V
    .locals 2
    .param p1, "newbie"    # Lcom/android/server/am/Embryo;

    .line 130
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "EmbryoSupervisor"

    const-string/jumbo v1, "set embryo twice?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Embryo;->unlink(Landroid/os/IBinder$DeathRecipient;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    .line 139
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Embryo;->link(Landroid/os/IBinder$DeathRecipient;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    .line 141
    return-void
.end method

.method public binderDied()V
    .locals 3

    .line 156
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

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Embryo;->unlink(Landroid/os/IBinder$DeathRecipient;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    .line 162
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 1

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    .line 230
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Embryo;->unlink(Landroid/os/IBinder$DeathRecipient;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public detach()Lcom/android/server/am/Embryo;
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 145
    return-object v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    .line 148
    .local v0, "baby":Lcom/android/server/am/Embryo;
    iget-object v2, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    invoke-virtual {v2, p0}, Lcom/android/server/am/Embryo;->unlink(Landroid/os/IBinder$DeathRecipient;)V

    .line 149
    iput-object v1, p0, Lcom/android/server/am/EmbryoSupervisor;->embryo:Lcom/android/server/am/Embryo;

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    .line 151
    return-object v0
.end method

.method public dump()V
    .locals 4

    .line 188
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

    .line 189
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/am/Uterus$EmbryoMemory;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "em"    # Lcom/android/server/am/Uterus$EmbryoMemory;

    .line 241
    iget v0, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 245
    .local v0, "mi":Landroid/os/Debug$MemoryInfo;
    iget v1, p0, Lcom/android/server/am/EmbryoSupervisor;->pid:I

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    .line 246
    invoke-virtual {p2, v0}, Lcom/android/server/am/Uterus$EmbryoMemory;->update(Landroid/os/Debug$MemoryInfo;)V

    .line 248
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

    .line 249
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public getCount()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    return-wide v0
.end method

.method public getForegroundTime()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    return-wide v0
.end method

.method public getInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/server/am/EmbryoSupervisor;->updateSelf()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->info:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/server/am/EmbryoSupervisor;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/server/am/EmbryoSupervisor;->rank:I

    return v0
.end method

.method public hasEmbryo()Z
    .locals 1

    .line 166
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

    .line 68
    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/android/server/am/EmbryoSupervisor;->updateSelf()V

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable:Z

    return v0
.end method

.method public isWaitingForFork()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->waitingforFork:Z

    return v0
.end method

.method public match(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 104
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

    .line 100
    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->doAbortion:Z

    return v0
.end method

.method public restoreForegroundTime(J)V
    .locals 0
    .param p1, "dur"    # J

    .line 126
    iput-wide p1, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    .line 127
    return-void
.end method

.method public setAbortion()V
    .locals 1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->doAbortion:Z

    .line 97
    return-void
.end method

.method public setRank(I)V
    .locals 0
    .param p1, "i"    # I

    .line 184
    iput p1, p0, Lcom/android/server/am/EmbryoSupervisor;->rank:I

    .line 185
    return-void
.end method

.method public setSelfUpdate()V
    .locals 1

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->needUpdateSelf:Z

    .line 82
    return-void
.end method

.method public setWaitingForFork(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/server/am/EmbryoSupervisor;->waitingforFork:Z

    .line 90
    iget-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->waitingforFork:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoSupervisor;->doAbortion:Z

    .line 93
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->startTime:J

    .line 176
    iget-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/EmbryoSupervisor;->launchCount:J

    .line 177
    return-void
.end method

.method public stop()V
    .locals 4

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/EmbryoSupervisor;->startTime:J

    sub-long/2addr v0, v2

    .line 171
    .local v0, "diff":J
    iget-wide v2, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/EmbryoSupervisor;->foregroundTime:J

    .line 172
    return-void
.end method

.method public updateInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 110
    iput-object p1, p0, Lcom/android/server/am/EmbryoSupervisor;->info:Landroid/content/pm/ApplicationInfo;

    .line 111
    return-void
.end method
