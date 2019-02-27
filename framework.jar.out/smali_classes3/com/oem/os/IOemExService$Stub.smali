.class public abstract Lcom/oem/os/IOemExService$Stub;
.super Landroid/os/Binder;
.source "IOemExService.java"

# interfaces
.implements Lcom/oem/os/IOemExService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oem/os/IOemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oem/os/IOemExService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oem.os.IOemExService"

.field static final TRANSACTION_addThreeKeyPolicy:I = 0x15

.field static final TRANSACTION_disableDefaultThreeKey:I = 0x13

.field static final TRANSACTION_dumpJankBugreport:I = 0x3

.field static final TRANSACTION_dumpLightBugreport:I = 0x2

.field static final TRANSACTION_enalbeDefaultThreeKey:I = 0x14

.field static final TRANSACTION_getThreeKeyStatus:I = 0x18

.field static final TRANSACTION_monitorSceneChanging:I = 0x4

.field static final TRANSACTION_pauseExInputEvent:I = 0x8

.field static final TRANSACTION_preEvaluateModeStatus:I = 0x5

.field static final TRANSACTION_registerInputEvent:I = 0x6

.field static final TRANSACTION_removeThreeKeyPolicy:I = 0x16

.field static final TRANSACTION_resetThreeKey:I = 0x17

.field static final TRANSACTION_resumeExInputEvent:I = 0x9

.field static final TRANSACTION_setGammaData:I = 0x10

.field static final TRANSACTION_setHomeUpLock:I = 0xf

.field static final TRANSACTION_setInteractive:I = 0xc

.field static final TRANSACTION_setKeyMode:I = 0xe

.field static final TRANSACTION_setLaserSensorCrossTalk:I = 0x12

.field static final TRANSACTION_setLaserSensorOffset:I = 0x11

.field static final TRANSACTION_setSystemProperties:I = 0xd

.field static final TRANSACTION_startApkInstall:I = 0x1

.field static final TRANSACTION_startUevent:I = 0xa

.field static final TRANSACTION_stopUevent:I = 0xb

.field static final TRANSACTION_unregisterInputEvent:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.oem.os.IOemExService"

    invoke-virtual {p0, p0, v0}, Lcom/oem/os/IOemExService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.oem.os.IOemExService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oem/os/IOemExService;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/oem/os/IOemExService;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/oem/os/IOemExService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oem/os/IOemExService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "com.oem.os.IOemExService"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 262
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->getThreeKeyStatus()I

    move-result v1

    .line 264
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    return v2

    .line 255
    .end local v1    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->resetThreeKey()V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    return v2

    .line 246
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/three_key/IThreeKeyPolicy;

    move-result-object v1

    .line 249
    .local v1, "_arg0":Lcom/oneplus/three_key/IThreeKeyPolicy;
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    return v2

    .line 237
    .end local v1    # "_arg0":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/three_key/IThreeKeyPolicy;

    move-result-object v1

    .line 240
    .restart local v1    # "_arg0":Lcom/oneplus/three_key/IThreeKeyPolicy;
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    return v2

    .line 230
    .end local v1    # "_arg0":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->enalbeDefaultThreeKey()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    return v2

    .line 223
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->disableDefaultThreeKey()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v2

    .line 214
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorCrossTalk(I)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    return v2

    .line 205
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorOffset(I)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    return v2

    .line 196
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->setGammaData(I)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    return v2

    .line 188
    .end local v1    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->setHomeUpLock()Z

    move-result v1

    .line 190
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return v2

    .line 178
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->setKeyMode(I)Z

    move-result v3

    .line 182
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return v2

    .line 166
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/oem/os/IOemExService$Stub;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 172
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return v2

    .line 154
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 158
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 159
    .local v3, "_arg1":J
    invoke-virtual {p0, v1, v3, v4}, Lcom/oem/os/IOemExService$Stub;->setInteractive(ZJ)Z

    move-result v5

    .line 160
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return v2

    .line 144
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v1

    .line 147
    .local v1, "_arg0":Lcom/oem/os/IOemUeventCallback;
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->stopUevent(Lcom/oem/os/IOemUeventCallback;)Z

    move-result v3

    .line 148
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v2

    .line 132
    .end local v1    # "_arg0":Lcom/oem/os/IOemUeventCallback;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v3

    .line 137
    .local v3, "_arg1":Lcom/oem/os/IOemUeventCallback;
    invoke-virtual {p0, v1, v3}, Lcom/oem/os/IOemExService$Stub;->startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z

    move-result v4

    .line 138
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v2

    .line 125
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/oem/os/IOemUeventCallback;
    .end local v4    # "_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->resumeExInputEvent()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    return v2

    .line 118
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->pauseExInputEvent()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    return v2

    .line 109
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v1

    .line 112
    .local v1, "_arg0":Lcom/oem/os/IOemExInputCallBack;
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v2

    .line 97
    .end local v1    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v1

    .line 101
    .restart local v1    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/oem/os/IOemExService$Stub;->registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z

    move-result v4

    .line 103
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v2

    .line 85
    .end local v1    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/oem/os/IOemExService$Stub;->preEvaluateModeStatus(II)Z

    move-result v4

    .line 91
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v2

    .line 76
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 79
    .local v1, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->monitorSceneChanging(Z)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v2

    .line 67
    .end local v1    # "_arg0":Z
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->dumpJankBugreport(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v2

    .line 58
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->dumpLightBugreport(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v2

    .line 49
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->startApkInstall(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v2

    .line 44
    .end local v1    # "_arg0":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
