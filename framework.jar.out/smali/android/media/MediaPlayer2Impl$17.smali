.class Landroid/media/MediaPlayer2Impl$17;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setBufferingParams(Landroid/media/BufferingParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$params:Landroid/media/BufferingParams;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/BufferingParams;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$17;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$17;->val$params:Landroid/media/BufferingParams;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$17;->val$params:Landroid/media/BufferingParams;

    const-string/jumbo v1, "the BufferingParams cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$17;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$17;->val$params:Landroid/media/BufferingParams;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl;->access$2600(Landroid/media/MediaPlayer2Impl;Landroid/media/BufferingParams;)V

    return-void
.end method
