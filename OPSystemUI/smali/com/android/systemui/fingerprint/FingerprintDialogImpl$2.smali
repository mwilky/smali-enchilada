.class Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;
.super Ljava/lang/Object;
.source "FingerprintDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 162
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 167
    .local v0, "action":I
    invoke-static {}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1200()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    const-string v1, "FingerprintDialogImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchTransparent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDialogShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mTransparentIconShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    .line 173
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    goto :goto_0

    .line 174
    :cond_2
    if-ne v0, v2, :cond_4

    .line 175
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    .line 177
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 180
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 181
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 182
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    .line 186
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 193
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/QLRootView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/systemui/fingerprint/QLRootView;->onTouch(Landroid/view/MotionEvent;)V

    .line 197
    if-ne v0, v2, :cond_5

    .line 198
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 199
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2202(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/systemui/fingerprint/QLRootView;)Lcom/android/systemui/fingerprint/QLRootView;

    .line 200
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v3, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2102(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    .line 205
    :cond_5
    return v2
.end method
