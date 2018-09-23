.class Lcom/android/server/policy/OemGestureButton$2;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->startScaleDownAnimation(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/OemGestureButton;->access$202(Lcom/android/server/policy/OemGestureButton;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$302(Lcom/android/server/policy/OemGestureButton;J)J

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startScaleDownAnimation: end.. mMaxWaitTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$300(Lcom/android/server/policy/OemGestureButton;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
