.class public abstract Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.super Landroid/os/Binder;
.source "ILowpanInterfaceListener.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanInterfaceListener"

.field static final TRANSACTION_onConnectedChanged:I = 0x2

.field static final TRANSACTION_onEnabledChanged:I = 0x1

.field static final TRANSACTION_onLinkAddressAdded:I = 0x9

.field static final TRANSACTION_onLinkAddressRemoved:I = 0xa

.field static final TRANSACTION_onLinkNetworkAdded:I = 0x7

.field static final TRANSACTION_onLinkNetworkRemoved:I = 0x8

.field static final TRANSACTION_onLowpanIdentityChanged:I = 0x6

.field static final TRANSACTION_onReceiveFromCommissioner:I = 0xb

.field static final TRANSACTION_onRoleChanged:I = 0x4

.field static final TRANSACTION_onStateChanged:I = 0x5

.field static final TRANSACTION_onUpChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterfaceListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanInterfaceListener;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

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

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onReceiveFromCommissioner([B)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressRemoved(Ljava/lang/String;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressAdded(Ljava/lang/String;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/IpPrefix;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/IpPrefix;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/lowpan/LowpanIdentity;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onStateChanged(Ljava/lang/String;)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onRoleChanged(Ljava/lang/String;)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onUpChanged(Z)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onConnectedChanged(Z)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onEnabledChanged(Z)V

    return v2

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
