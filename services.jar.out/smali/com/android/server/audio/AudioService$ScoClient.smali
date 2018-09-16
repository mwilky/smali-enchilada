.class Lcom/android/server/audio/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 4024
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4025
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 4026
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    .line 4027
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 4028
    return-void
.end method

.method private requestScoState(II)Z
    .locals 11
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    .line 4139
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In requestScoState(), state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)V

    .line 4142
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$ScoClient;->totalCount()I

    move-result v0

    .line 4143
    .local v0, "clientCount":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4144
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: returning with state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", scoAudioMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", clientCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    return v1

    .line 4148
    :cond_0
    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p1, v2, :cond_a

    .line 4151
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4154
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 4155
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4156
    move v6, v1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v6

    .line 4157
    .local v6, "modeOwnerPid":I
    :goto_0
    if-eqz v6, :cond_2

    iget v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    if-eq v6, v7, :cond_2

    .line 4158
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: audio mode is not NORMAL and modeOwnerPid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " != creatorPid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4161
    monitor-exit v2

    return v1

    .line 4163
    :cond_2
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-eqz v7, :cond_3

    packed-switch v7, :pswitch_data_0

    .line 4216
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: failed to connect in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4217
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4216
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4219
    monitor-exit v2

    return v1

    .line 4209
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 4210
    goto/16 :goto_1

    .line 4212
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 4213
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4214
    goto/16 :goto_1

    .line 4165
    :cond_3
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7, p2}, Lcom/android/server/audio/AudioService;->access$3202(Lcom/android/server/audio/AudioService;I)I

    .line 4166
    const/4 v7, -0x1

    if-ne p2, v7, :cond_5

    .line 4167
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7, v1}, Lcom/android/server/audio/AudioService;->access$3202(Lcom/android/server/audio/AudioService;I)I

    .line 4168
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 4169
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bluetooth_sco_channel_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4171
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4169
    invoke-static {v8, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$3202(Lcom/android/server/audio/AudioService;I)I

    .line 4173
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-gt v7, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-gez v5, :cond_5

    .line 4174
    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v1}, Lcom/android/server/audio/AudioService;->access$3202(Lcom/android/server/audio/AudioService;I)I

    .line 4178
    :cond_5
    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    if-nez v5, :cond_7

    .line 4179
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4180
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    goto :goto_1

    .line 4182
    :cond_6
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4183
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4182
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4186
    monitor-exit v2

    return v1

    .line 4190
    :cond_7
    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_8

    .line 4191
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4192
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4191
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4195
    monitor-exit v2

    return v1

    .line 4197
    :cond_8
    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4198
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v8

    .line 4197
    invoke-static {v5, v7, v8}, Lcom/android/server/audio/AudioService;->access$3700(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4199
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 4222
    .end local v6    # "modeOwnerPid":I
    :goto_1
    monitor-exit v2

    goto/16 :goto_2

    .line 4201
    .restart local v6    # "modeOwnerPid":I
    :cond_9
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " failed, mScoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4202
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4201
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4205
    monitor-exit v2

    return v1

    .line 4222
    .end local v6    # "modeOwnerPid":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4223
    :cond_a
    const/16 v2, 0xa

    if-ne p1, v2, :cond_11

    .line 4224
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v2

    if-eq v2, v4, :cond_10

    if-eq v2, v3, :cond_b

    .line 4259
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: failed to disconnect in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4260
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", scoAudioMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4259
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4262
    return v1

    .line 4226
    :cond_b
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_d

    .line 4227
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4228
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    goto :goto_2

    .line 4230
    :cond_c
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4231
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4230
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 4233
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4235
    return v1

    .line 4239
    :cond_d
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_e

    .line 4240
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 4241
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4243
    goto :goto_2

    .line 4245
    :cond_e
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 4246
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v5

    .line 4245
    invoke-static {v2, v3, v5}, Lcom/android/server/audio/AudioService;->access$3800(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4247
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    goto :goto_2

    .line 4249
    :cond_f
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 4250
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4253
    goto :goto_2

    .line 4255
    :cond_10
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 4256
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 4257
    nop

    .line 4265
    :cond_11
    :goto_2
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 4031
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4032
    :try_start_0
    const-string v1, "AudioService"

    const-string v2, "SCO client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4034
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 4035
    const-string v2, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4037
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    .line 4038
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4040
    .end local v1    # "index":I
    :goto_0
    monitor-exit v0

    .line 4041
    return-void

    .line 4040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearCount(Z)V
    .locals 6
    .param p1, "stopSco"    # Z

    .line 4097
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4098
    :try_start_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In clearCount(), stopSco: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mStartcount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4102
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4105
    goto :goto_0

    .line 4103
    :catch_0
    move-exception v1

    .line 4104
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCount() mStartcount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " != 0 but not registered to binder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 4108
    if-eqz p1, :cond_1

    .line 4109
    const/16 v1, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)Z

    .line 4112
    :cond_1
    monitor-exit v0

    .line 4113
    return-void

    .line 4112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public decCount()V
    .locals 5

    .line 4077
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4078
    :try_start_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In decCount(), mStartcount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    if-nez v1, :cond_0

    .line 4080
    const-string v1, "AudioService"

    const-string v2, "ScoClient.decCount() already 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4082
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 4083
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4085
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4088
    goto :goto_0

    .line 4086
    :catch_0
    move-exception v1

    .line 4087
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    const-string v3, "AudioService"

    const-string v4, "decCount() going to 0 but not registered to binder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    :goto_0
    const/16 v1, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)Z

    .line 4093
    :goto_1
    monitor-exit v0

    .line 4094
    return-void

    .line 4093
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 4120
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 4116
    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .line 4124
    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public incCount(I)V
    .locals 6
    .param p1, "scoAudioMode"    # I

    .line 4044
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4045
    :try_start_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In incCount(), mStartcount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    const/16 v1, 0xc

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)Z

    move-result v1

    .line 4048
    .local v1, "ScoState":Z
    if-nez v1, :cond_0

    .line 4049
    const-string v2, "AudioService"

    const-string v3, "In incCount(), requestScoState failed returning"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    monitor-exit v0

    return-void

    .line 4052
    :cond_0
    iget v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 4054
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4058
    goto :goto_0

    .line 4055
    :catch_0
    move-exception v2

    .line 4057
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScoClient incCount() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4066
    const-string v2, "AudioService"

    const-string/jumbo v4, "mStartcount is 1, calling setBluetoothScoOn(true)in system context"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    goto :goto_1

    .line 4069
    :cond_2
    iget v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    if-nez v2, :cond_3

    .line 4070
    iget v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 4071
    const-string v2, "AudioService"

    const-string/jumbo v3, "mStartcount is 0, incrementing by 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    .end local v1    # "ScoState":Z
    :cond_3
    :goto_1
    monitor-exit v0

    .line 4074
    return-void

    .line 4073
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public totalCount()I
    .locals 5

    .line 4128
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4129
    const/4 v1, 0x0

    .line 4130
    .local v1, "count":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    .line 4131
    .local v3, "mScoClient":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$ScoClient;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 4132
    .end local v3    # "mScoClient":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_0

    .line 4133
    :cond_0
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In totalCount(), count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    monitor-exit v0

    return v1

    .line 4135
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
