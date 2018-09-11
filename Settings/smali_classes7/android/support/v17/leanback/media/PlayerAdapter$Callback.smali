.class public Landroid/support/v17/leanback/media/PlayerAdapter$Callback;
.super Ljava/lang/Object;
.source "PlayerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 67
    return-void
.end method

.method public onBufferingStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;Z)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;
    .param p2, "start"    # Z

    .line 101
    return-void
.end method

.method public onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 60
    return-void
.end method

.method public onDurationChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 75
    return-void
.end method

.method public onError(Landroid/support/v17/leanback/media/PlayerAdapter;ILjava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 93
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 108
    return-void
.end method

.method public onPlayCompleted(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 53
    return-void
.end method

.method public onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 39
    return-void
.end method

.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 46
    return-void
.end method

.method public onVideoSizeChanged(Landroid/support/v17/leanback/media/PlayerAdapter;II)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/media/PlayerAdapter;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 84
    return-void
.end method
