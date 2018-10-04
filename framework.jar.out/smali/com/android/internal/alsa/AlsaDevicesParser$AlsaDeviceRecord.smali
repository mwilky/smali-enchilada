.class public Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaDevicesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaDeviceRecord"
.end annotation


# static fields
.field public static final kDeviceDir_Capture:I = 0x0

.field public static final kDeviceDir_Playback:I = 0x1

.field public static final kDeviceDir_Unknown:I = -0x1

.field public static final kDeviceType_Audio:I = 0x0

.field public static final kDeviceType_Control:I = 0x1

.field public static final kDeviceType_MIDI:I = 0x2

.field public static final kDeviceType_Unknown:I = -0x1


# instance fields
.field mCardNum:I

.field mDeviceDir:I

.field mDeviceNum:I

.field mDeviceType:I

.field final synthetic this$0:Lcom/android/internal/alsa/AlsaDevicesParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v0

    move v0, v10

    :goto_0
    move v12, v0

    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v0

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v11

    const/4 v0, -0x1

    const/4 v13, 0x1

    if-ne v11, v0, :cond_0

    nop

    return v13

    :cond_0
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v14

    invoke-virtual {v14, v2, v11}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    move v9, v0

    :cond_1
    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_0
    const-string v0, "capture"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v10, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    iget-object v0, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-static {v0, v13}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$202(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "playback"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v13, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    iget-object v0, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-static {v0, v13}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$302(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "audio"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v10, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "midi"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    iput v0, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    iget-object v0, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-static {v0, v13}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$102(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto :goto_1

    :pswitch_2
    const-string v0, "digital"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "control"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v13, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "raw"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    goto :goto_1

    :pswitch_4
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v15, 0x2d

    if-eq v0, v15, :cond_6

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v13, "AlsaDevicesParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse token "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " of "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/proc/asound/devices"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " token: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :pswitch_5
    nop

    :cond_6
    :goto_1
    nop

    add-int/lit8 v0, v12, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public textFormat()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    packed-switch v1, :pswitch_data_0

    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v1, " MIDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, " Control"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, " Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    packed-switch v1, :pswitch_data_1

    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v1, " Playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v1, " Capture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
