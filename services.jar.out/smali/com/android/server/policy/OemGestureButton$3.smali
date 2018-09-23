.class Lcom/android/server/policy/OemGestureButton$3;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->startScaleUpAnimation(Landroid/widget/ImageView;)V
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

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$3;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$3;->this$0:Lcom/android/server/policy/OemGestureButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/OemGestureButton;->access$202(Lcom/android/server/policy/OemGestureButton;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$3;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$3;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "startScaleUpAnimation: end."

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
