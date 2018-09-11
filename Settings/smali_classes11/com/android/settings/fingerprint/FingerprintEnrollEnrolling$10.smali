.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 1073
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1076
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1087
    return-void
.end method
