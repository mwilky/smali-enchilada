.class public Landroid/net/http/SslCertificate$DName;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/SslCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DName"
.end annotation


# instance fields
.field private mCName:Ljava/lang/String;

.field private mDName:Ljava/lang/String;

.field private mOName:Ljava/lang/String;

.field private mUName:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/http/SslCertificate;


# direct methods
.method public constructor <init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Landroid/net/http/SslCertificate$DName;->this$0:Landroid/net/http/SslCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_4

    iput-object p2, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getCName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getDName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getOName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getUName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
