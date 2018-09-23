.class final Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"

# interfaces
.implements Lcom/android/server/backup/utils/DataStreamCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PasswordHashFileCodec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/backup/utils/DataStreamCodec<",
        "Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupPasswordManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInputStream;)Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-direct {v3, v2, v1}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V

    return-object v3
.end method

.method public bridge synthetic deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;->deserialize(Ljava/io/DataInputStream;)Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;->serialize(Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;Ljava/io/DataOutputStream;)V

    return-void
.end method
