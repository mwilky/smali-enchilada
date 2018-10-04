.class Landroid/media/MediaPlayer2Impl$29;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->deselectTrack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZI)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$29;->this$0:Landroid/media/MediaPlayer2Impl;

    iput p4, p0, Landroid/media/MediaPlayer2Impl$29;->val$index:I

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$29;->this$0:Landroid/media/MediaPlayer2Impl;

    iget v1, p0, Landroid/media/MediaPlayer2Impl$29;->val$index:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/media/MediaPlayer2Impl;->access$3700(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method
