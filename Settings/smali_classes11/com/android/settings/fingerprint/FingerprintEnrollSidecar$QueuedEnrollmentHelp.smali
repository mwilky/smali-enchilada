.class Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentHelp;
.super Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedEnrollmentHelp"
.end annotation


# instance fields
.field helpMsgId:I

.field helpString:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentHelp;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;)V

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentHelp;->helpMsgId:I

    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentHelp;->helpString:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public send(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentHelp;->helpMsgId:I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentHelp;->helpString:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method
