.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedSigner"
.end annotation


# instance fields
.field public final certs:[[Ljava/security/cert/X509Certificate;

.field public final verityRootHash:[B


# direct methods
.method public constructor <init>([[Ljava/security/cert/X509Certificate;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B

    return-void
.end method
