.class public final Landroid/media/projection/MediaProjection;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjection$CallbackRecord;,
        Landroid/media/projection/MediaProjection$MediaProjectionCallback;,
        Landroid/media/projection/MediaProjection$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProjection"


# instance fields
.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjection$Callback;",
            "Landroid/media/projection/MediaProjection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImpl:Landroid/media/projection/IMediaProjection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Landroid/media/projection/IMediaProjection;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    .line 59
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    new-instance v1, Landroid/media/projection/MediaProjection$MediaProjectionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$1;)V

    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to start media projection"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Landroid/media/projection/MediaProjection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/media/projection/MediaProjection;

    .line 46
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public createAudioRecord(IIII)Landroid/media/AudioRecord;
    .locals 1
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "audioFormat"    # I
    .param p4, "bufferSizeInBytes"    # I

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 137
    move-object v11, p0

    iget-object v0, v11, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/display/DisplayManager;

    .line 138
    .local v12, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIIZLandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "isSecure"    # Z
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 103
    move-object v11, p0

    iget-object v0, v11, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/display/DisplayManager;

    .line 104
    .local v12, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz p5, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    .line 105
    .local v13, "flags":I
    or-int/lit8 v0, v13, 0x10

    or-int/lit8 v7, v0, 0x2

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, v11

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Landroid/media/projection/IMediaProjection;
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    return-object v0
.end method

.method public registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 75
    if-eqz p1, :cond_1

    .line 78
    if-nez p2, :cond_0

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 81
    :cond_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;-><init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 3

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjection"

    const-string v2, "Unable to stop projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;

    .line 91
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
