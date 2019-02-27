.class public final Landroid/net/wifi/rtt/ResponderConfig;
.super Ljava/lang/Object;
.source "ResponderConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/ResponderConfig$PreambleType;,
        Landroid/net/wifi/rtt/ResponderConfig$ChannelWidth;,
        Landroid/net/wifi/rtt/ResponderConfig$ResponderType;
    }
.end annotation


# static fields
.field private static final AWARE_BAND_2_DISCOVERY_CHANNEL:I = 0x985

.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREAMBLE_HT:I = 0x1

.field public static final PREAMBLE_LEGACY:I = 0x0

.field public static final PREAMBLE_VHT:I = 0x2

.field public static final RESPONDER_AP:I = 0x0

.field public static final RESPONDER_AWARE:I = 0x4

.field public static final RESPONDER_P2P_CLIENT:I = 0x3

.field public static final RESPONDER_P2P_GO:I = 0x2

.field public static final RESPONDER_STA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResponderConfig"


# instance fields
.field public final centerFreq0:I

.field public final centerFreq1:I

.field public final channelWidth:I

.field public final frequency:I

.field public final macAddress:Landroid/net/MacAddress;

.field public final peerHandle:Landroid/net/wifi/aware/PeerHandle;

.field public final preamble:I

.field public final responderType:I

.field public final supports80211mc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/MacAddress;IZIIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ResponderConfig - must specify a MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/net/MacAddress;Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iput-object p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iput p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iput-boolean p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iput p9, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    return-void
.end method

.method public static fromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v12

    iget v2, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-static {v2}, Landroid/net/wifi/rtt/ResponderConfig;->translateScanResultChannelWidth(I)I

    move-result v13

    iget v14, v0, Landroid/net/wifi/ScanResult;->frequency:I

    iget v15, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iget v9, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v2, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v5, v4

    move v7, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v8, v4, v2

    iget v10, v8, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v6, 0x2d

    if-ne v10, v6, :cond_0

    const/4 v6, 0x1

    move v7, v6

    goto :goto_1

    :cond_0
    iget v6, v8, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v10, 0xbf

    if-ne v6, v10, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const/4 v6, 0x2

    :goto_2
    goto :goto_3

    :cond_3
    if-eqz v7, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    nop

    const/4 v6, 0x0

    :goto_3
    move v2, v6

    goto :goto_5

    :cond_5
    const-string v2, "ResponderConfig"

    const-string v3, "Scan Results do not contain IEs - using backup method to select preamble"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eq v13, v2, :cond_7

    const/4 v2, 0x3

    if-ne v13, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, 0x2

    :goto_5
    move v10, v2

    new-instance v16, Landroid/net/wifi/rtt/ResponderConfig;

    move-object/from16 v2, v16

    move-object v3, v1

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v17, v9

    invoke-direct/range {v2 .. v10}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;IZIIIII)V

    return-object v16
.end method

.method public static fromWifiAwarePeerHandleWithDefaults(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 10

    new-instance v9, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x985

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V

    return-object v9
.end method

.method public static fromWifiAwarePeerMacAddressWithDefaults(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 10

    new-instance v9, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x985

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;IZIIIII)V

    return-object v9
.end method

.method static translateScanResultChannelWidth(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateScanResultChannelWidth: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget-object v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid(Z)Z
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ResponderConfig: macAddress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", peerHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", responderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", supports80211mc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", channelWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", preamble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v0, v0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
