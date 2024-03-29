.class public final Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-void
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    sparse-switch p0, :sswitch_data_0

    const-string v0, "Opcode: %02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "Abort"

    return-object v0

    :sswitch_1
    const-string v0, "Cdc Message"

    return-object v0

    :sswitch_2
    const-string v0, "Set Digital Timer"

    return-object v0

    :sswitch_3
    const-string v0, "Report Audio Status"

    return-object v0

    :sswitch_4
    const-string v0, "Set Timer Program Title"

    return-object v0

    :sswitch_5
    const-string v0, "Set Osd String"

    return-object v0

    :sswitch_6
    const-string v0, "Record Tv Screen"

    return-object v0

    :sswitch_7
    const-string v0, "Text View On"

    return-object v0

    :sswitch_8
    const-string v0, "Feature Abort"

    return-object v0

    :pswitch_0
    const-string v0, "Terminate ARC"

    return-object v0

    :pswitch_1
    const-string v0, "Request ARC Termination"

    return-object v0

    :pswitch_2
    const-string v0, "Request ARC Initiation"

    return-object v0

    :pswitch_3
    const-string v0, "Report ARC Terminated"

    return-object v0

    :pswitch_4
    const-string v0, "Report ARC Initiated"

    return-object v0

    :pswitch_5
    const-string v0, "Initiate ARC"

    return-object v0

    :pswitch_6
    const-string v0, "Request Short Audio Descriptor"

    return-object v0

    :pswitch_7
    const-string v0, "Repot Short Audio Descriptor"

    return-object v0

    :pswitch_8
    const-string v0, "Set External Timer"

    return-object v0

    :pswitch_9
    const-string v0, "Clear External Timer"

    return-object v0

    :pswitch_a
    const-string v0, "Vendor Command With Id"

    return-object v0

    :pswitch_b
    const-string v0, "Get Cec Version"

    return-object v0

    :pswitch_c
    const-string v0, "Cec Version"

    return-object v0

    :pswitch_d
    const-string v0, "InActive Source"

    return-object v0

    :pswitch_e
    const-string v0, "Set Audio Rate"

    return-object v0

    :pswitch_f
    const-string v0, "Clear Digital Timer"

    return-object v0

    :pswitch_10
    const-string v0, "Select Digital Service"

    return-object v0

    :pswitch_11
    const-string v0, "Select Analog Service"

    return-object v0

    :pswitch_12
    const-string v0, "Get Menu Language"

    return-object v0

    :pswitch_13
    const-string v0, "Report Power Status"

    return-object v0

    :pswitch_14
    const-string v0, "Give Device Power Status"

    return-object v0

    :pswitch_15
    const-string v0, "Menu Status"

    return-object v0

    :pswitch_16
    const-string v0, "Menu REquest"

    return-object v0

    :pswitch_17
    const-string v0, "Give Device Vendor Id"

    return-object v0

    :pswitch_18
    const-string v0, "Vendor Remote Button Up"

    return-object v0

    :pswitch_19
    const-string v0, "Vendor Remote Button Down"

    return-object v0

    :pswitch_1a
    const-string v0, "Vendor Commandn"

    return-object v0

    :pswitch_1b
    const-string v0, "Device Vendor Id"

    return-object v0

    :pswitch_1c
    const-string v0, "Set Stream Path"

    return-object v0

    :pswitch_1d
    const-string v0, "Request Active Source"

    return-object v0

    :pswitch_1e
    const-string v0, "Report Physical Address"

    return-object v0

    :pswitch_1f
    const-string v0, "Give Physical Address"

    return-object v0

    :pswitch_20
    const-string v0, "Active Source"

    return-object v0

    :pswitch_21
    const-string v0, "Routing Information"

    return-object v0

    :pswitch_22
    const-string v0, "Routing Change"

    return-object v0

    :pswitch_23
    const-string v0, "System Audio Mode Status"

    return-object v0

    :pswitch_24
    const-string v0, "Give System Audio Mode Status"

    return-object v0

    :pswitch_25
    const-string v0, "Set System Audio Mode"

    return-object v0

    :pswitch_26
    const-string v0, "Give Audio Status"

    return-object v0

    :pswitch_27
    const-string v0, "System Audio Mode Request"

    return-object v0

    :pswitch_28
    const-string v0, "Set Osd Name"

    return-object v0

    :pswitch_29
    const-string v0, "Give Osd Name"

    return-object v0

    :pswitch_2a
    const-string v0, "User Control Release"

    return-object v0

    :pswitch_2b
    const-string v0, "User Control Pressed"

    return-object v0

    :pswitch_2c
    const-string v0, "Timer Cleared Status"

    return-object v0

    :pswitch_2d
    const-string v0, "Deck Control"

    return-object v0

    :pswitch_2e
    const-string v0, "Play"

    return-object v0

    :pswitch_2f
    const-string v0, "Standby"

    return-object v0

    :pswitch_30
    const-string v0, "Timer Status"

    return-object v0

    :pswitch_31
    const-string v0, "Set Analog Timer"

    return-object v0

    :pswitch_32
    const-string v0, "Clear Analog Timer"

    return-object v0

    :pswitch_33
    const-string v0, "Set Menu Language"

    return-object v0

    :pswitch_34
    const-string v0, "Deck Status"

    return-object v0

    :pswitch_35
    const-string v0, "Give Deck Status"

    return-object v0

    :pswitch_36
    const-string v0, "Record Off"

    return-object v0

    :pswitch_37
    const-string v0, "Record Status"

    return-object v0

    :pswitch_38
    const-string v0, "Record On"

    return-object v0

    :pswitch_39
    const-string v0, "Give Tuner Device Status"

    return-object v0

    :pswitch_3a
    const-string v0, "Tuner Device Staus"

    return-object v0

    :pswitch_3b
    const-string v0, "Tuner Step Decrement"

    return-object v0

    :pswitch_3c
    const-string v0, "Tuner Step Increment"

    return-object v0

    :pswitch_3d
    const-string v0, "Image View On"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x70
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7d
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x80
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x89
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x99
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x9d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0xc0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0xd -> :sswitch_7
        0xf -> :sswitch_6
        0x64 -> :sswitch_5
        0x67 -> :sswitch_4
        0x7a -> :sswitch_3
        0x97 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDestination()I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return v0
.end method

.method public getOpcode()I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return v0
.end method

.method public getParams()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<%s> src: %d, dst: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, ", params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v6, v1, v3

    const-string v7, " %02X"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
