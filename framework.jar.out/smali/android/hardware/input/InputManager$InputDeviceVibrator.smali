.class final Landroid/hardware/input/InputManager$InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceVibrator"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mToken:Landroid/os/Binder;

.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .locals 0
    .param p2, "deviceId"    # I

    .line 1175
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 1176
    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 1177
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 1178
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1222
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0}, Landroid/hardware/input/InputManager;->access$400(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    nop

    .line 1226
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasAmplitudeControl()Z
    .locals 1

    .line 1187
    const/4 v0, 0x0

    return v0
.end method

.method public hasVibrator()Z
    .locals 1

    .line 1182
    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attributes"    # Landroid/media/AudioAttributes;

    .line 1198
    instance-of v0, p3, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_0

    .line 1199
    move-object v0, p3

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 1200
    .local v0, "oneShot":Landroid/os/VibrationEffect$OneShot;
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1201
    .local v1, "pattern":[J
    const/4 v0, -0x1

    .line 1202
    .local v0, "repeat":I
    goto :goto_0

    .end local v0    # "repeat":I
    .end local v1    # "pattern":[J
    :cond_0
    instance-of v0, p3, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_1

    .line 1203
    move-object v0, p3

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    .line 1204
    .local v0, "waveform":Landroid/os/VibrationEffect$Waveform;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v1

    .line 1205
    .restart local v1    # "pattern":[J
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v0

    .line 1206
    .local v0, "repeat":I
    nop

    .line 1209
    :goto_0
    nop

    .line 1213
    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v2}, Landroid/hardware/input/InputManager;->access$400(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v2

    iget v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v4, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    nop

    .line 1217
    return-void

    .line 1214
    :catch_0
    move-exception v2

    .line 1215
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1208
    .end local v0    # "repeat":I
    .end local v1    # "pattern":[J
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_1
    const-string v0, "InputManager"

    const-string v1, "Pre-baked effects aren\'t supported on input devices"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-void
.end method
