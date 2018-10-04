.class Landroid/widget/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$1202(Landroid/widget/VideoView;I)I

    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_2

    const v2, 0x1040015

    goto :goto_0

    :cond_2
    const v2, 0x1040011

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040010

    new-instance v5, Landroid/widget/VideoView$5$1;

    invoke-direct {v5, p0}, Landroid/widget/VideoView$5$1;-><init>(Landroid/widget/VideoView$5;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return v1
.end method
