.class final Lcom/android/server/am/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static ORIG_ENUMS:[I = null

.field private static PROTO_ENUMS:[I = null

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private mVrState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/VrController;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/VrController;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    new-instance v0, Lcom/android/server/am/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/VrController$1;-><init>(Lcom/android/server/am/VrController;)V

    iput-object v0, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    iput-object p1, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/VrController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/VrController;IIZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/am/VrController;I)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$276(Lcom/android/server/am/VrController;I)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/VrController;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z
    .locals 5

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    :goto_0
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez v2, :cond_3

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_2

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    :cond_3
    :goto_2
    return v1
.end method

.method private clearVrRenderThreadLocked(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    return-void
.end method

.method private enforceThreadInProcess(II)V
    .locals 2

    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VR thread does not belong to process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasPersistentVrFlagSet()Z
    .locals 1

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inVrMode()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const-string v0, "VrController"

    const-string v1, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .locals 6

    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v2

    return v2

    :cond_1
    :goto_0
    if-nez p3, :cond_4

    const-string v2, "caller is not the current top application."

    if-nez v0, :cond_2

    const-string/jumbo v2, "system not in VR mode."

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v2, "system in persistent VR mode."

    :cond_3
    :goto_1
    const-string v3, "VrController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set VR thread, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v2
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    :cond_1
    if-lez p1, :cond_2

    iput p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    :cond_2
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0
.end method


# virtual methods
.method public onSystemReady()V
    .locals 2

    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    :cond_0
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z
    .locals 11

    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    move v8, v1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v8, v1}, Lcom/android/server/am/VrController;->changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v9, v1

    :try_start_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v10, v1

    goto :goto_0

    :cond_2
    move v10, v2

    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    move v2, v8

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return v9

    :catchall_0
    move-exception v1

    move v5, v9

    move v2, v10

    goto :goto_1

    :catchall_1
    move-exception v1

    move v5, v9

    goto :goto_1

    :catchall_2
    move-exception v1

    :goto_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VrController"

    const-string v1, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string v0, "VrController"

    const-string v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VrController"

    const-string v1, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string v0, "VrController"

    const-string v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "VrController"

    const-string v2, "VR thread cannot be set when not in VR mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v0, p3, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    :goto_0
    if-lez p1, :cond_4

    move v1, p1

    nop

    :cond_4
    iput v1, p3, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .locals 1

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v5, p0, Lcom/android/server/am/VrController;->mVrState:I

    sget-object v6, Lcom/android/server/am/VrController;->ORIG_ENUMS:[I

    sget-object v7, Lcom/android/server/am/VrController;->PROTO_ENUMS:[I

    const-wide v3, 0x20e00000001L

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
