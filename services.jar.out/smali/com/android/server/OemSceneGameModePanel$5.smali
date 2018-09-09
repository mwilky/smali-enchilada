.class Lcom/android/server/OemSceneGameModePanel$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OemSceneGameModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 243
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 246
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModeView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$200(Lcom/android/server/OemSceneGameModePanel;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v1}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/OemSceneGameModePanel;->access$102(Lcom/android/server/OemSceneGameModePanel;Lcom/android/server/OemSceneGameModeView;)Lcom/android/server/OemSceneGameModeView;

    .line 251
    :cond_0
    return-void
.end method
