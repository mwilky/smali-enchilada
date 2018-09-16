.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$12;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1097
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1101
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 1103
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    const v2, 0x7f120f90

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V

    .line 1104
    return-void
.end method
