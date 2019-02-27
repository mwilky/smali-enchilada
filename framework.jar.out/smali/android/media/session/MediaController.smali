.class public final Landroid/media/session/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaController$MessageHandler;,
        Landroid/media/session/MediaController$CallbackStub;,
        Landroid/media/session/MediaController$PlaybackInfo;,
        Landroid/media/session/MediaController$TransportControls;,
        Landroid/media/session/MediaController$Callback;
    }
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x8

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_UPDATE_EXTRAS:I = 0x7

.field private static final MSG_UPDATE_METADATA:I = 0x3

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x5

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final MSG_UPDATE_VOLUME:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MediaController"


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/session/MediaController$MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCbRegistered:Z

.field private final mCbStub:Landroid/media/session/MediaController$CallbackStub;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private final mSessionBinder:Landroid/media/session/ISessionController;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/media/session/MediaSession$Token;

.field private final mTransportControls:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/session/MediaController$CallbackStub;

    invoke-direct {v0, p0}, Landroid/media/session/MediaController$CallbackStub;-><init>(Landroid/media/session/MediaController;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iput-object p2, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    new-instance v0, Landroid/media/session/MediaController$TransportControls;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaController$TransportControls;-><init>(Landroid/media/session/MediaController;Landroid/media/session/MediaController$1;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    new-instance v0, Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, p2}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    iput-object p1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V
    .locals 1

    invoke-virtual {p2}, Landroid/media/session/MediaSession$Token;->getBinder()Landroid/media/session/ISessionController;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/session/MediaController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private addCallbackLocked(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "Callback is already added, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/media/session/MediaController$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/session/MediaController$MessageHandler;-><init>(Landroid/os/Looper;Landroid/media/session/MediaController$Callback;)V

    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/session/MediaController$MessageHandler;->access$102(Landroid/media/session/MediaController$MessageHandler;Z)Z

    iget-boolean v2, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-nez v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v3, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v2, v3, v4}, Landroid/media/session/ISessionController;->registerCallbackListener(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V

    iput-boolean v1, p0, Landroid/media/session/MediaController;->mCbRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaController"

    const-string v3, "Dead object in registerCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchMediaButtonEventInternal(ZLandroid/view/KeyEvent;)Z
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v0, v2, v3, p1, p2}, Landroid/media/session/ISessionController;->sendMediaButton(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;ZLandroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyEvent may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController$MessageHandler;

    invoke-static {v1}, Landroid/media/session/MediaController$MessageHandler;->access$200(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController$MessageHandler;

    invoke-virtual {v2, p1, p2, p3}, Landroid/media/session/MediaController$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeCallbackLocked(Landroid/media/session/MediaController$Callback;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController$MessageHandler;

    invoke-static {v3}, Landroid/media/session/MediaController$MessageHandler;->access$200(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;

    move-result-object v4

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v3, v2}, Landroid/media/session/MediaController$MessageHandler;->access$102(Landroid/media/session/MediaController$MessageHandler;Z)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v3, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v1, v3}, Landroid/media/session/ISessionController;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "MediaController"

    const-string v4, "Dead object in removeCallbackLocked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-boolean v2, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    :cond_2
    return v0
.end method


# virtual methods
.method public adjustVolume(II)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionController;->adjustVolume(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling adjustVolumeBy."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public controlsSameSession(Landroid/media/session/MediaController;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionBinder()Landroid/media/session/ISessionController;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEventInternal(ZLandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchMediaButtonEventAsSystemService(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEventInternal(ZLandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchVolumeButtonEventAsSystemService(Landroid/view/KeyEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    const/4 v4, 0x1

    const/4 v6, 0x1

    move v5, v0

    invoke-interface/range {v1 .. v6}, Landroid/media/session/ISessionController;->adjustVolume(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "MediaController"

    const-string v3, "Error calling adjustVolumeBy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    :pswitch_3
    const/16 v0, 0x1014

    :try_start_1
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1014

    invoke-interface/range {v1 .. v6}, Landroid/media/session/ISessionController;->adjustVolume(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;ZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "MediaController"

    const-string v3, "Error calling adjustVolumeBy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getExtras"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getFlags()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getMetadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Dead object in getPackageName."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 8

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v0

    new-instance v7, Landroid/media/session/MediaController$PlaybackInfo;

    iget v2, v0, Landroid/media/session/ParcelableVolumeInfo;->volumeType:I

    iget-object v3, v0, Landroid/media/session/ParcelableVolumeInfo;->audioAttrs:Landroid/media/AudioAttributes;

    iget v4, v0, Landroid/media/session/ParcelableVolumeInfo;->controlType:I

    iget v5, v0, Landroid/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v6, v0, Landroid/media/session/ParcelableVolumeInfo;->currentVolume:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(ILandroid/media/AudioAttributes;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getAudioInfo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getQueue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getQueue."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getQueueTitle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRatingType()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getRatingType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling getPendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method getSessionBinder()Landroid/media/session/ISessionController;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Dead object in getTag."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportControls()Landroid/media/session/MediaController$TransportControls;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaController;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-object v0
.end method

.method public registerCallback(Landroid/media/session/MediaController$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaController;->addCallbackLocked(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v0, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/media/session/ISessionController;->sendCommand(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Dead object in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolumeTo(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->setVolumeTo(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "Error calling setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->removeCallbackLocked(Landroid/media/session/MediaController$Callback;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
