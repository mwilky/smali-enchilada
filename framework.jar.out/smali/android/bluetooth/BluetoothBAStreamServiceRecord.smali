.class public final Landroid/bluetooth/BluetoothBAStreamServiceRecord;
.super Ljava/lang/Object;
.source "BluetoothBAStreamServiceRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BSSR_AFH_CHANNEL_MAP_UPDATE_METHOD_NONE:J = 0x0L

.field public static final BSSR_AFH_CHANNEL_MAP_UPDATE_METHOD_SCM:J = 0x1L

.field public static final BSSR_AFH_CHANNEL_MAP_UPDATE_METHOD_TRIGGERED_SYNC_TRAIN:J = 0x2L

.field public static final BSSR_CHANNELS_MONO:J = 0x1L

.field public static final BSSR_CHANNELS_STEREO:J = 0x4L

.field public static final BSSR_CODEC_FREQ_11025HZ:J = 0x2L

.field public static final BSSR_CODEC_FREQ_128KHZ:J = 0x1000L

.field public static final BSSR_CODEC_FREQ_12KHZ:J = 0x4L

.field public static final BSSR_CODEC_FREQ_16KHZ:J = 0x8L

.field public static final BSSR_CODEC_FREQ_176400HZ:J = 0x2000L

.field public static final BSSR_CODEC_FREQ_192KHZ:J = 0x4000L

.field public static final BSSR_CODEC_FREQ_22050HZ:J = 0x10L

.field public static final BSSR_CODEC_FREQ_24KHZ:J = 0x20L

.field public static final BSSR_CODEC_FREQ_32KHZ:J = 0x40L

.field public static final BSSR_CODEC_FREQ_44100HZ:J = 0x80L

.field public static final BSSR_CODEC_FREQ_48KHZ:J = 0x100L

.field public static final BSSR_CODEC_FREQ_64KHZ:J = 0x200L

.field public static final BSSR_CODEC_FREQ_88200HZ:J = 0x400L

.field public static final BSSR_CODEC_FREQ_8KHZ:J = 0x1L

.field public static final BSSR_CODEC_FREQ_96KHZ:J = 0x800L

.field public static final BSSR_CODEC_TYPE_CELT:J = 0x1L

.field public static final BSSR_ERASURE_CODE_2_5:J = 0x1L

.field public static final BSSR_ERASURE_CODE_3_7:J = 0x2L

.field public static final BSSR_ERASURE_CODE_3_8:J = 0x3L

.field public static final BSSR_ERASURE_CODE_3_9:J = 0x4L

.field public static final BSSR_ERASURE_CODE_NONE:J = 0x0L

.field public static final BSSR_SAMPLE_SIZE_16_BIT:J = 0x2L

.field public static final BSSR_SAMPLE_SIZE_24_BIT:J = 0x4L

.field public static final BSSR_SAMPLE_SIZE_8_BIT:J = 0x1L

.field public static final BSSR_SCMST_SUPPORT_COPY:J = 0x1L

.field public static final BSSR_SCMST_SUPPORT_FORWARD:J = 0x2L

.field public static final BSSR_SECURITY_ENCRYPT_TYPE_AESCCM:J = 0x200L

.field public static final BSSR_SECURITY_ENCRYPT_TYPE_NONE:J = 0x100L

.field public static final BSSR_SECURITY_KEY_TYPE_PRIVATE:J = 0x1L

.field public static final BSSR_SECURITY_KEY_TYPE_TEMP:J = 0x2L

.field public static final BSSR_TYPE_AFH_UPDATE_METHOD_ID:I = 0x9

.field public static final BSSR_TYPE_AFH_UPDATE_METHOD_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_CHANNELS_ID:I = 0x7

.field public static final BSSR_TYPE_CHANNELS_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FRAME_SAMPLES_ID:I = 0xc

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FRAME_SAMPLES_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FRAME_SIZE_ID:I = 0xb

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FRAME_SIZE_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FREQ_ID:I = 0xa

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FREQ_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_ID:I = 0x3

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_ID_LEN:I = 0x6

.field public static final BSSR_TYPE_CODEC_TYPE_ID:I = 0x2

.field public static final BSSR_TYPE_CODEC_TYPE_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_ERASURE_CODE_ID:I = 0x6

.field public static final BSSR_TYPE_ERASURE_CODE_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_SAMPLE_SIZE_ID:I = 0x8

.field public static final BSSR_TYPE_SAMPLE_SIZE_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_SCMST_SUPPORT_ID:I = 0x5

.field public static final BSSR_TYPE_SCMST_SUPPORT_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_SECURITY_ID:I = 0x1

.field public static final BSSR_TYPE_SECURITY_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_STREAM_ID:I = 0x0

.field public static final BSSR_TYPE_STREAM_ID_LEN:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothBAStreamServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "BluetoothBAStreamServiceRecord"


# instance fields
.field mNumRecords:I

.field private mServiceRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothBAStreamServiceRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothBAStreamServiceRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    iput p1, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mNumRecords:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mNumRecords:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mNumRecords:I

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothBAStreamServiceRecord$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothBAStreamServiceRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addServiceRecord(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addServiceRecordValue(Ljava/lang/Long;ILjava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNumRecords()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mNumRecords:I

    return v0
.end method

.method public getServiceRecord(Ljava/lang/Long;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getServiceRecordValue(Ljava/lang/Long;I)Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public getStreamIds()[Ljava/lang/Long;
    .locals 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    aput-object v4, v0, v1

    move v1, v5

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method
