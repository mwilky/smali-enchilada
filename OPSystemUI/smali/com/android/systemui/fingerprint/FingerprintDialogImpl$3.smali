.class Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;
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

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1600()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v1, "FingerprintDialogImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchTransparent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDialogShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-boolean v4, v4, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mTransparentIconShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1802(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-boolean v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2002(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postTimeOutRunnable()V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed()V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2002(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1802(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2202(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-boolean v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1702(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->hideFingerprintPressed()V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Landroid/view/MotionEvent;)V

    return v2
.end method
