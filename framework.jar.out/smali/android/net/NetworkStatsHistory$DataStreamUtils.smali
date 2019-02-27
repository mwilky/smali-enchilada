.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFullLongArray(Ljava/io/DataInputStream;)[J
    .locals 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 763
    .local v0, "size":I
    if-ltz v0, :cond_1

    .line 764
    new-array v1, v0, [J

    .line 765
    .local v1, "values":[J
    const/4 v2, 0x0

    .line 765
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 766
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 763
    .end local v1    # "values":[J
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readVarLong(Ljava/io/DataInputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "shift":I
    const-wide/16 v1, 0x0

    .line 777
    .local v1, "result":J
    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 778
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 779
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 780
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 781
    return-wide v1

    .line 782
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 783
    .end local v3    # "b":B
    goto :goto_0

    .line 784
    :cond_1
    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "malformed long"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static readVarLongArray(Ljava/io/DataInputStream;)[J
    .locals 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 804
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 805
    :cond_0
    if-ltz v0, :cond_2

    .line 806
    new-array v1, v0, [J

    .line 807
    .local v1, "values":[J
    const/4 v2, 0x0

    .line 807
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 808
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInputStream;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 807
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 805
    .end local v1    # "values":[J
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static writeVarLong(Ljava/io/DataOutputStream;J)V
    .locals 4
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 793
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 794
    return-void

    .line 796
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 797
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static writeVarLongArray(Ljava/io/DataOutputStream;[JI)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "values"    # [J
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    if-nez p1, :cond_0

    .line 816
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 817
    return-void

    .line 819
    :cond_0
    array-length v0, p1

    if-gt p2, v0, :cond_2

    .line 822
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 823
    const/4 v0, 0x0

    .line 823
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 824
    aget-wide v1, p1, v0

    invoke-static {p0, v1, v2}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutputStream;J)V

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 820
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size larger than length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
