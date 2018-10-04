.class public Landroid/app/servertransaction/StopActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "StopActivityItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/StopActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StopActivityItem"


# instance fields
.field private mConfigChanges:I

.field private mShowWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/StopActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/StopActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/StopActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-boolean v0, p0, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/StopActivityItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(ZI)Landroid/app/servertransaction/StopActivityItem;
    .locals 2

    const-class v0, Landroid/app/servertransaction/StopActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/StopActivityItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/StopActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/StopActivityItem;-><init>()V

    move-object v0, v1

    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    iput p1, v0, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

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

    check-cast v2, Landroid/app/servertransaction/StopActivityItem;

    iget-boolean v3, p0, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

    iget v4, v2, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

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

    const-string v0, "activityStop"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v5, p0, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    iget v6, p0, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

    const-string v9, "STOP_ACTIVITY_ITEM"

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/ClientTransactionHandler;->handleStopActivity(Landroid/os/IBinder;ZILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public getTargetState()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v0, p0, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

    add-int/2addr v1, v0

    return v1
.end method

.method public postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0

    invoke-virtual {p1, p3}, Landroid/app/ClientTransactionHandler;->reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    iput v0, p0, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StopActivityItem{showWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",configChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/servertransaction/StopActivityItem;->mShowWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/servertransaction/StopActivityItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
