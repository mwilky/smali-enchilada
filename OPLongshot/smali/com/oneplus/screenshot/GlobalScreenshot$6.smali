.class Lcom/oneplus/screenshot/GlobalScreenshot$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    sget-boolean v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Longshot.GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd, save:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1000(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", notRecycle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1100(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1200(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1000(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1500(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1500(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1502(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->unregisterKeyEventCallBack()V

    :cond_3
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1100(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1000(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "Longshot.GlobalScreenshot"

    const-string v3, "recycle when end 2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1702(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_5
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1102(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1002(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
