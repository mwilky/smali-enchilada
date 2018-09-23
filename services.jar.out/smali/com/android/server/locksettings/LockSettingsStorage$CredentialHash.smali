.class public Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialHash"
.end annotation


# static fields
.field static final VERSION_GATEKEEPER:I = 0x1

.field static final VERSION_LEGACY:I


# instance fields
.field hash:[B

.field isBaseZeroPattern:Z

.field type:I

.field version:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    return-void
.end method

.method synthetic constructor <init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-void
.end method

.method private constructor <init>([BIIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty hash for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    iput-boolean p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "None type CredentialHash should not have hash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 1

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method static create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad type for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 2

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    return-object v0
.end method

.method static createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 4

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    new-array v5, v3, [B

    move-object v4, v5

    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_0
    new-instance v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v5, v4, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public toBytes()[B
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "base zero patterns are not serializable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
