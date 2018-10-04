.class public Landroid/app/backup/BackupHelperDispatcher;
.super Ljava/lang/Object;
.source "BackupHelperDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupHelperDispatcher$Header;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupHelperDispatcher"


# instance fields
.field mHelpers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    return-void
.end method

.method private static native allocateHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/app/backup/BackupHelperDispatcher;->allocateHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix(Ljava/lang/String;)V

    invoke-interface {p5, p1, p2, p3}, Landroid/app/backup/BackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    invoke-static {p4, v0, v1}, Landroid/app/backup/BackupHelperDispatcher;->writeHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeHeader_native failed (error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocateHeader_native failed (error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native readHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private static native skipChunk_native(Ljava/io/FileDescriptor;I)I
.end method

.method private static native writeHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/app/backup/BackupHelperDispatcher$Header;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/backup/BackupHelperDispatcher$Header;-><init>(Landroid/app/backup/BackupHelperDispatcher$1;)V

    iget-object v1, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-static {v0, v8}, Landroid/app/backup/BackupHelperDispatcher;->readHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    move-result v2

    move v9, v2

    if-ltz v2, :cond_3

    if-nez v9, :cond_0

    iget-object v2, v0, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/backup/BackupHelper;

    const-string v2, "BackupHelperDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handling existing helper \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/app/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V

    iget-object v2, v0, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/app/backup/BackupHelperDispatcher$Header;->chunkSize:I

    invoke-static {v8, v2}, Landroid/app/backup/BackupHelperDispatcher;->skipChunk_native(Ljava/io/FileDescriptor;I)I

    :goto_1
    goto :goto_0

    :cond_2
    move-object v8, v2

    :cond_3
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    const-string v2, "BackupHelperDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handling new helper \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/app/backup/BackupHelper;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Landroid/app/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public performRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Landroid/app/backup/BackupDataInputStream;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupDataInputStream;-><init>(Landroid/app/backup/BackupDataInput;)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/BackupHelper;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v6

    iput v6, v1, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    invoke-interface {v5, v1}, Landroid/app/backup/BackupHelper;->restoreEntity(Landroid/app/backup/BackupDataInputStream;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const-string v6, "BackupHelperDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find helper for: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1
    :goto_1
    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    const-string v4, "BackupHelperDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entity with no prefix: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/BackupHelper;

    invoke-interface {v3, p3}, Landroid/app/backup/BackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_3

    :cond_5
    return-void
.end method
