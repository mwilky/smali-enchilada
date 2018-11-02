.class Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;
.super Ljava/lang/Object;
.source "FingerprintAuthenticateSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthenticationError"
.end annotation


# instance fields
.field error:I

.field errorString:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;->error:I

    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;->errorString:Ljava/lang/CharSequence;

    return-void
.end method
