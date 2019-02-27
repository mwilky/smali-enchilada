.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouterFingerPrint"
.end annotation


# static fields
.field public static final AUTH_ENTERPRISE:I = 0x3

.field public static final AUTH_OPEN:I = 0x1

.field public static final AUTH_PERSONAL:I = 0x2

.field public static final AUTH_UNKNOWN:I = 0x0

.field public static final ROAM_TYPE_DBDC:I = 0x3

.field public static final ROAM_TYPE_ENTERPRISE:I = 0x2

.field public static final ROAM_TYPE_NONE:I = 0x1

.field public static final ROAM_TYPE_UNKNOWN:I = 0x0

.field public static final ROUTER_TECH_A:I = 0x1

.field public static final ROUTER_TECH_AC:I = 0x5

.field public static final ROUTER_TECH_B:I = 0x2

.field public static final ROUTER_TECH_G:I = 0x3

.field public static final ROUTER_TECH_N:I = 0x4

.field public static final ROUTER_TECH_OTHER:I = 0x6

.field public static final ROUTER_TECH_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;


# instance fields
.field public authentication:I

.field public channelInfo:I

.field public dtim:I

.field public hidden:Z

.field public passpoint:Z

.field public roamType:I

.field public routerTechnology:I

.field public supportsIpv6:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3013
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3014
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    .line 3015
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 2

    .line 2978
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-nez v0, :cond_1

    .line 2979
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2981
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-nez v1, :cond_0

    .line 2982
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    .line 2984
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2986
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3184
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3178
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1

    .line 3018
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    .line 3019
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 3020
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 3021
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 3022
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    .line 3023
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 3024
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    .line 3025
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    .line 3026
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->cachedSize:I

    .line 3027
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 3062
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3063
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    if-eqz v1, :cond_0

    .line 3064
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    .line 3065
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3067
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    if-eqz v1, :cond_1

    .line 3068
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 3069
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3071
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    if-eqz v1, :cond_2

    .line 3072
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 3073
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3075
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    if-eqz v1, :cond_3

    .line 3076
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 3077
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3079
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    if-eqz v1, :cond_4

    .line 3080
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    .line 3081
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3083
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    if-eqz v1, :cond_5

    .line 3084
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 3085
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3087
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    if-eqz v1, :cond_6

    .line 3088
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    .line 3089
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3091
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    if-eqz v1, :cond_7

    .line 3092
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    .line 3093
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3095
    :cond_7
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2951
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3103
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3104
    .local v0, "tag":I
    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 3108
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3109
    return-object p0

    .line 3169
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    .end local v0    # "tag":I
    goto :goto_4

    .line 3165
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    .line 3166
    goto :goto_4

    .line 3150
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3151
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3159
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 3162
    :goto_1
    goto :goto_4

    .line 3146
    .end local v1    # "value":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    .line 3147
    goto :goto_4

    .line 3134
    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3135
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 3140
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 3143
    :goto_2
    goto :goto_4

    .line 3130
    .end local v1    # "value":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 3131
    goto :goto_4

    .line 3126
    :cond_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 3127
    goto :goto_4

    .line 3114
    :cond_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3115
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_2

    goto :goto_3

    .line 3120
    :pswitch_2
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    .line 3123
    :goto_3
    nop

    .line 3173
    .end local v0    # "tag":I
    .end local v1    # "value":I
    :cond_8
    :goto_4
    goto :goto_0

    .line 3106
    .restart local v0    # "tag":I
    :cond_9
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3033
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    if-eqz v0, :cond_0

    .line 3034
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3036
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    if-eqz v0, :cond_1

    .line 3037
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3039
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    if-eqz v0, :cond_2

    .line 3040
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3042
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    if-eqz v0, :cond_3

    .line 3043
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3045
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    if-eqz v0, :cond_4

    .line 3046
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3048
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    if-eqz v0, :cond_5

    .line 3049
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3051
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    if-eqz v0, :cond_6

    .line 3052
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3054
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    if-eqz v0, :cond_7

    .line 3055
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3057
    :cond_7
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3058
    return-void
.end method
