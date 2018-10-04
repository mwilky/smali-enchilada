.class final Landroid/os/BinderProxy;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BinderProxy$NoImagePreloadHolder;,
        Landroid/os/BinderProxy$ProxyMap;
    }
.end annotation


# static fields
.field private static final NATIVE_ALLOCATION_SIZE:I = 0x3e8

.field private static sProxyMap:Landroid/os/BinderProxy$ProxyMap;


# instance fields
.field private final mNativeData:J

.field volatile mWarnOnBlocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/BinderProxy$ProxyMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/BinderProxy$ProxyMap;-><init>(Landroid/os/BinderProxy$1;)V

    sput-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    iput-wide p1, p0, Landroid/os/BinderProxy;->mNativeData:J

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    invoke-static {}, Landroid/os/BinderProxy;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private static dumpProxyDebugInfo()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->access$100(Landroid/os/BinderProxy$ProxyMap;)V

    :cond_0
    return-void
.end method

.method private static getInstance(JJ)Landroid/os/BinderProxy;
    .locals 3

    :try_start_0
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-virtual {v0, p2, p3}, Landroid/os/BinderProxy$ProxyMap;->get(J)Landroid/os/BinderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/BinderProxy;

    invoke-direct {v1, p0, p1}, Landroid/os/BinderProxy;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    nop

    sget-object v1, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v1, v0, p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    sget-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-virtual {v1, p2, p3, v0}, Landroid/os/BinderProxy$ProxyMap;->set(JLandroid/os/BinderProxy;)V

    return-object v0

    :catch_0
    move-exception v0

    sget-wide v1, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    invoke-static {v1, v2, p0, p1}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    throw v0
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static final sendDeathNotice(Landroid/os/IBinder$DeathRecipient;)V
    .locals 3

    :try_start_0
    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BinderNative"

    const-string v2, "Uncaught exception from death notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const v2, 0x5f444d50

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const v2, 0x5f444d50

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public native getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native isBinderAlive()Z
.end method

.method public native linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native pingBinder()Z
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p5, v0}, Landroid/os/ShellCallback;->writeToParcel(Landroid/os/ShellCallback;Landroid/os/Parcel;)V

    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    const v3, 0x5f434d44

    :try_start_0
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Unreasonably large binder buffer"

    invoke-static {p0, p1, p2, v0}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    const-string v0, "Binder"

    const-string v2, "Outgoing transactions from this process must be FLAG_ONEWAY"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0xc

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/os/BinderProxy;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/util/Permission;

    invoke-direct {v4, v3}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    const-string v5, "android.permission.CALL_PHONE"

    invoke-virtual {v4, v5}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "BinderProxy"

    const-string/jumbo v4, "permission CALL_PHONE requet fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->isTracingEnabled()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/TransactionTracker;->addTrace(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v0, v5, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_3
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    return v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    throw v0
.end method

.method public native transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
.end method
