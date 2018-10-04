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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatureSchemeVersion:I

    return-void
.end method

.method private checkInvariants()V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v1, v1

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    array-length v2, v2

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SigningDetails must have a one to one mapping between pastSigningCertificates and pastSigningCertificatesFlags"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

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

    invoke-direct {p0}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->checkInvariants()V

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

    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    return-object p0
.end method

.method public setPastSigningCertificatesFlags([I)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mPastSigningCertificatesFlags:[I

    return-object p0
.end method

.method public setSignatureSchemeVersion(I)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatureSchemeVersion:I

    return-object p0
.end method

.method public setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails$Builder;->mSignatures:[Landroid/content/pm/Signature;

    return-object p0
.end method
