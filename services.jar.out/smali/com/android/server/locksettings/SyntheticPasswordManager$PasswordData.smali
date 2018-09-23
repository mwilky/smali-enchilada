.class Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PasswordData"
.end annotation


# instance fields
.field public passwordHandle:[B

.field public passwordType:I

.field salt:[B

.field scryptN:B

.field scryptP:B

.field scryptR:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .locals 2

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;-><init>()V

    const/16 v1, 0xb

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .locals 5

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;-><init>()V

    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-lez v3, :cond_0

    new-array v4, v3, [B

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    :goto_0
    return-object v0
.end method


# virtual methods
.method public toBytes()[B
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v0, v0

    const/16 v1, 0xb

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
