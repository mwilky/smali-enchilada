.class public Landroid/content/pm/PackageParser$SigningDetails$Builder;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mPastSigningCertificates:[Landroid/content/pm/Signature;

.field private mPastSigningCertificatesFlags:[I

.field private mSignatureSchemeVersion:I

.field private mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6283
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatureSchemeVersion:I

    .line 6288
    return-void
.end method

.method private checkInvariants()V
    .locals 3

    .line 6316
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_4

    .line 6322
    const/4 v0, 0x0

    .line 6323
    .local v0, "pastMismatch":Z
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    if-eqz v1, :cond_0

    .line 6324
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v1, v1

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    array-length v2, v2

    if-eq v1, v2, :cond_2

    .line 6325
    const/4 v0, 0x1

    goto :goto_0

    .line 6327
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    if-eqz v1, :cond_2

    .line 6329
    :cond_1
    const/4 v0, 0x1

    .line 6331
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 6335
    return-void

    .line 6332
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SigningDetails must have a one to one mapping between pastSigningCertificates and pastSigningCertificatesFlags"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6317
    .end local v0    # "pastMismatch":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SigningDetails requires the current signing certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/content/pm/PackageParser$SigningDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 6339
    invoke-direct {p0}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->checkInvariants()V

    .line 6340
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    iget v2, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatureSchemeVersion:I

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;[I)V

    return-object v0
.end method

.method public setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .locals 0
    .param p1, "pastSigningCertificates"    # [Landroid/content/pm/Signature;

    .line 6304
    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 6305
    return-object p0
.end method

.method public setPastSigningCertificatesFlags([I)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .locals 0
    .param p1, "pastSigningCertificatesFlags"    # [I

    .line 6310
    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    .line 6311
    return-object p0
.end method

.method public setSignatureSchemeVersion(I)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .locals 0
    .param p1, "signatureSchemeVersion"    # I

    .line 6298
    iput p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatureSchemeVersion:I

    .line 6299
    return-object p0
.end method

.method public setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .locals 0
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 6292
    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    .line 6293
    return-object p0
.end method
