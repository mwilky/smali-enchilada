.class Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private mCrypto:Landroid/hardware/biometrics/CryptoObject;

.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/CryptoObject;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->mCrypto:Landroid/hardware/biometrics/CryptoObject;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->mCrypto:Landroid/hardware/biometrics/CryptoObject;

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$100(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/CryptoObject;)V

    return-void
.end method
