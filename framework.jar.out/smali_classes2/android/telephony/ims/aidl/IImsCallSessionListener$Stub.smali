.class public abstract Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsCallSessionListener"

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final TRANSACTION_callSessionHandover:I = 0x1a

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final TRANSACTION_callSessionHeld:I = 0x5

.field static final TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final TRANSACTION_callSessionInitiated:I = 0x2

.field static final TRANSACTION_callSessionInitiatedFailed:I = 0x3

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final TRANSACTION_callSessionMayHandover:I = 0x1c

.field static final TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final TRANSACTION_callSessionMultipartyStateChanged:I = 0x1e

.field static final TRANSACTION_callSessionProgressing:I = 0x1

.field static final TRANSACTION_callSessionPropertyChanged:I = 0x23

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final TRANSACTION_callSessionResumed:I = 0x8

.field static final TRANSACTION_callSessionRttMessageReceived:I = 0x22

.field static final TRANSACTION_callSessionRttModifyRequestReceived:I = 0x20

.field static final TRANSACTION_callSessionRttModifyResponseReceived:I = 0x21

.field static final TRANSACTION_callSessionSuppServiceReceived:I = 0x1f

.field static final TRANSACTION_callSessionTerminated:I = 0x4

.field static final TRANSACTION_callSessionTtyModeReceived:I = 0x1d

.field static final TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final TRANSACTION_callSessionUpdated:I = 0xe

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object v1

    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionPropertyChanged(I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSuppServiceNotification;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Z)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMayHandover(II)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {p0, v3, v4, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual {p0, v3, v4, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsConferenceState;

    goto :goto_5

    :cond_5
    nop

    :goto_5
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_6

    :cond_6
    nop

    :goto_6
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_7

    :cond_7
    nop

    :goto_7
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_8

    :cond_8
    nop

    :goto_8
    invoke-virtual {p0, v3, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_9

    :cond_9
    nop

    :goto_9
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_a

    :cond_a
    nop

    :goto_a
    invoke-virtual {p0, v3, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_b

    :cond_b
    nop

    :goto_b
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_c

    :cond_c
    nop

    :goto_c
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_d

    :cond_d
    nop

    :goto_d
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_e

    :cond_e
    nop

    :goto_e
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    return v2

    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_f

    :cond_f
    nop

    :goto_f
    invoke-virtual {p0, v3, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_10

    :cond_10
    nop

    :goto_10
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_11

    :cond_11
    nop

    :goto_11
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_12

    :cond_12
    nop

    :goto_12
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_13

    :cond_13
    nop

    :goto_13
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_14

    :cond_14
    nop

    :goto_14
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_15

    :cond_15
    nop

    :goto_15
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_16

    :cond_16
    nop

    :goto_16
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_17

    :cond_17
    nop

    :goto_17
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    goto :goto_18

    :cond_18
    nop

    :goto_18
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    return v2

    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    sget-object v1, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    goto :goto_19

    :cond_19
    nop

    :goto_19
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return v2

    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
