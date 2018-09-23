.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private E0:[B

.field private P1:[B

.field private syntheticPassword:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object p1
.end method

.method protected static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 3

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    return-object v0
.end method

.method private initialize([B[B)V
    .locals 3

    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    nop

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$500()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-void
.end method


# virtual methods
.method public computeP0()[B
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveDiskEncryptionKey()[B
    .locals 4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$200()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .locals 4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$100()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$000()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public derivePasswordHashFactor()[B
    .locals 4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$400()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveVendorAuthSecret()[B
    .locals 4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$300()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public recreate([B)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    return-void
.end method
