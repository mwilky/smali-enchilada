.class public Landroid/app/backup/BackupDataInputStream;
.super Ljava/io/InputStream;
.source "BackupDataInputStream.java"


# instance fields
.field dataSize:I

.field key:Ljava/lang/String;

.field mData:Landroid/app/backup/BackupDataInput;

.field mOneByte:[B


# direct methods
.method constructor <init>(Landroid/app/backup/BackupDataInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    iget-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-array v1, v2, [B

    iput-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    aget-byte v1, v0, v3

    return v1
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    return v0
.end method
