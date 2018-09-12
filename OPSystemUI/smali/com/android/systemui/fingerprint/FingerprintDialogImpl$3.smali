.class Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;
.super Ljava/lang/Object;
.source "FingerprintDialogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
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

    .line 439
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2102(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    .line 445
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0179

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fingerprint/QLRootView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2202(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/systemui/fingerprint/QLRootView;)Lcom/android/systemui/fingerprint/QLRootView;

    .line 446
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRootView;->setSystemUiVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/QLRootView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    :cond_1
    return-void
.end method
