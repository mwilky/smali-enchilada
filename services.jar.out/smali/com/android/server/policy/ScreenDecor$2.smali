.class Lcom/android/server/policy/ScreenDecor$2;
.super Ljava/lang/Object;
.source "ScreenDecor.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ScreenDecor;->setupDecorations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ScreenDecor;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ScreenDecor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ScreenDecor;

    .line 131
    iput-object p1, p0, Lcom/android/server/policy/ScreenDecor$2;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$2;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-static {v0}, Lcom/android/server/policy/ScreenDecor;->access$000(Lcom/android/server/policy/ScreenDecor;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$2;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-static {v0}, Lcom/android/server/policy/ScreenDecor;->access$000(Lcom/android/server/policy/ScreenDecor;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 138
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 139
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 141
    return-void
.end method
