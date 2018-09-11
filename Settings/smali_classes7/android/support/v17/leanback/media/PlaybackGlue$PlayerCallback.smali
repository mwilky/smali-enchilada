.class public abstract Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
.super Ljava/lang/Object;
.source "PlaybackGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayCompleted(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 0
    .param p1, "glue"    # Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 71
    return-void
.end method

.method public onPlayStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 0
    .param p1, "glue"    # Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 64
    return-void
.end method

.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 0
    .param p1, "glue"    # Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 57
    return-void
.end method
