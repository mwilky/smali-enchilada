.class public Landroid/app/servertransaction/DestroyActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "DestroyActivityItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/DestroyActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigChanges:I

.field private mFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/DestroyActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/DestroyActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/DestroyActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/DestroyActivityItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/DestroyActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;
    .locals 2

    const-class v0, Landroid/app/servertransaction/DestroyActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/DestroyActivityItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/DestroyActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/DestroyActivityItem;-><init>()V

    move-object v0, v1

    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    iput p1, v0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

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

    check-cast v2, Landroid/app/servertransaction/DestroyActivityItem;

    iget-boolean v3, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    iget v4, v2, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

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
    .locals 9

    const-string v0, "activityDestroy"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v5, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    iget v6, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    const-string v8, "DestroyActivityItem"

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/ClientTransactionHandler;->handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public getTargetState()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    add-int/2addr v1, v0

    return v1
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    iput v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DestroyActivityItem{finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mConfigChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
