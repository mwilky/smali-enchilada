.class public Landroid/telephony/mbms/StreamingService;
.super Ljava/lang/Object;
.source "StreamingService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/StreamingService$StreamingStateChangeReason;,
        Landroid/telephony/mbms/StreamingService$StreamingState;
    }
.end annotation


# static fields
.field public static final BROADCAST_METHOD:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsStreamingService"

.field public static final REASON_BY_USER_REQUEST:I = 0x1

.field public static final REASON_END_OF_SESSION:I = 0x2

.field public static final REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final REASON_NONE:I = 0x0

.field public static final REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final REASON_OUT_OF_MEMORY:I = 0x4

.field public static final STATE_STALLED:I = 0x3

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final UNICAST_METHOD:I = 0x2


# instance fields
.field private final mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field private final mParentSession:Landroid/telephony/MbmsStreamingSession;

.field private mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

.field private final mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iput-object p3, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    iput-object p2, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iput-object p4, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    iput-object p5, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    return-void
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->stopStreaming(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v0, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MbmsStreamingService"

    const-string v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No streaming service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    return-object v0
.end method

.method public getInfo()Landroid/telephony/mbms/StreamingServiceInfo;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    return-object v0
.end method

.method public getPlaybackUri()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MbmsStreamingService"

    const-string v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v2, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No streaming service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
