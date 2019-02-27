.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static TAG:Ljava/lang/String; = null

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-string v0, "NetworkStatsHistory"

    sput-object v0, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    .line 727
    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "bucketDuration"    # J

    .line 113
    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 114
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I

    .line 117
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 118
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 2
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I
    .param p4, "fields"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 122
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 124
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 125
    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 126
    :cond_2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_3

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 127
    :cond_3
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_4

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 128
    :cond_4
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_5

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 129
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .locals 1
    .param p1, "existing"    # Landroid/net/NetworkStatsHistory;
    .param p2, "bucketDuration"    # J

    .line 134
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 135
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 140
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 141
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 142
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 143
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 144
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 145
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 146
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 147
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 166
    .local v0, "version":I
    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 182
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 183
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    :goto_0
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 185
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 186
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 187
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 188
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 189
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 190
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 191
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 192
    goto :goto_1

    .line 168
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 169
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 170
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 171
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 172
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 173
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 174
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 175
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 176
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 177
    nop

    .line 199
    :goto_1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_1

    .line 204
    return-void

    .line 202
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Mismatched history lengths"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static addLong([JIJ)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 748
    if-eqz p0, :cond_0

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    .line 749
    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 433
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v0, p1, v0

    sub-long/2addr p1, v0

    .line 434
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v2, p3, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v0, v2

    add-long/2addr p3, v0

    .line 436
    move-wide v0, p1

    .local v0, "now":J
    :goto_0
    cmp-long v2, v0, p3

    if-gez v2, :cond_1

    .line 438
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v3, 0x0

    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v2

    .line 439
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 441
    not-int v3, v2

    invoke-direct {p0, v3, v0, v1}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 436
    .end local v2    # "index":I
    :cond_0
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 444
    .end local v0    # "now":J
    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 740
    if-eqz p0, :cond_0

    aget-wide v0, p0, p1

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    return-wide v0
.end method

