.class final Lcom/android/server/autofill/RemoteFillService;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingRequest;,
        Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;,
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteFillService"

.field private static final MSG_UNBIND:I = 0x3

.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private mAutoFillService:Landroid/service/autofill/IAutoFillService;

.field private final mBindInstantServiceAllowed:Z

.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private mCompleted:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    iput-boolean p5, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/autofill/RemoteFillService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/RemoteFillService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelScheduledUnbind()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private checkIfDestroyed()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not handling operation as service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return v0
.end method

.method private dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PKEfnjx72TG33VenAsL_32TGLPg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PKEfnjx72TG33VenAsL_32TGLPg;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;-><init>(Landroid/os/ICancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$-MTWVawYUlWYzdF5tucVgNj4nNY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$-MTWVawYUlWYzdF5tucVgNj4nNY;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$XMU-2wAMieOoEHWM96VKmbAYfUo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$XMU-2wAMieOoEHWM96VKmbAYfUo;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private ensureBound()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ensureBound()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    const v0, 0x4000001

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] could not bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " using flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private ensureUnbound()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ensureUnbound()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1, v0}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception calling onDisconnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private handleBinderDied()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v0}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteFillService"

    const-string v2, "Unable to unlinkToDeath"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method private handleDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    :cond_1
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return-void
.end method

.method private handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    :cond_2
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureBound()V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] handlePendingRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->run()V

    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->scheduleUnbind()V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private handleUnbind()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    return-void
.end method

.method private isBound()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$1sGSxm1GNkRnOTqlIJFPKrlV6Bk(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    return-void
.end method

.method public static synthetic lambda$KN9CcjjmJTg_PJcamzzLgVvQt9M(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleDestroy()V

    return-void
.end method

.method public static synthetic lambda$YjPsINV7QuCehWwsB0GTTg1hvr4(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleUnbind()V

    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestFailure$1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/CharSequence;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestSuccess$0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2, p3}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestTimeout$2(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestTimeout(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$dispatchOnFillTimeout$3(Landroid/os/ICancellationSignal;)V
    .locals 4

    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling cancellation signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$dispatchOnSaveRequestFailure$5(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$dispatchOnSaveRequestSuccess$4(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$h6FPsdmILphrDZs953cJIyumyqg(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method private scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleUnbind()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$YjPsINV7QuCehWwsB0GTTg1hvr4;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$YjPsINV7QuCehWwsB0GTTg1hvr4;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1sGSxm1GNkRnOTqlIJFPKrlV6Bk;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1sGSxm1GNkRnOTqlIJFPKrlV6Bk;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cancelCurrentRequest()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    instance-of v1, v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    check-cast v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    :cond_2
    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "  "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "hasPendingRequest="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "mBindInstantServiceAllowed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method
