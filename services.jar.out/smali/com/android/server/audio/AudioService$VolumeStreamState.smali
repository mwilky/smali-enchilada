.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private mIndexMax:I

.field private mIndexMin:I

.field private mIsMuted:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .line 5527
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5523
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 5529
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 5531
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 5532
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 5533
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 5534
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 5536
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 5537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 5538
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 5540
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5541
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/audio/AudioService$1;

    .line 5514
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 5514
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5514
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5514
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5514
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5514
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5514
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5514
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5514
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Z

    .line 5514
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5514
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5972
    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5973
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5974
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5975
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5976
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5977
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5978
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5979
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_3

    .line 5980
    if-lez v1, :cond_0

    .line 5981
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5983
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 5984
    .local v2, "device":I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5985
    if-ne v2, v3, :cond_1

    const-string v3, "default"

    goto :goto_1

    .line 5986
    :cond_1
    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 5987
    .local v3, "deviceName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5988
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5989
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5990
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5992
    :cond_2
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5993
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    .line 5994
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5979
    .end local v2    # "device":I
    .end local v3    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5996
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5997
    const-string v1, "   Devices: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5998
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;I)I

    move-result v1

    .line 5999
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 6002
    .local v0, "n":I
    .local v2, "i":I
    :goto_2
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    move v5, v4

    .local v5, "device":I
    if-eq v4, v3, :cond_6

    .line 6003
    and-int v4, v1, v5

    if-eqz v4, :cond_5

    .line 6004
    add-int/lit8 v4, v0, 0x1

    .local v4, "n":I
    if-lez v0, :cond_4

    .line 6005
    .end local v0    # "n":I
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6007
    :cond_4
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6009
    move v0, v4

    .end local v4    # "n":I
    .restart local v0    # "n":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6011
    :cond_6
    return-void
.end method

.method private getAbsoluteVolumeIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .line 5641
    if-nez p1, :cond_0

    .line 5643
    const/4 p1, 0x0

    goto :goto_0

    .line 5644
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5646
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_0

    .line 5647
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 5649
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_0

    .line 5650
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 5652
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_0

    .line 5655
    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 p1, v0, 0xa

    .line 5657
    :goto_0
    return p1
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 5962
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_0

    .line 5963
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0

    .line 5964
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 5968
    :cond_1
    return p1

    .line 5965
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method private hasValidSettingsName()Z
    .locals 1

    .line 5576
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .locals 1
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 5726
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .locals 5

    .line 5685
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x5

    if-ge v1, v2, :cond_7

    .line 5689
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 5690
    .local v2, "device":I
    if-eq v2, v3, :cond_6

    .line 5693
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v4, :cond_2

    and-int/lit16 v3, v2, 0x380

    if-nez v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 5699
    :cond_1
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    goto :goto_2

    .line 5700
    .end local v3    # "index":I
    :cond_2
    and-int/lit16 v3, v2, 0x380

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 5701
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5702
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v3

    goto :goto_1

    .line 5703
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_4

    .line 5704
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 5705
    :cond_4
    const/high16 v3, 0x8000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 5706
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 5708
    :cond_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    .line 5710
    .restart local v3    # "index":I
    :goto_2
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v3, v2}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5688
    .end local v2    # "device":I
    .end local v3    # "index":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5715
    .end local v1    # "i":I
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v1, :cond_8

    .line 5716
    const/4 v1, 0x0

    .local v1, "index":I
    goto :goto_3

    .line 5718
    .end local v1    # "index":I
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0xa

    .line 5720
    .restart local v1    # "index":I
    :goto_3
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v3}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5722
    .end local v1    # "index":I
    monitor-exit v0

    .line 5723
    return-void

    .line 5722
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 2
    .param p1, "device"    # I

    .line 5665
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_2

    and-int/lit16 v0, p1, 0x380

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 5671
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    goto :goto_1

    .line 5672
    .end local v0    # "index":I
    :cond_2
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5673
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    goto :goto_0

    .line 5674
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 5675
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 5676
    :cond_4
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_5

    .line 5677
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 5679
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    .line 5681
    .restart local v0    # "index":I
    :goto_1
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5682
    return-void
.end method

