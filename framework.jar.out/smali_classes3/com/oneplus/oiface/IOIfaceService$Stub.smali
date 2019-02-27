.class public abstract Lcom/oneplus/oiface/IOIfaceService$Stub;
.super Landroid/os/Binder;
.source "IOIfaceService.java"

# interfaces
.implements Lcom/oneplus/oiface/IOIfaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/oiface/IOIfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/oiface/IOIfaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.oiface.IOIfaceService"

.field static final TRANSACTION_applyHardwareResource:I = 0x67

.field static final TRANSACTION_currentPackage:I = 0x2

.field static final TRANSACTION_getOifaceversion:I = 0x69

.field static final TRANSACTION_onAppRegister:I = 0x68

.field static final TRANSACTION_onSystemNotify:I = 0x65

.field static final TRANSACTION_updateGameInfo:I = 0x66


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/oiface/IOIfaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/oiface/IOIfaceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/oiface/IOIfaceService;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/oneplus/oiface/IOIfaceService;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/oneplus/oiface/IOIfaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/oiface/IOIfaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 87
    :pswitch_0
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/oneplus/oiface/IOIfaceService$Stub;->getOifaceversion()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 81
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/oiface/IOIfaceService$Stub;->onAppRegister()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v1

    .line 73
    :pswitch_2
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/oiface/IOIfaceService$Stub;->applyHardwareResource(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v1

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/oiface/IOIfaceService$Stub;->updateGameInfo(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v1

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/oiface/IOIfaceNotifier$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/oiface/IOIfaceNotifier;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Lcom/oneplus/oiface/IOIfaceNotifier;
    invoke-virtual {p0, v0}, Lcom/oneplus/oiface/IOIfaceService$Stub;->onSystemNotify(Lcom/oneplus/oiface/IOIfaceNotifier;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v1

    .line 44
    .end local v0    # "_arg0":Lcom/oneplus/oiface/IOIfaceNotifier;
    :cond_0
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    .line 48
    :cond_1
    const-string v0, "com.oneplus.oiface.IOIfaceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, "uid":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .local v3, "pid":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/oiface/IOIfaceService$Stub;->currentPackage(Ljava/lang/String;II)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