.method private insertBucket(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "start"    # J

    .line 451
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 452
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 453
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 454
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 455
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 456
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 457
    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 458
    :cond_3
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 459
    :cond_4
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 463
    .end local v0    # "newLength":I
    :cond_5
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v0, :cond_b

    .line 464
    add-int/lit8 v0, p1, 0x1

    .line 465
    .local v0, "dstPos":I
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v1, p1

    .line 467
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    :cond_6
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    :cond_7
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    :cond_8
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    :cond_9
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    :cond_a
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    .end local v0    # "dstPos":I
    .end local v1    # "length":I
    :cond_b
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v0, p1

    .line 477
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 478
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 479
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 480
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 481
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 482
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 483
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 484
    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 4
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 637
    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-long v2, p3, p1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private static setLong([JIJ)V
    .locals 0
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 744
    if-eqz p0, :cond_0

    aput-wide p2, p0, p1

    .line 745
    :cond_0
    return-void
.end method

.method private static writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V
    .locals 2
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "tag"    # J
    .param p3, "array"    # [J
    .param p4, "index"    # I

    .line 715
    if-eqz p3, :cond_0

    .line 716
    aget-wide v0, p3, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 718
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 490
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 491
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 492
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_1

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 493
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v0, :cond_2

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 494
    :cond_2
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_3

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 495
    :cond_3
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v0, :cond_4

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 496
    :cond_4
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v0, :cond_5

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 497
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 498
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 499
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .line 654
    const-string v0, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 655
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 656
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 658
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 659
    .local v0, "start":I
    :goto_0
    if-lez v0, :cond_1

    .line 660
    const-string v1, "(omitting "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " buckets)"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 663
    :cond_1
    move v1, v0

    .line 663
    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v1, v4, :cond_7

    .line 664
    const-string/jumbo v4, "st="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v4, v4, v1

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 665
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v4, :cond_2

    const-string v4, " rb="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 666
    :cond_2
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v4, :cond_3

    const-string v4, " rp="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 667
    :cond_3
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v4, :cond_4

    const-string v4, " tb="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 668
    :cond_4
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v4, :cond_5

    const-string v4, " tp="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 669
    :cond_5
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v4, :cond_6

    const-string v4, " op="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 670
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 673
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 674
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 677
    const-string v0, "d,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 679
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 681
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_5

    .line 682
    const-string v1, "b,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v4, v1, v0

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 684
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v4, v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_1

    :cond_0
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 685
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v4, v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_2

    :cond_1
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 686
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v4, v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_3

    :cond_2
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 687
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v4, v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_4

    :cond_3
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 688
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v4, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_5

    :cond_4
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public estimateResizeBuckets(J)I
    .locals 4
    .param p1, "newBucketDuration"    # J

    .line 752
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public generateRandom(JJJ)V
    .locals 30
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "bytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    move-wide/from16 v0, p5

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 594
    .local v2, "r":Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v19

    .line 595
    .local v19, "fractionRx":F
    long-to-float v3, v0

    mul-float v3, v3, v19

    float-to-long v14, v3

    .line 596
    .local v14, "rxBytes":J
    long-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v19

    mul-float/2addr v3, v4

    float-to-long v12, v3

    .line 598
    .local v12, "txBytes":J
    const-wide/16 v3, 0x400

    div-long v20, v14, v3

    .line 599
    .local v20, "rxPackets":J
    div-long v22, v12, v3

    .line 600
    .local v22, "txPackets":J
    const-wide/16 v3, 0x800

    div-long v24, v14, v3

    .line 602
    .local v24, "operations":J
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide v8, v14

    move-wide/from16 v10, v20

    move-wide/from16 v26, v12

    .end local v12    # "txBytes":J
    .local v26, "txBytes":J
    move-wide/from16 v28, v14

    move-wide/from16 v14, v22

    .end local v14    # "rxBytes":J
    .local v28, "rxBytes":J
    move-wide/from16 v16, v24

    move-object/from16 v18, v2

    invoke-virtual/range {v3 .. v18}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    .line 603
    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .locals 27
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J
    .param p15, "r"    # Ljava/util/Random;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide/from16 v0, p3

    .line 611
    move-object/from16 v2, p15

    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 613
    new-instance v18, Landroid/net/NetworkStats$Entry;

    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v3, v18

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    .end local p5    # "rxBytes":J
    .end local p7    # "rxPackets":J
    .end local p9    # "txBytes":J
    .end local p11    # "txPackets":J
    .end local p13    # "operations":J
    .local v3, "rxBytes":J
    .local v5, "rxPackets":J
    .local v7, "txBytes":J
    .local v9, "txPackets":J
    .local v11, "operations":J
    .local v18, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    move-object/from16 v13, v18

    .line 615
    .end local v18    # "entry":Landroid/net/NetworkStats$Entry;
    .local v13, "entry":Landroid/net/NetworkStats$Entry;
    const-wide/16 v14, 0x400

    cmp-long v16, v3, v14

    if-gtz v16, :cond_1

    const-wide/16 v16, 0x80

    cmp-long v18, v5, v16

    if-gtz v18, :cond_1

    cmp-long v14, v7, v14

    if-gtz v14, :cond_1

    cmp-long v14, v9, v16

    if-gtz v14, :cond_1

    const-wide/16 v14, 0x20

    cmp-long v14, v11, v14

    if-lez v14, :cond_0

    goto :goto_1

    .line 634
    :cond_0
    return-void

    .line 617
    :cond_1
    :goto_1
    move-wide/from16 v14, p1

    invoke-static {v2, v14, v15, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v16

    .line 618
    .local v16, "curStart":J
    sub-long v18, v0, v16

    const-wide/16 v20, 0x2

    div-long v0, v18, v20

    const-wide/16 v14, 0x0

    invoke-static {v2, v14, v15, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    add-long v0, v16, v0

    .line 620
    .local v0, "curEnd":J
    move-wide/from16 v25, v0

    invoke-static {v2, v14, v15, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    .end local v0    # "curEnd":J
    .local v25, "curEnd":J
    iput-wide v0, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 621
    invoke-static {v2, v14, v15, v5, v6}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 622
    invoke-static {v2, v14, v15, v7, v8}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 623
    invoke-static {v2, v14, v15, v9, v10}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 624
    invoke-static {v2, v14, v15, v11, v12}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v13, Landroid/net/NetworkStats$Entry;->operations:J

    .line 626
    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v3, v0

    .line 627
    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v5, v0

    .line 628
    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v7, v0

    .line 629
    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v9, v0

    .line 630
    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long/2addr v11, v0

    .line 632
    move-object/from16 v19, p0

    move-wide/from16 v20, v16

    move-wide/from16 v22, v25

    move-object/from16 v24, v13

    invoke-virtual/range {v19 .. v24}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 633
    .end local v16    # "curStart":J
    .end local v25    # "curEnd":J
    nop

    .line 613
    move-object/from16 v18, v13

    move-wide/from16 v0, p3

    goto :goto_0
.end method

.method public getBucketDuration()J
    .locals 2

    .line 228
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 4

    .line 240
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    return-wide v0

    .line 243
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getIndexAfter(J)I
    .locals 3
    .param p1, "time"    # J

    .line 273
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 274
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 275
    not-int v0, v0

    goto :goto_0

    .line 277
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 279
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method public getIndexBefore(J)I
    .locals 3
    .param p1, "time"    # J

    .line 259
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 260
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 261
    not-int v1, v0

    add-int/lit8 v1, v1, -0x1

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    goto :goto_1

    .line 263
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 265
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :goto_1
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method public getStart()J
    .locals 2

    .line 232
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0

    .line 235
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 251
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 6
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 286
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .line 287
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 288
    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 289
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v2, -0x1

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 290
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 291
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 292
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 293
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 294
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 295
    return-object v0
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 21
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "now"    # J
    .param p7, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 544
    if-eqz p7, :cond_0

    move-object/from16 v7, p7

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v7}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .line 545
    .local v7, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    sub-long v8, v3, v1

    iput-wide v8, v7, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 546
    iput-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 547
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_1

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_1
    move-wide v13, v9

    :goto_1
    iput-wide v13, v7, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 548
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v8, :cond_2

    const-wide/16 v13, 0x0

    goto :goto_2

    :cond_2
    move-wide v13, v9

    :goto_2
    iput-wide v13, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 549
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v8, :cond_3

    const-wide/16 v13, 0x0

    goto :goto_3

    :cond_3
    move-wide v13, v9

    :goto_3
    iput-wide v13, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 550
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v8, :cond_4

    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_4
    move-wide v13, v9

    :goto_4
    iput-wide v13, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 551
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v8, :cond_5

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_5
    move-wide v13, v9

    :goto_5
    iput-wide v13, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 552
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v8, :cond_6

    const-wide/16 v9, 0x0

    nop

    :cond_6
    iput-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 554
    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v8

    .line 555
    .local v8, "startIndex":I
    move v9, v8

    .local v9, "i":I
    :goto_6
    if-ltz v9, :cond_14

    .line 556
    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v13, v10, v9

    .line 557
    .local v13, "curStart":J
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v10, v13, v11

    .line 560
    .local v10, "curEnd":J
    cmp-long v12, v10, v1

    if-gtz v12, :cond_7

    .end local v9    # "i":I
    .end local v10    # "curEnd":J
    .end local v13    # "curStart":J
    goto/16 :goto_d

    .line 562
    .restart local v9    # "i":I
    .restart local v10    # "curEnd":J
    .restart local v13    # "curStart":J
    :cond_7
    cmp-long v12, v13, v3

    if-ltz v12, :cond_8

    .line 555
    .end local v10    # "curEnd":J
    .end local v13    # "curStart":J
    const-wide/16 v15, 0x0

    goto/16 :goto_c

    .line 565
    .restart local v10    # "curEnd":J
    .restart local v13    # "curStart":J
    :cond_8
    cmp-long v12, v13, p5

    if-gez v12, :cond_9

    cmp-long v12, v10, p5

    if-lez v12, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    .line 567
    .local v12, "activeBucket":Z
    :goto_7
    if-eqz v12, :cond_a

    .line 568
    iget-wide v5, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .local v5, "overlap":J
    goto :goto_a

    .line 570
    .end local v5    # "overlap":J
    :cond_a
    cmp-long v5, v10, v3

    if-gez v5, :cond_b

    move-wide v5, v10

    goto :goto_8

    :cond_b
    move-wide v5, v3

    .line 571
    .local v5, "overlapEnd":J
    :goto_8
    cmp-long v17, v13, v1

    if-lez v17, :cond_c

    move-wide/from16 v17, v13

    goto :goto_9

    :cond_c
    move-wide/from16 v17, v1

    .line 572
    .local v17, "overlapStart":J
    :goto_9
    sub-long v5, v5, v17

    .line 574
    .end local v17    # "overlapStart":J
    .local v5, "overlap":J
    :goto_a
    const-wide/16 v15, 0x0

    cmp-long v17, v5, v15

    if-gtz v17, :cond_d

    .end local v5    # "overlap":J
    .end local v10    # "curEnd":J
    .end local v12    # "activeBucket":Z
    .end local v13    # "curStart":J
    goto :goto_c

    .line 577
    .restart local v5    # "overlap":J
    .restart local v10    # "curEnd":J
    .restart local v12    # "activeBucket":Z
    .restart local v13    # "curStart":J
    :cond_d
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_e

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    aget-wide v3, v3, v9

    mul-long/2addr v3, v5

    move-wide/from16 v19, v10

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .end local v10    # "curEnd":J
    .local v19, "curEnd":J
    div-long/2addr v3, v10

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    goto :goto_b

    .line 578
    .end local v19    # "curEnd":J
    .restart local v10    # "curEnd":J
    :cond_e
    move-wide/from16 v19, v10

    .end local v10    # "curEnd":J
    .restart local v19    # "curEnd":J
    :goto_b
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_f

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v3, v3, v9

    mul-long/2addr v3, v5

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v3, v10

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 579
    :cond_f
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_10

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v3, v3, v9

    mul-long/2addr v3, v5

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v3, v10

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 580
    :cond_10
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_11

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v3, v3, v9

    mul-long/2addr v3, v5

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v3, v10

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 581
    :cond_11
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_12

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v3, v3, v9

    mul-long/2addr v3, v5

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v3, v10

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 582
    :cond_12
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_13

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v3, v3, v9

    mul-long/2addr v3, v5

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v3, v10

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 555
    .end local v5    # "overlap":J
    .end local v12    # "activeBucket":Z
    .end local v13    # "curStart":J
    .end local v19    # "curEnd":J
    :cond_13
    :goto_c
    add-int/lit8 v9, v9, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    goto/16 :goto_6

    .line 584
    .end local v9    # "i":I
    :cond_14
    :goto_d
    return-object v7
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 8
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 536
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    return-object v0
.end method

.method public intersects(JJ)Z
    .locals 6
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 644
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    .line 645
    .local v0, "dataStart":J
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 646
    .local v2, "dataEnd":J
    cmp-long v4, p1, v0

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    return v5

    .line 647
    :cond_0
    cmp-long v4, p3, v0

    if-ltz v4, :cond_1

    cmp-long v4, p3, v2

    if-gtz v4, :cond_1

    return v5

    .line 648
    :cond_1
    cmp-long v4, v0, p1

    if-ltz v4, :cond_2

    cmp-long v4, v0, p3

    if-gtz v4, :cond_2

    return v5

    .line 649
    :cond_2
    cmp-long v4, v2, p1

    if-ltz v4, :cond_3

    cmp-long v4, v2, p3

    if-gtz v4, :cond_3

    return v5

    .line 650
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public recordData(JJJJ)V
    .locals 16
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "txBytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    new-instance v15, Landroid/net/NetworkStats$Entry;

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v0, v15

    move-wide/from16 v5, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 324
    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .locals 44
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "entry"    # Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 331
    move-object/from16 v5, p5

    iget-wide v6, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 332
    .local v6, "rxBytes":J
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 333
    .local v8, "rxPackets":J
    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 334
    .local v10, "txBytes":J
    iget-wide v12, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 335
    .local v12, "txPackets":J
    iget-wide v14, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 337
    .local v14, "operations":J
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 340
    sget-object v0, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    const-string v1, "entry.isNegative() tried recording negative data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v0, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rxBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v0, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rxPackets = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget-object v0, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "txBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v0, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "txPackets = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v0, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "operations = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 353
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    return-void

    .line 358
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 361
    sub-long v16, v3, v1

    .line 362
    .local v16, "duration":J
    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v18

    .line 363
    .local v18, "startIndex":I
    move-wide/from16 v19, v6

    move/from16 v6, v18

    .line 363
    .local v6, "i":I
    .local v19, "rxBytes":J
    :goto_0
    if-ltz v6, :cond_5

    .line 364
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-wide/from16 v21, v14

    aget-wide v14, v7, v6

    .line 365
    .local v14, "curStart":J
    .local v21, "operations":J
    move/from16 v23, v6

    iget-wide v5, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 365
    .end local v6    # "i":I
    .local v23, "i":I
    add-long/2addr v5, v14

    .line 368
    .local v5, "curEnd":J
    cmp-long v7, v5, v1

    if-gez v7, :cond_2

    .line 392
    .end local v5    # "curEnd":J
    .end local v14    # "curStart":J
    .end local v23    # "i":I
    move-wide/from16 v32, v12

    goto/16 :goto_3

    .line 370
    .restart local v5    # "curEnd":J
    .restart local v14    # "curStart":J
    .restart local v23    # "i":I
    :cond_2
    cmp-long v7, v14, v3

    if-lez v7, :cond_3

    .line 370
    .end local v5    # "curEnd":J
    .end local v14    # "curStart":J
    goto :goto_1

    .line 372
    .restart local v5    # "curEnd":J
    .restart local v14    # "curStart":J
    :cond_3
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v24

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    sub-long v1, v24, v26

    .line 373
    .local v1, "overlap":J
    const-wide/16 v24, 0x0

    cmp-long v7, v1, v24

    if-gtz v7, :cond_4

    .line 363
    .end local v1    # "overlap":J
    .end local v5    # "curEnd":J
    .end local v14    # "curStart":J
    :goto_1
    move-wide/from16 v14, v21

    move-wide/from16 v42, v12

    move/from16 v12, v23

    move-wide/from16 v23, v42

    goto :goto_2

    .line 376
    .restart local v1    # "overlap":J
    .restart local v5    # "curEnd":J
    .restart local v14    # "curStart":J
    :cond_4
    mul-long v24, v19, v1

    div-long v3, v24, v16

    .line 377
    .local v3, "fracRxBytes":J
    mul-long v24, v8, v1

    move-wide/from16 v28, v5

    div-long v5, v24, v16

    .line 378
    .local v5, "fracRxPackets":J
    .local v28, "curEnd":J
    mul-long v24, v10, v1

    move-wide/from16 v30, v14

    div-long v14, v24, v16

    .line 379
    .local v14, "fracTxBytes":J
    .local v30, "curStart":J
    mul-long v24, v12, v1

    move-wide/from16 v32, v12

    div-long v12, v24, v16

    .line 380
    .local v12, "fracTxPackets":J
    .local v32, "txPackets":J
    mul-long v24, v21, v1

    move-wide/from16 v34, v12

    div-long v12, v24, v16

    .line 382
    .local v12, "fracOperations":J
    .local v34, "fracTxPackets":J
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-wide/from16 v36, v12

    move/from16 v12, v23

    invoke-static {v7, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 383
    .end local v23    # "i":I
    .local v12, "i":I
    .local v36, "fracOperations":J
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v7, v12, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v19, v19, v3

    .line 384
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v7, v12, v5, v6}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long/2addr v8, v5

    .line 385
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v7, v12, v14, v15}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long/2addr v10, v14

    .line 386
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-wide/from16 v38, v3

    move-wide/from16 v3, v34

    invoke-static {v7, v12, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 386
    .end local v34    # "fracTxPackets":J
    .local v3, "fracTxPackets":J
    .local v38, "fracRxBytes":J
    sub-long v23, v32, v3

    .line 387
    .end local v32    # "txPackets":J
    .local v23, "txPackets":J
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-wide/from16 v40, v3

    move-wide/from16 v3, v36

    invoke-static {v7, v12, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 387
    .end local v36    # "fracOperations":J
    .local v3, "fracOperations":J
    .local v40, "fracTxPackets":J
    sub-long v21, v21, v3

    .line 389
    sub-long v16, v16, v1

    .line 363
    .end local v1    # "overlap":J
    .end local v3    # "fracOperations":J
    .end local v5    # "fracRxPackets":J
    .end local v14    # "fracTxBytes":J
    .end local v28    # "curEnd":J
    .end local v30    # "curStart":J
    .end local v38    # "fracRxBytes":J
    .end local v40    # "fracTxPackets":J
    move-wide/from16 v14, v21

    .line 363
    .end local v21    # "operations":J
    .local v14, "operations":J
    :goto_2
    add-int/lit8 v6, v12, -0x1

    .line 363
    .end local v12    # "i":I
    .restart local v6    # "i":I
    move-wide/from16 v12, v23

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    goto/16 :goto_0

    .line 392
    .end local v6    # "i":I
    .end local v23    # "txPackets":J
    .local v12, "txPackets":J
    :cond_5
    move-wide/from16 v32, v12

    move-wide/from16 v21, v14

    .line 392
    .end local v12    # "txPackets":J
    .end local v14    # "operations":J
    .restart local v21    # "operations":J
    .restart local v32    # "txPackets":J
    :goto_3
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    move-object/from16 v3, p5

    iget-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 393
    return-void
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .locals 6
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;

    .line 400
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 401
    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .locals 23
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;
    .param p2, "start"    # J
    .param p4, "end"    # J

    move-object/from16 v0, p1

    .line 409
    new-instance v16, Landroid/net/NetworkStats$Entry;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 411
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v2, v3, :cond_2

    .line 412
    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v3, v3, v2

    .line 413
    .local v3, "bucketStart":J
    iget-wide v5, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v5, v3

    .line 416
    .local v5, "bucketEnd":J
    cmp-long v9, v3, p2

    if-ltz v9, :cond_1

    cmp-long v11, v5, p4

    if-lez v11, :cond_0

    .end local v3    # "bucketStart":J
    .end local v5    # "bucketEnd":J
    goto :goto_1

    .line 418
    .restart local v3    # "bucketStart":J
    .restart local v5    # "bucketEnd":J
    :cond_0
    iget-object v11, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v12, 0x0

    invoke-static {v11, v2, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v14

    iput-wide v14, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 419
    iget-object v11, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v11, v2, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v14

    iput-wide v14, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 420
    iget-object v11, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v11, v2, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v14

    iput-wide v14, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 421
    iget-object v11, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v11, v2, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v14

    iput-wide v14, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 422
    iget-object v11, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v11, v2, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v11

    iput-wide v11, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 424
    move-object/from16 v17, p0

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v22}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 411
    .end local v3    # "bucketStart":J
    .end local v5    # "bucketEnd":J
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 6
    .param p1, "cutoff"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_1

    .line 508
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v1, v0

    .line 509
    .local v1, "curStart":J
    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v3, v1

    .line 513
    .local v3, "curEnd":J
    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    goto :goto_1

    .line 507
    .end local v1    # "curStart":J
    .end local v3    # "curEnd":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_1
    :goto_1
    if-lez v0, :cond_8

    .line 517
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    .line 518
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 519
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 520
    :cond_2
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 521
    :cond_3
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 522
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 523
    :cond_5
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 524
    :cond_6
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 525
    :cond_7
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 529
    .end local v1    # "length":I
    :cond_8
    return-void
.end method

.method public setValues(ILandroid/net/NetworkStatsHistory$Entry;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 300
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 301
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 303
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    aput-wide v1, v0, p1

    .line 304
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 305
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 306
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 307
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 308
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 309
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 312
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 313
    :cond_2
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 314
    :cond_3
    return-void
.end method

.method public size()I
    .locals 1

    .line 224
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 722
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 723
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 724
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 155
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 156
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 157
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 158
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 159
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 160
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 161
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 694
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 696
    .local v0, "start":J
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 698
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v2, v3, :cond_0

    .line 699
    const-wide v6, 0x20b00000002L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 701
    .local v6, "startBucket":J
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v8, v3, v2

    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 702
    const-wide v8, 0x10300000002L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 703
    const-wide v8, 0x10300000003L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 704
    const-wide v8, 0x10300000004L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 705
    const-wide v8, 0x10300000005L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 706
    const-wide v8, 0x10300000006L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 708
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 698
    .end local v6    # "startBucket":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 712
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 208
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 209
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 210
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 211
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 212
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 213
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 214
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 215
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 216
    return-void
.end method
