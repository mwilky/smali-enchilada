.class Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentProgress;
.super Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedEnrollmentProgress"
.end annotation


# instance fields
.field enrollmentSteps:I

.field remaining:I

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentProgress;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;)V

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentProgress;->enrollmentSteps:I

    iput p3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentProgress;->remaining:I

    return-void
.end method


# virtual methods
.method public send(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentProgress;->enrollmentSteps:I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentProgress;->remaining:I

    invoke-interface {p1, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    return-void
.end method
