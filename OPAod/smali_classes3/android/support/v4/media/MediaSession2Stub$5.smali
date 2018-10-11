.class Landroid/support/v4/media/MediaSession2Stub$5;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaSession2Stub;->adjustVolume(Landroid/support/v4/media/IMediaController2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$direction:I

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$5;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput p2, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$direction:I

    iput p3, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$5;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getVolumeProvider()Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2Stub$5;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object v1, v1, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$direction:I

    iget v4, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$flags:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    :cond_0
    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$direction:I

    invoke-virtual {v0, v1}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    :goto_0
    return-void
.end method
