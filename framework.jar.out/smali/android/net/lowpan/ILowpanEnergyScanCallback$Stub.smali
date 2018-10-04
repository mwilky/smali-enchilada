.class public abstract Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;
.super Landroid/os/Binder;
.source "ILowpanEnergyScanCallback.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanEnergyScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanEnergyScanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanEnergyScanCallback"

.field static final TRANSACTION_onEnergyScanFinished:I = 0x2

.field static final TRANSACTION_onEnergyScanResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.lowpan.ILowpanEnergyScanCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanEnergyScanCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.lowpan.ILowpanEnergyScanCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanEnergyScanCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanEnergyScanCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "android.net.lowpan.ILowpanEnergyScanCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->onEnergyScanFinished()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->onEnergyScanResult(II)V

    return v2

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
