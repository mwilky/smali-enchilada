.class public Landroid/app/servertransaction/PauseActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "PauseActivityItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PauseActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PauseActivityItem"


# instance fields
.field private mConfigChanges:I

.field private mDontReport:Z

.field private mFinished:Z

.field private mUserLeaving:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/PauseActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PauseActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PauseActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PauseActivityItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Landroid/app/servertransaction/PauseActivityItem;
    .locals 2

    const-class v0, Landroid/app/servertransaction/PauseActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PauseActivityItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/PauseActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/PauseActivityItem;-><init>()V

    move-object v0, v1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iput v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    return-object v0
.end method

.method public static obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;
    .locals 2

    const-class v0, Landroid/app/servertransaction/PauseActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PauseActivityItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/PauseActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/PauseActivityItem;-><init>()V

    move-object v0, v1

    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iput-boolean p1, v0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iput p2, v0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    iput-boolean p3, v0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/PauseActivityItem;

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    iget v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 10

    const-string v0, "activityPause"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v5, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iget-boolean v6, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iget v7, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    const-string v9, "PAUSE_ACTIVITY_ITEM"

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public getTargetState()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2

    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iput v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PauseActivityItem{finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",userLeaving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",configChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dontReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
