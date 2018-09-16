.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/DropBoxManagerService$EntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blocks:I

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "millis"    # J

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 806
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 807
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 808
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 809
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    const/4 v0, 0x0

    .line 739
    .local v0, "parseFailure":Z
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 741
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 742
    .local v3, "tag":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 744
    .local v4, "millis":J
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 745
    .local v6, "at":I
    const/4 v7, 0x0

    if-gez v6, :cond_0

    .line 746
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 748
    :cond_0
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 749
    const-string v8, ".gz"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 750
    or-int/lit8 v2, v2, 0x4

    .line 751
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 753
    :cond_1
    const-string v8, ".lost"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 754
    or-int/lit8 v2, v2, 0x1

    .line 755
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 756
    :cond_2
    const-string v8, ".txt"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 757
    or-int/lit8 v2, v2, 0x2

    .line 758
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 759
    :cond_3
    const-string v8, ".dat"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 760
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 762
    :cond_4
    const/4 v0, 0x1

    .line 764
    :goto_0
    if-nez v0, :cond_5

    .line 772
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd-HH_mm_ss_SSS"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 773
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v9

    .line 773
    .end local v8    # "date":Ljava/util/Date;
    goto :goto_1

    .line 777
    :catch_0
    move-exception v8

    .line 778
    .local v8, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 778
    .end local v8    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 775
    :catch_1
    move-exception v8

    .line 776
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    .line 779
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    nop

    .line 782
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 783
    const-string v8, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 787
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 788
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 789
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 790
    iput v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 791
    return-void

    .line 794
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    int-to-long v9, p2

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    int-to-long v9, p2

    div-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 795
    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 796
    iput v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 797
    iput-wide v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 798
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .locals 5
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "flags"    # I
    .param p7, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    and-int/lit8 v0, p6, 0x1

    if-nez v0, :cond_1

    .line 699
    invoke-static {p3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 700
    iput-wide p4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 701
    iput p6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 703
    invoke-virtual {p0, p2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 704
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    int-to-long v3, p7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    int-to-long v3, p7

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 708
    return-void

    .line 705
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 720
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 721
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 722
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 723
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 724
    return-void
.end method

.method private getExtension()Ljava/lang/String;
    .locals 2

    .line 821
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 822
    const-string v0, ".lost"

    return-object v0

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, ".txt"

    goto :goto_0

    :cond_1
    const-string v1, ".dat"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, ".gz"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    return-object v0
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I
    .locals 4
    .param p1, "o"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 672
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 673
    .local v0, "comp":I
    if-eqz v0, :cond_0

    return v0

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/util/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 676
    if-eqz v0, :cond_1

    return v0

    .line 678
    :cond_1
    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 679
    if-eqz v0, :cond_2

    return v0

    .line 681
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 663
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I

    move-result p1

    return p1
.end method

.method public deleteFile(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .line 858
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 861
    :cond_0
    return-void
.end method

.method public getFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1, "dir"    # Ljava/io/File;

    .line 851
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 6

    .line 832
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH_mm_ss_SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 834
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 835
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "mDate":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget v5, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    const-string v5, ".txt"

    goto :goto_0

    :cond_0
    const-string v5, ".dat"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    iget v5, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    const-string v5, ".gz"

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 836
    return-object v3

    .line 840
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v2    # "mDate":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFile()Z
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
