.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x18

.field static final TRANSACTION_disable:I = 0x8

.field static final TRANSACTION_disableNdefPush:I = 0xb

.field static final TRANSACTION_dispatch:I = 0x15

.field static final TRANSACTION_enable:I = 0x9

.field static final TRANSACTION_enableNdefPush:I = 0xa

.field static final TRANSACTION_getCplc:I = 0x1a

.field static final TRANSACTION_getDieId:I = 0x1b

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getNfcAdapterVendorInterface:I = 0x6

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcDtaInterface:I = 0x5

.field static final TRANSACTION_getNfcFCardEmulationInterface:I = 0x3

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_ignore:I = 0x14

.field static final TRANSACTION_invokeBeam:I = 0x12

.field static final TRANSACTION_invokeBeamInternal:I = 0x13

.field static final TRANSACTION_isNdefPushEnabled:I = 0xc

.field static final TRANSACTION_pausePolling:I = 0xd

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x19

.field static final TRANSACTION_resumePolling:I = 0xe

.field static final TRANSACTION_setAidRoute:I = 0x1c

.field static final TRANSACTION_setAppCallback:I = 0x11

.field static final TRANSACTION_setForegroundDispatch:I = 0x10

.field static final TRANSACTION_setP2pModes:I = 0x17

.field static final TRANSACTION_setReaderMode:I = 0x16

.field static final TRANSACTION_verifyNfcPermission:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.nfc.INfcAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcAdapter;

    return-object v1

    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.nfc.INfcAdapter"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_b

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->setAidRoute(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getDieId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getCplc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/BeamShareData;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v1, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/TechListParcel;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual {p0, v3, v4, v1}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/nfc/INfcAdapter$Stub;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/nfc/INfcDta;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/nfc/INfcFCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
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
