.class public Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
.super Ljava/lang/Object;
.source "PlaybackGlueHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackGlueHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Z)V
    .locals 0
    .param p1, "start"    # Z

    .line 105
    return-void
.end method

.method public onError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/CharSequence;

    .line 113
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .line 97
    return-void
.end method
