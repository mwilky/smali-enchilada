.class public final Landroid/media/browse/MediaBrowser;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/browse/MediaBrowser$Subscription;,
        Landroid/media/browse/MediaBrowser$ServiceCallbacks;,
        Landroid/media/browse/MediaBrowser$MediaServiceConnection;,
        Landroid/media/browse/MediaBrowser$ItemCallback;,
        Landroid/media/browse/MediaBrowser$SubscriptionCallback;,
        Landroid/media/browse/MediaBrowser$ConnectionCallback;,
        Landroid/media/browse/MediaBrowser$MediaItem;
    }
.end annotation


# static fields
.field private static final CONNECT_STATE_CONNECTED:I = 0x3

.field private static final CONNECT_STATE_CONNECTING:I = 0x2

.field private static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field private static final CONNECT_STATE_DISCONNECTING:I = 0x0

.field private static final CONNECT_STATE_SUSPENDED:I = 0x4

.field private static final DBG:Z = false

.field public static final EXTRA_PAGE:Ljava/lang/String; = "android.media.browse.extra.PAGE"

.field public static final EXTRA_PAGE_SIZE:Ljava/lang/String; = "android.media.browse.extra.PAGE_SIZE"

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private final mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

.field private final mContext:Landroid/content/Context;

.field private volatile mExtras:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mMediaSessionToken:Landroid/media/session/MediaSession$Token;

.field private final mRootHints:Landroid/os/Bundle;

.field private volatile mRootId:Ljava/lang/String;

.field private mServiceBinder:Landroid/service/media/IMediaBrowserService;

.field private mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field private final mServiceComponent:Landroid/content/ComponentName;

.field private mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field private volatile mState:I

.field private final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/browse/MediaBrowser$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/media/browse/MediaBrowser;)I
    .locals 1

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/browse/MediaBrowser;I)I
    .locals 0

    iput p1, p0, Landroid/media/browse/MediaBrowser;->mState:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    return-object v0
.end method

.method static synthetic access$1000(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    return-object p1
.end method

.method static synthetic access$1102(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ServiceCallbacks;
    .locals 1

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->getNewServiceCallbacks()Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/browse/MediaBrowser;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;->onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$202(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser;->onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;->onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    return-object p1
.end method

.method static synthetic access$600(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/browse/MediaBrowser;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->forceCloseConnection()V

    return-void
.end method

.method static synthetic access$800(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->isCurrent(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private forceCloseConnection()V
    .locals 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method private getNewServiceCallbacks()Landroid/media/browse/MediaBrowser$ServiceCallbacks;
    .locals 1

    new-instance v0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    invoke-direct {v0, p0}, Landroid/media/browse/MediaBrowser$ServiceCallbacks;-><init>(Landroid/media/browse/MediaBrowser;)V

    return-object v0
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CONNECT_STATE_SUSPENDED"

    return-object v0

    :pswitch_1
    const-string v0, "CONNECT_STATE_CONNECTED"

    return-object v0

    :pswitch_2
    const-string v0, "CONNECT_STATE_CONNECTING"

    return-object v0

    :pswitch_3
    const-string v0, "CONNECT_STATE_DISCONNECTED"

    return-object v0

    :pswitch_4
    const-string v0, "CONNECT_STATE_DISCONNECTING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCurrent(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eq v0, v1, :cond_2

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$7;

    invoke-direct {v1, p0, p1}, Landroid/media/browse/MediaBrowser$7;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/browse/MediaBrowser$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/browse/MediaBrowser$8;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/browse/MediaBrowser$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/browse/MediaBrowser$6;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser$Subscription;

    if-nez v0, :cond_0

    new-instance v1, Landroid/media/browse/MediaBrowser$Subscription;

    invoke-direct {v1}, Landroid/media/browse/MediaBrowser$Subscription;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/browse/MediaBrowser$Subscription;->putCallback(Landroid/content/Context;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v2}, Landroid/service/media/IMediaBrowserService;->addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v2, p3, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v2, p2, v3}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v2, "MediaBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser$Subscription;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v2}, Landroid/service/media/IMediaBrowserService;->removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v2, v3}, Landroid/service/media/IMediaBrowserService;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_3

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v5, p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v4, p1, v5, v6}, Landroid/service/media/IMediaBrowserService;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    goto :goto_3

    :goto_2
    nop

    const-string v2, "MediaBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$Subscription;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connect()V
    .locals 3

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() called while neither disconnecting nor disconnected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$1;

    invoke-direct {v1, p0}, Landroid/media/browse/MediaBrowser$1;-><init>(Landroid/media/browse/MediaBrowser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$2;

    invoke-direct {v1, p0}, Landroid/media/browse/MediaBrowser$2;-><init>(Landroid/media/browse/MediaBrowser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dump()V
    .locals 3

    const-string v0, "MediaBrowser"

    const-string v1, "MediaBrowser..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mExtras:Landroid/os/Bundle;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "MediaBrowser"

    const-string v1, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$3;

    invoke-direct {v1, p0, p2, p1}, Landroid/media/browse/MediaBrowser$3;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Landroid/media/browse/MediaBrowser$4;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p2, p1}, Landroid/media/browse/MediaBrowser$4;-><init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v0, v2}, Landroid/service/media/IMediaBrowserService;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaBrowser"

    const-string v3, "Remote error getting media item."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/browse/MediaBrowser$5;

    invoke-direct {v3, p0, p2, p1}, Landroid/media/browse/MediaBrowser$5;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cb cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mediaId cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoot() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 3

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 3

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionToken() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 2

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/media/browse/MediaBrowser;->subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/media/browse/MediaBrowser;->subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "options cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/browse/MediaBrowser;->unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
