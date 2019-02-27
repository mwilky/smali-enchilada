.class public final Landroid/security/AttestedKeyPair;
.super Ljava/lang/Object;
.source "AttestedKeyPair.java"


# instance fields
.field private final mAttestationRecord:[Ljava/security/cert/Certificate;

.field private final mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    iput-object p2, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public getAttestationRecord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:[Ljava/security/cert/Certificate;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:[Ljava/security/cert/Certificate;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 1

    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method
