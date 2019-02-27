.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final TRANSACTION_listen:I = 0x3

.field static final TRANSACTION_listenForSubscriber:I = 0x4

.field static final TRANSACTION_notifyAnomalyStatusChange:I = 0x24

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0xa

.field static final TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xb

.field static final TRANSACTION_notifyCallState:I = 0x5

.field static final TRANSACTION_notifyCallStateForPhoneId:I = 0x6

.field static final TRANSACTION_notifyCarrierNetworkChange:I = 0x20

.field static final TRANSACTION_notifyCellInfo:I = 0x15

.field static final TRANSACTION_notifyCellInfoForSubscriber:I = 0x1b

.field static final TRANSACTION_notifyCellLocation:I = 0x12

.field static final TRANSACTION_notifyCellLocationForSubscriber:I = 0x13

.field static final TRANSACTION_notifyDataActivity:I = 0xc

.field static final TRANSACTION_notifyDataActivityForSubscriber:I = 0xd

.field static final TRANSACTION_notifyDataConnection:I = 0xe

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x10

.field static final TRANSACTION_notifyDataConnectionFailedForSubscriber:I = 0x11

.field static final TRANSACTION_notifyDataConnectionForSubscriber:I = 0xf

.field static final TRANSACTION_notifyDisconnectCause:I = 0x19

.field static final TRANSACTION_notifyImsCapabilityStatusChange:I = 0x22

.field static final TRANSACTION_notifyImsCapabilityStatusChangeForPhoneId:I = 0x23

.field static final TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0x9

.field static final TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x1e

.field static final TRANSACTION_notifyOtaspChanged:I = 0x14

.field static final TRANSACTION_notifyPhysicalChannelConfiguration:I = 0x16

.field static final TRANSACTION_notifyPhysicalChannelConfigurationForSubscriber:I = 0x17

.field static final TRANSACTION_notifyPreciseCallState:I = 0x18

.field static final TRANSACTION_notifyPreciseDataConnectionFailed:I = 0x1a

.field static final TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final TRANSACTION_notifySignalStrengthForPhoneId:I = 0x8

.field static final TRANSACTION_notifySimActivationStateChangedForPhoneId:I = 0x1d

.field static final TRANSACTION_notifySubscriptionInfoChanged:I = 0x1f

.field static final TRANSACTION_notifyUserMobileDataStateChangedForPhoneId:I = 0x21

.field static final TRANSACTION_notifyVoLteServiceStateChanged:I = 0x1c

.field static final TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITelephonyRegistry;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    const-string v14, "com.android.internal.telephony.ITelephonyRegistry"

    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v12, v0, :cond_14

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v12, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyAnomalyStatusChange([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyImsCapabilityStatusChangeForPhoneId(II[Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyImsCapabilityStatusChange([Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_3
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v15

    nop

    :cond_0
    invoke-virtual {v11, v0, v2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyUserMobileDataStateChangedForPhoneId(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_4
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v15

    nop

    :cond_1
    move v0, v1

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_5
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_6
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_7
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySimActivationStateChangedForPhoneId(IIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_8
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/VoLteServiceState;

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_9
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_a
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_b
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_c
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_d
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhysicalChannelConfigurationForSubscriber(ILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_e
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhysicalChannelConfiguration(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_f
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_10
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_11
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_1

    :cond_3
    nop

    :goto_1
    invoke-virtual {v11, v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_12
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_2

    :cond_4
    nop

    :goto_2
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_13
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_14
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_15
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v3, v15

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    move-object v7, v2

    goto :goto_4

    :cond_6
    move-object v7, v0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    :goto_5
    move-object v8, v0

    goto :goto_6

    :cond_7
    goto :goto_5

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v10, v15

    goto :goto_7

    :cond_8
    move v10, v1

    :goto_7
    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v9, v21

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_16
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v15

    goto :goto_8

    :cond_9
    move v2, v1

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    move-object v6, v3

    goto :goto_9

    :cond_a
    move-object v6, v0

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    :goto_a
    move-object v7, v0

    goto :goto_b

    :cond_b
    goto :goto_a

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v9, v15

    goto :goto_c

    :cond_c
    move v9, v1

    :goto_c
    move-object v0, v11

    move v1, v10

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_17
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_18
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_19
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v1, v15

    nop

    :cond_d
    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1a
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v1, v15

    nop

    :cond_e
    move v0, v1

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1b
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    move v1, v15

    nop

    :cond_f
    invoke-virtual {v11, v0, v2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1c
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    goto :goto_d

    :cond_10
    nop

    :goto_d
    invoke-virtual {v11, v1, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1d
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    goto :goto_e

    :cond_11
    nop

    :goto_e
    invoke-virtual {v11, v1, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1e
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForPhoneId(IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1f
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_20
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v5, v15

    goto :goto_f

    :cond_12
    move v5, v1

    :goto_f
    move-object v0, v11

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_21
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    move v1, v15

    nop

    :cond_13
    invoke-virtual {v11, v0, v2, v3, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_22
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_23
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :cond_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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
