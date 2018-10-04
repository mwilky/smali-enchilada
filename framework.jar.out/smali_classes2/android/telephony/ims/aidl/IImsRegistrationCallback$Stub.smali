.class public abstract Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.super Landroid/os/Binder;
.source "IImsRegistrationCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsRegistrationCallback"

.field static final TRANSACTION_onDeregistered:I = 0x3

.field static final TRANSACTION_onRegistered:I = 0x1

.field static final TRANSACTION_onRegistering:I = 0x2

.field static final TRANSACTION_onSubscriberAssociatedUriChanged:I = 0x5

.field static final TRANSACTION_onTechnologyChangeFailed:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

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

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v3, v1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onRegistering(I)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onRegistered(I)V

    return v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
