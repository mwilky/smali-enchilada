.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$PlaybackInfo;,
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$TopTransportSessionListener;,
        Landroid/media/RemoteController$MediaControllerCallback;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$OnClientUpdateListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BITMAP_DIMENSION:I = 0x200

.field private static final MSG_CLIENT_CHANGE:I = 0x0

.field private static final MSG_NEW_MEDIA_METADATA:I = 0x2

.field private static final MSG_NEW_PLAYBACK_STATE:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field private static final mInfoLock:Ljava/lang/Object;


# instance fields
.field private mArtworkHeight:I

.field private mArtworkWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentSession:Landroid/media/session/MediaController;

.field private mEnabled:Z

.field private final mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private mIsRegistered:Z

.field private mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final mMaxBitmapDimension:I

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/RemoteController$MediaControllerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$1;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_0

    new-instance v0, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    :goto_0
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    new-instance v0, Landroid/media/RemoteController$TopTransportSessionListener;

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$1;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x200

    iput v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Calling thread not associated with a looper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null OnClientUpdateListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/RemoteController;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/RemoteController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onClientChange(Z)V

    return-void
.end method

.method private onClientChange(Z)V
    .locals 3

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-wide/32 v3, 0x10000001

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    iget v5, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iget v6, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    invoke-static {p1, v5, v6}, Landroid/media/session/MediaSessionLegacyHelper;->getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v6, p0, v5, v3, v4}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    iget-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    move-object v2, v6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 9

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/media/session/PlaybackState;->getRccStateFromState(I)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v8

    move-object v2, v1

    move v3, v0

    invoke-interface/range {v2 .. v8}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v1, v0}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    :goto_2
    if-eqz p1, :cond_3

    nop

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/media/session/PlaybackState;->getRccControlFlagsFromActions(J)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null event handler, will not deliver message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez v2, :cond_0

    :try_start_0
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v4, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_2
    iget-object v5, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iput-object v2, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iget-object v5, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    invoke-virtual {v0, v4, v5}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v11

    iget-object v6, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v18

    iget-object v13, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_3
    :goto_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearArtworkConfiguration()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .locals 3

    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    iput-boolean v1, v0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    return-object v0
.end method

.method public getEstimatedMediaPosition()J
    .locals 4

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :cond_0
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method public seekTo(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "RemoteController"

    const-string v1, "Cannot use seekTo() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :cond_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal negative time value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not a media key event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArtworkConfiguration(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public setArtworkConfiguration(ZII)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p2, v1, :cond_0

    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    move p2, v1

    :cond_0
    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p3, v1, :cond_1

    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    move p3, v1

    :cond_1
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iput v1, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    :goto_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSynchronizationMode(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown synchronization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-nez v1, :cond_2

    const-string v0, "RemoteController"

    const-string v1, "Cannot set synchronization mode on an unregistered RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    return v0
.end method

.method startListeningToSessions()V
    .locals 5

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v2

    :cond_0
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    iget-object v2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v3, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    return-void
.end method

.method stopListeningToSessions()V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void
.end method
