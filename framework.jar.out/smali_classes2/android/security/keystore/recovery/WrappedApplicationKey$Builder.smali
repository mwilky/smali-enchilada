.class public Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
.super Ljava/lang/Object;
.source "WrappedApplicationKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/WrappedApplicationKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/WrappedApplicationKey;-><init>(Landroid/security/keystore/recovery/WrappedApplicationKey$1;)V

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/recovery/WrappedApplicationKey;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey;->access$100(Landroid/security/keystore/recovery/WrappedApplicationKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey;->access$200(Landroid/security/keystore/recovery/WrappedApplicationKey;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    return-object v0
.end method

.method public setAccount([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->access$102(Landroid/security/keystore/recovery/WrappedApplicationKey;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->access$202(Landroid/security/keystore/recovery/WrappedApplicationKey;[B)[B

    return-object p0
.end method
