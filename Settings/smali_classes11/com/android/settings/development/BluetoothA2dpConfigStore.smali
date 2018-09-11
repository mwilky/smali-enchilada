.class public Lcom/android/settings/development/BluetoothA2dpConfigStore;
.super Ljava/lang/Object;
.source "BluetoothA2dpConfigStore.java"


# instance fields
.field private mBitsPerSample:I

.field private mChannelMode:I

.field private mCodecPriority:I

.field private mCodecSpecific1Value:J

.field private mCodecSpecific2Value:J

.field private mCodecSpecific3Value:J

.field private mCodecSpecific4Value:J

.field private mCodecType:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0xf4240

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    .line 29
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    .line 30
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    .line 31
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    return-void
.end method


# virtual methods
.method public createCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 15

    .line 74
    new-instance v14, Landroid/bluetooth/BluetoothCodecConfig;

    iget v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    iget v2, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    iget v3, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    iget v4, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    iget v5, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    iget-wide v6, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    iget-wide v8, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific2Value:J

    iget-wide v10, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific3Value:J

    iget-wide v12, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific4Value:J

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    return-object v14
.end method

.method public setBitsPerSample(I)V
    .locals 0
    .param p1, "bitsPerSample"    # I

    .line 50
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    .line 51
    return-void
.end method

.method public setChannelMode(I)V
    .locals 0
    .param p1, "channelMode"    # I

    .line 54
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    .line 55
    return-void
.end method

.method public setCodecPriority(I)V
    .locals 0
    .param p1, "codecPriority"    # I

    .line 42
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    .line 43
    return-void
.end method

.method public setCodecSpecific1Value(I)V
    .locals 2
    .param p1, "codecSpecific1Value"    # I

    .line 58
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    .line 59
    return-void
.end method

.method public setCodecSpecific2Value(I)V
    .locals 2
    .param p1, "codecSpecific2Value"    # I

    .line 62
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific2Value:J

    .line 63
    return-void
.end method

.method public setCodecSpecific3Value(I)V
    .locals 2
    .param p1, "codecSpecific3Value"    # I

    .line 66
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific3Value:J

    .line 67
    return-void
.end method

.method public setCodecSpecific4Value(I)V
    .locals 2
    .param p1, "codecSpecific4Value"    # I

    .line 70
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific4Value:J

    .line 71
    return-void
.end method

.method public setCodecType(I)V
    .locals 0
    .param p1, "codecType"    # I

    .line 38
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    .line 39
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .line 46
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    .line 47
    return-void
.end method