.method public checkFixedVolumeDevices()V
    .locals 6

    .line 5945
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5947
    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 5948
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5949
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 5950
    .local v2, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 5951
    .local v3, "index":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v4, v2

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 5953
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 5955
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 5948
    .end local v2    # "device":I
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5958
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 5959
    return-void

    .line 5958
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIndex(I)I
    .locals 4
    .param p1, "device"    # I

    .line 5831
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 5833
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    .line 5835
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move v1, v2

    .line 5837
    :cond_0
    monitor-exit v0

    return v1

    .line 5838
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    .line 5848
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .locals 1

    .line 5852
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # I

    .line 5565
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5566
    const/4 v0, 0x0

    return-object v0

    .line 5568
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 5569
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5570
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v1

    .line 5572
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStreamType()I
    .locals 1

    .line 5941
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .locals 3
    .param p1, "device"    # I

    .line 5842
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 5844
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mute(Z)V
    .locals 10
    .param p1, "state"    # Z

    .line 5914
    const/4 v0, 0x0

    .line 5915
    .local v0, "changed":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5916
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v2, :cond_0

    .line 5917
    const/4 v0, 0x1

    .line 5918
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 5923
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5930
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5931
    if-eqz v0, :cond_1

    .line 5933
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5934
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5935
    const-string v2, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5936
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5938
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 5930
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .locals 5
    .param p1, "checkOthers"    # Z

    .line 5544
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 5545
    .local v0, "devices":I
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v1, :cond_0

    .line 5546
    return v0

    .line 5548
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 5549
    .local v1, "prevDevices":I
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 5550
    if-eqz p1, :cond_1

    .line 5552
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;I)V

    .line 5555
    :cond_1
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v2, v3, :cond_2

    .line 5556
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 5558
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 5559
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 5560
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 5558
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5561
    return v0
.end method

