.class Landroid/media/MediaPlayer2Impl$5;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setAudioAttributes(Landroid/media/AudioAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$attributes:Landroid/media/AudioAttributes;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/AudioAttributes;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$5;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$5;->val$attributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$5;->val$attributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$5;->val$attributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$5;->this$0:Landroid/media/MediaPlayer2Impl;

    const/16 v2, 0x578

    invoke-static {v1, v2, v0}, Landroid/media/MediaPlayer2Impl;->access$300(Landroid/media/MediaPlayer2Impl;ILandroid/os/Parcel;)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    const-string v0, "Cannot set AudioAttributes to null"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set AudioAttributes to null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
