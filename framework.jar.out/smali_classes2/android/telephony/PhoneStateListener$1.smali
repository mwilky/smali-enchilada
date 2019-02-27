.class Landroid/telephony/PhoneStateListener$1;
.super Landroid/os/Handler;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onAnomalyStatusChange([I)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onPhysicalChannelConfigurationChanged(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onUserMobileDataStateChanged(Z)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataActivationStateChanged(I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onVoiceActivationStateChanged(I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onCarrierNetworkChange(Z)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onOemHookRawEvent([B)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/VoLteServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/PreciseCallState;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onOtaspChanged(I)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    goto :goto_0

    :sswitch_10
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_11
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/CellLocation;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    goto :goto_0

    :sswitch_12
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto :goto_0

    :sswitch_13
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto :goto_0

    :sswitch_14
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    goto :goto_0

    :sswitch_15
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    :sswitch_16
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onImsCapabilityStatusChange([Z)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_16
        0x1 -> :sswitch_15
        0x2 -> :sswitch_14
        0x4 -> :sswitch_13
        0x8 -> :sswitch_12
        0x10 -> :sswitch_11
        0x20 -> :sswitch_10
        0x40 -> :sswitch_f
        0x80 -> :sswitch_e
        0x100 -> :sswitch_d
        0x200 -> :sswitch_c
        0x400 -> :sswitch_b
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_8
        0x4000 -> :sswitch_7
        0x8000 -> :sswitch_6
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_3
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_1
        0x200000 -> :sswitch_0
    .end sparse-switch
.end method