.method public readSettings()V
    .locals 12

    .line 5580
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5581
    :try_start_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5583
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    .line 5584
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5585
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 5590
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eq v2, v5, :cond_7

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v6, 0x7

    if-ne v2, v6, :cond_1

    goto :goto_4

    .line 5599
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5600
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5601
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5602
    const v0, 0x4fffffff    # 8.5899341E9f

    .line 5604
    .local v0, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v0, :cond_6

    .line 5605
    shl-int v6, v5, v2

    .line 5606
    .local v6, "device":I
    and-int v7, v6, v0

    if-nez v7, :cond_2

    .line 5607
    goto :goto_3

    .line 5609
    :cond_2
    not-int v7, v6

    and-int/2addr v0, v7

    .line 5614
    const/4 v7, -0x1

    if-ne v6, v3, :cond_3

    .line 5615
    :try_start_5
    sget-object v8, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v8, v8, v9

    goto :goto_1

    :cond_3
    move v8, v7

    .line 5617
    .local v8, "defaultIndex":I
    :goto_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v9

    if-nez v9, :cond_4

    .line 5618
    move v9, v8

    .local v9, "index":I
    goto :goto_2

    .line 5620
    .end local v9    # "index":I
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v9

    .line 5621
    .local v9, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 5622
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, -0x2

    .line 5621
    invoke-static {v10, v9, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .end local v9    # "name":Ljava/lang/String;
    move v9, v10

    .line 5624
    .local v9, "index":I
    :goto_2
    if-ne v9, v7, :cond_5

    .line 5625
    goto :goto_3

    .line 5628
    :cond_5
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int v10, v4, v9

    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v10

    invoke-virtual {v7, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 5604
    .end local v6    # "device":I
    .end local v8    # "defaultIndex":I
    .end local v9    # "index":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5630
    .end local v0    # "remainingDevices":I
    .end local v2    # "i":I
    :cond_6
    monitor-exit v1

    .line 5631
    return-void

    .line 5630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 5592
    :cond_7
    :goto_4
    :try_start_6
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v5

    mul-int/2addr v4, v2

    .line 5593
    .local v4, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5594
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move v4, v2

    .line 5596
    :cond_8
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5597
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    .line 5599
    .end local v4    # "index":I
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    .line 5600
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method public refreshRange(I)V
    .locals 5
    .param p1, "sourceStreamType"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "VolumeStreamState.class"
    .end annotation

    .line 5863
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v0, v0, p1

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 5864
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p1

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 5866
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5867
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 5868
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 5869
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5866
    .end local v1    # "device":I
    .end local v2    # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5871
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 7
    .param p1, "srcStream"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "VolumeStreamState.class"
    .end annotation

    .line 5883
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_0

    .line 5884
    return-void

    .line 5886
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    .line 5889
    .local v0, "srcStreamType":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 5890
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 5891
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5892
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5891
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5895
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 5896
    .local v3, "srcMap":Landroid/util/SparseIntArray;
    nop

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 5897
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 5898
    .local v4, "device":I
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 5899
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v1, v0, v6}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 5901
    invoke-virtual {p0, v1, v4, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5896
    .end local v4    # "device":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5903
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public setAllIndexesToMax()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "VolumeStreamState.class"
    .end annotation

    .line 5908
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5909
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5911
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setIndex(IILjava/lang/String;)Z
    .locals 18
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 5733
    move-object/from16 v4, p3

    const/4 v0, 0x3

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    const-string v6, "ThreeKeySpeakerMediaVolume"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5734
    :cond_0
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v0, :cond_1

    if-ne v3, v5, :cond_1

    .line 5735
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v2}, Lcom/android/server/audio/AudioService;->access$5202(Lcom/android/server/audio/AudioService;I)I

    .line 5736
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIndex mPerSpeakerMediaVolume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    :cond_1
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v0, :cond_2

    const/16 v6, 0x10

    if-ne v3, v6, :cond_2

    .line 5739
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v2}, Lcom/android/server/audio/AudioService;->access$5302(Lcom/android/server/audio/AudioService;I)I

    .line 5740
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIndex mPerScoMediaVolume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5746
    :cond_2
    const/4 v6, 0x0

    if-eqz v4, :cond_3

    const-string v7, "GradientingMusicVol"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    iget v7, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v7, v0, :cond_4

    .line 5747
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->access$5402(Lcom/android/server/audio/AudioService;Z)Z

    .line 5750
    :cond_4
    const/4 v7, 0x0

    .line 5756
    .local v7, "changed":Z
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 5757
    :try_start_0
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5758
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 5759
    .local v0, "oldIndex":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v10

    move v2, v10

    .line 5760
    .end local p1    # "index":I
    .local v2, "index":I
    iget v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_5

    iget-object v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 5761
    iget v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move v2, v10

    .line 5763
    :cond_5
    iget-object v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5765
    const/4 v10, 0x1

    if-eq v0, v2, :cond_6

    move v11, v10

    goto :goto_0

    :cond_6
    move v11, v6

    :goto_0
    move v7, v11

    .line 5773
    iget-object v11, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v12, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v11, v12}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v11

    .line 5774
    .local v11, "currentStreamDevice":I
    if-ne v3, v11, :cond_7

    move v12, v10

    goto :goto_1

    :cond_7
    move v12, v6

    .line 5776
    .local v12, "currentDevice":Z
    :goto_1
    iget-object v13, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v14, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v13, v14}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v13

    if-ne v3, v13, :cond_8

    goto :goto_2

    :cond_8
    move v10, v6

    .line 5777
    .local v10, "isCurrentDevice":Z
    :goto_2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    .line 5778
    .local v13, "numStreamTypes":I
    add-int/lit8 v14, v13, -0x1

    .line 5778
    .local v14, "streamType":I
    :goto_3
    if-ltz v14, :cond_b

    .line 5779
    iget-object v15, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v15}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v15

    aget-object v15, v15, v14

    .line 5780
    .local v15, "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v14, v6, :cond_a

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v14

    iget v5, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v5, :cond_a

    if-nez v7, :cond_9

    .line 5782
    invoke-virtual {v15, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 5783
    :cond_9
    iget-object v5, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v2, v6, v14}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v5

    .line 5784
    .local v5, "scaledIndex":I
    invoke-virtual {v15, v5, v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5785
    if-eqz v10, :cond_a

    .line 5786
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 5787
    invoke-static {v6, v14}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v6

    .line 5786
    invoke-virtual {v15, v5, v6, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5778
    .end local v5    # "scaledIndex":I
    .end local v15    # "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_a
    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_3

    .line 5792
    .end local v14    # "streamType":I
    :cond_b
    if-eqz v7, :cond_d

    iget v5, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    if-ne v3, v6, :cond_d

    .line 5794
    const/16 v16, 0x0

    .line 5794
    .local v16, "i":I
    :goto_4
    move/from16 v5, v16

    .line 5794
    .end local v16    # "i":I
    .local v5, "i":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 5795
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 5796
    .local v6, "otherDevice":I
    and-int/lit8 v14, v6, 0x70

    if-eqz v14, :cond_c

    .line 5797
    iget-object v14, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5794
    .end local v6    # "otherDevice":I
    :cond_c
    add-int/lit8 v16, v5, 0x1

    .line 5794
    .end local v5    # "i":I
    .restart local v16    # "i":I
    goto :goto_4

    .line 5801
    .end local v10    # "isCurrentDevice":Z
    .end local v12    # "currentDevice":Z
    .end local v13    # "numStreamTypes":I
    .end local v16    # "i":I
    :cond_d
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v11

    .line 5802
    .end local v11    # "currentStreamDevice":I
    .local v5, "currentStreamDevice":I
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5803
    if-eqz v7, :cond_11

    .line 5804
    add-int/lit8 v6, v0, 0x5

    div-int/lit8 v0, v6, 0xa

    .line 5805
    add-int/lit8 v6, v2, 0x5

    div-int/lit8 v2, v6, 0xa

    .line 5807
    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v8

    iget v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v8, :cond_f

    .line 5808
    if-nez v4, :cond_e

    .line 5809
    const-string v6, "AudioService"

    const-string v8, "No caller for volume_changed event"

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5811
    :cond_e
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v8, v8, 0xa

    invoke-static {v6, v0, v2, v8, v4}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    .line 5817
    :cond_f
    if-eqz v4, :cond_10

    const-string v6, "ThreeKeySpeakerMediaVolume"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    .line 5820
    :cond_10
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v6, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5821
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5822
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    sget-object v9, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v9, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5824
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    invoke-static {v6, v8}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5827
    :cond_11
    return v7

    .line 5801
    .end local v0    # "oldIndex":I
    .end local v2    # "index":I
    .end local v5    # "currentStreamDevice":I
    .restart local p1    # "index":I
    :catchall_0
    move-exception v0

    .line 5801
    .end local p1    # "index":I
    .restart local v2    # "index":I
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 5802
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :catchall_1
    move-exception v0

    .line 5802
    .end local p1    # "index":I
    .restart local v2    # "index":I
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
