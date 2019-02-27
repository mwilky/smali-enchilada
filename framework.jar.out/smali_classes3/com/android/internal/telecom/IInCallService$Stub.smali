.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final TRANSACTION_addCall:I = 0x2

.field static final TRANSACTION_bringToForeground:I = 0x7

.field static final TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final TRANSACTION_onCanAddCallChanged:I = 0x8

.field static final TRANSACTION_onConnectionEvent:I = 0xa

.field static final TRANSACTION_onHandoverComplete:I = 0xe

.field static final TRANSACTION_onHandoverFailed:I = 0xd

.field static final TRANSACTION_onRttInitiationFailure:I = 0xc

.field static final TRANSACTION_onRttUpgradeRequest:I = 0xb

.field static final TRANSACTION_setInCallAdapter:I = 0x1

.field static final TRANSACTION_setPostDial:I = 0x4

.field static final TRANSACTION_setPostDialWait:I = 0x5

.field static final TRANSACTION_silenceRinger:I = 0x9

.field static final TRANSACTION_updateCall:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IInCallService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.android.internal.telecom.IInCallService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->onHandoverComplete(Ljava/lang/String;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onHandoverFailed(Ljava/lang/String;I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttInitiationFailure(Ljava/lang/String;I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttUpgradeRequest(Ljava/lang/String;I)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallService$Stub;->silenceRinger()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telecom/CallAudioState;

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telecom/ParcelableCall;

    goto :goto_2

    :cond_4
    nop

    :goto_2
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telecom/ParcelableCall;

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    return v2

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
