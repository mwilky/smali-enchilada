.class public Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.super Ljava/lang/Object;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;,
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsRegistrationTech;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegistrationImplBase"

.field private static final REGISTRATION_STATE_NOT_REGISTERED:I = 0x0

.field private static final REGISTRATION_STATE_REGISTERED:I = 0x2

.field private static final REGISTRATION_STATE_REGISTERING:I = 0x1

.field private static final REGISTRATION_STATE_UNKNOWN:I = -0x1

.field public static final REGISTRATION_TECH_IWLAN:I = 0x1

.field public static final REGISTRATION_TECH_LTE:I = 0x0

.field public static final REGISTRATION_TECH_NONE:I = -0x1


# instance fields
.field private final mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionType:I

.field private mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private final mLock:Ljava/lang/Object;

.field private mRegistrationState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mConnectionType:I

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method private addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static synthetic lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4

    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onRegistrationDisconnected() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$onRegistered$0(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4

    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onRegistrationConnected() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$onRegistering$1(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4

    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onRegistrationProcessing() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$onSubscriberAssociatedUriChanged$4([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4

    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onSubscriberAssociatedUriChanged() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$onTechnologyChangeFailed$3(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onRegistrationChangeFailed() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getConnectionType()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getConnectionType()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    nop

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    :cond_0
    const-string v1, "ImsRegistrationImplBase"

    const-string/jumbo v2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateToState(II)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mConnectionType:I

    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method public final getConnectionType()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mConnectionType:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$s7PspXVbCf1Q_WSzodP2glP9TjI;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$s7PspXVbCf1Q_WSzodP2glP9TjI;-><init>(Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onRegistered(I)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(II)V

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$cWwTXSDsk-bWPbsDJYI--DUBMnE;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$cWwTXSDsk-bWPbsDJYI--DUBMnE;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onRegistering(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(II)V

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$sbjuTvW-brOSWMR74UInSZEIQB0;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$sbjuTvW-brOSWMR74UInSZEIQB0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$wwtkoeOtGwMjG5I0-ZTfjNpGU-s;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$wwtkoeOtGwMjG5I0-ZTfjNpGU-s;-><init>([Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$wDtW65cPmn_jF6dfimhBTfdg1kI;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$wDtW65cPmn_jF6dfimhBTfdg1kI;-><init>(ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method
