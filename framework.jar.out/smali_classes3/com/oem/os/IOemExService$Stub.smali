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

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oem.os.IOemExService"

    invoke-virtual {p0, p0, v0}, Lcom/oem/os/IOemExService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oem.os.IOemExService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oem/os/IOemExService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oem/os/IOemExService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oem/os/IOemExService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oem/os/IOemExService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.oem.os.IOemExService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->getThreeKeyStatus()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->resetThreeKey()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/three_key/IThreeKeyPolicy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/three_key/IThreeKeyPolicy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->enalbeDefaultThreeKey()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->disableDefaultThreeKey()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorCrossTalk(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorOffset(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->setGammaData(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->setHomeUpLock()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->setKeyMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oem/os/IOemExService$Stub;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4}, Lcom/oem/os/IOemExService$Stub;->setInteractive(ZJ)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->stopUevent(Lcom/oem/os/IOemUeventCallback;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oem/os/IOemExService$Stub;->startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->resumeExInputEvent()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->pauseExInputEvent()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/oem/os/IOemExService$Stub;->registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/oem/os/IOemExService$Stub;->preEvaluateModeStatus(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->monitorSceneChanging(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->dumpJankBugreport(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->dumpLightBugreport(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oem/os/IOemExService$Stub;->startApkInstall(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
