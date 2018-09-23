.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
.super Ljava/lang/Object;
.source "RecoverySessionStorage.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private final mKeyClaimant:[B

.field private final mLskfHash:[B

.field private final mSessionId:Ljava/lang/String;

.field private final mVaultParams:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public getKeyClaimant()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    return-object v0
.end method

.method public getLskfHash()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    return-object v0
.end method

.method public getVaultParams()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    return-object v0
.end method
