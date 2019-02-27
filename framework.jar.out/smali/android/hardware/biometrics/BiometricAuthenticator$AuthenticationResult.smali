.class public Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    iput-object p2, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;

    iput p3, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mUserId:I

    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    return-object v0
.end method

.method public getId()Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mUserId:I

    return v0
.end method
