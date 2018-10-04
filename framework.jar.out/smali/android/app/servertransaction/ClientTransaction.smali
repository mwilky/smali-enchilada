.class public Landroid/app/servertransaction/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/app/servertransaction/ObjectPoolItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ClientTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityToken:Landroid/os/IBinder;

.field private mClient:Landroid/app/IApplicationThread;

.field private mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/ClientTransaction$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ClientTransaction$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ActivityLifecycleItem;

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ClientTransaction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;
    .locals 2

    const-class v0, Landroid/app/servertransaction/ClientTransaction;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v1}, Landroid/app/servertransaction/ClientTransaction;-><init>()V

    move-object v0, v1

    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    iput-object p1, v0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

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

    check-cast v2, Landroid/app/servertransaction/ClientTransaction;

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

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

.method public getActivityToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getClient()Landroid/app/IApplicationThread;
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;)V
    .locals 4

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1, v3}, Landroid/app/servertransaction/ClientTransactionItem;->preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Landroid/app/servertransaction/ActivityLifecycleItem;->preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 3

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v2}, Landroid/app/servertransaction/ClientTransactionItem;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {v0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    :cond_2
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public schedule()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-interface {v0, p0}, Landroid/app/IApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method public setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 0

    iput-object p1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_1
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    :cond_3
    return-void
.end method
