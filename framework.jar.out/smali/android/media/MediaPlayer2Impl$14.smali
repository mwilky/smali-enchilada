.class Landroid/media/MediaPlayer2Impl$14;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setVideoScalingMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZI)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$14;->this$0:Landroid/media/MediaPlayer2Impl;

    iput p4, p0, Landroid/media/MediaPlayer2Impl$14;->val$mode:I

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$14;->this$0:Landroid/media/MediaPlayer2Impl;

    iget v1, p0, Landroid/media/MediaPlayer2Impl$14;->val$mode:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl;->access$2400(Landroid/media/MediaPlayer2Impl;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x6

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/MediaPlayer2Impl$14;->val$mode:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$14;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaPlayer2Impl;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/MediaPlayer2Impl$14;->val$mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
