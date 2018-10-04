.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_addParticipantWithConference:I = 0x1e

.field static final TRANSACTION_answer:I = 0x8

.field static final TRANSACTION_answerVideo:I = 0x7

.field static final TRANSACTION_conference:I = 0x13

.field static final TRANSACTION_connectionServiceFocusGained:I = 0x20

.field static final TRANSACTION_connectionServiceFocusLost:I = 0x1f

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_createConnectionComplete:I = 0x4

.field static final TRANSACTION_createConnectionFailed:I = 0x5

.field static final TRANSACTION_deflect:I = 0x9

.field static final TRANSACTION_disconnect:I = 0xc

.field static final TRANSACTION_handoverComplete:I = 0x22

.field static final TRANSACTION_handoverFailed:I = 0x21

.field static final TRANSACTION_hold:I = 0xe

.field static final TRANSACTION_mergeConference:I = 0x15

.field static final TRANSACTION_onCallAudioStateChanged:I = 0x10

.field static final TRANSACTION_onExtrasChanged:I = 0x1a

.field static final TRANSACTION_onPostDialContinue:I = 0x17

.field static final TRANSACTION_playDtmfTone:I = 0x11

.field static final TRANSACTION_pullExternalCall:I = 0x18

.field static final TRANSACTION_reject:I = 0xa

.field static final TRANSACTION_rejectWithMessage:I = 0xb

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_respondToRttUpgradeRequest:I = 0x1d

.field static final TRANSACTION_sendCallEvent:I = 0x19

.field static final TRANSACTION_silence:I = 0xd

.field static final TRANSACTION_splitFromConference:I = 0x14

.field static final TRANSACTION_startRtt:I = 0x1b

.field static final TRANSACTION_stopDtmfTone:I = 0x12

.field static final TRANSACTION_stopRtt:I = 0x1c

.field static final TRANSACTION_swapConference:I = 0x16

.field static final TRANSACTION_unhold:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IConnectionService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v7, p0

    move v8, p1

    move-object v9, p2

    const-string v10, "com.android.internal.telecom.IConnectionService"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_32

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->handoverComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ConnectionRequest;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;ILandroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->connectionServiceFocusGained(Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->connectionServiceFocusLost(Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :pswitch_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    goto :goto_6

    :cond_6
    move-object v3, v2

    :goto_6
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_7

    :cond_7
    nop

    :goto_7
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_8

    :cond_8
    nop

    :goto_8
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_7
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_9

    :cond_9
    move-object v1, v2

    :goto_9
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    goto :goto_a

    :cond_a
    move-object v3, v2

    :goto_a
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_b

    :cond_b
    nop

    :goto_b
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_c

    :cond_c
    move-object v1, v2

    :goto_c
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_d

    :cond_d
    nop

    :goto_d
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_e

    :cond_e
    move-object v3, v2

    :goto_e
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_f

    :cond_f
    nop

    :goto_f
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_10

    :cond_10
    nop

    :goto_10
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    move v0, v11

    nop

    :cond_11
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_11

    :cond_12
    nop

    :goto_11
    invoke-virtual {v7, v1, v0, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_12

    :cond_13
    nop

    :goto_12
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_13

    :cond_14
    nop

    :goto_13
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_14

    :cond_15
    nop

    :goto_14
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_15

    :cond_16
    nop

    :goto_15
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_10
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_16

    :cond_17
    nop

    :goto_16
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_11
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_17

    :cond_18
    nop

    :goto_17
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_12
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallAudioState;

    goto :goto_18

    :cond_19
    move-object v1, v2

    :goto_18
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_19

    :cond_1a
    nop

    :goto_19
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_13
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_1a

    :cond_1b
    nop

    :goto_1a
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_14
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_1b

    :cond_1c
    nop

    :goto_1b
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_15
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_1c

    :cond_1d
    nop

    :goto_1c
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_16
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_1d

    :cond_1e
    nop

    :goto_1d
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_17
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_1e

    :cond_1f
    nop

    :goto_1e
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_18
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_1f

    :cond_20
    nop

    :goto_1f
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_19
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_20

    :cond_21
    move-object v1, v2

    :goto_20
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_21

    :cond_22
    nop

    :goto_21
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->deflect(Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_1a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_22

    :cond_23
    nop

    :goto_22
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_1b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_23

    :cond_24
    nop

    :goto_23
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_1c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_24

    :cond_25
    nop

    :goto_24
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_1d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    goto :goto_25

    :cond_26
    move-object v1, v2

    :goto_25
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    goto :goto_26

    :cond_27
    move-object v3, v2

    :goto_26
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    move v4, v11

    goto :goto_27

    :cond_28
    move v4, v0

    :goto_27
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    move-object v5, v0

    goto :goto_28

    :cond_29
    move-object v5, v2

    :goto_28
    move-object v0, v7

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_1e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_29

    :cond_2a
    nop

    :goto_29
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_1f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    goto :goto_2a

    :cond_2b
    move-object v1, v2

    :goto_2a
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    goto :goto_2b

    :cond_2c
    move-object v3, v2

    :goto_2b
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    move v4, v11

    goto :goto_2c

    :cond_2d
    move v4, v0

    :goto_2c
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    move v5, v11

    goto :goto_2d

    :cond_2e
    move v5, v0

    :goto_2d
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    move-object v6, v0

    goto :goto_2e

    :cond_2f
    move-object v6, v2

    :goto_2e
    move-object v0, v7

    move-object v2, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_2f

    :cond_30
    nop

    :goto_2f
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :pswitch_21
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    goto :goto_30

    :cond_31
    nop

    :goto_30
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    return v11

    :cond_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
