.class public abstract Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;
.super Landroid/os/Binder;
.source "IUimRemoteSimlockService.java"

# interfaces
.implements Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockService"

.field static final TRANSACTION_deregisterCallback:I = 0x2

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_uimRemoteSimlockGenerateHMAC:I = 0x5

.field static final TRANSACTION_uimRemoteSimlockGetSharedKey:I = 0x4

.field static final TRANSACTION_uimRemoteSimlockGetSimlockStatus:I = 0x7

.field static final TRANSACTION_uimRemoteSimlockGetVersion:I = 0x6

.field static final TRANSACTION_uimRemoteSimlockProcessSimlockData:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockService"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockService"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 112
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->uimRemoteSimlockGetSimlockStatus(I)I

    move-result v3

    .line 116
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v2

    .line 102
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->uimRemoteSimlockGetVersion(I)I

    move-result v3

    .line 106
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v2

    .line 90
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 95
    .local v3, "_arg1":[B
    invoke-virtual {p0, v1, v3}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->uimRemoteSimlockGenerateHMAC(I[B)I

    move-result v4

    .line 96
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v2

    .line 80
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->uimRemoteSimlockGetSharedKey(I)I

    move-result v3

    .line 84
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v2

    .line 68
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 73
    .local v3, "_arg1":[B
    invoke-virtual {p0, v1, v3}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->uimRemoteSimlockProcessSimlockData(I[B)I

    move-result v4

    .line 74
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v2

    .line 58
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    move-result-object v1

    .line 61
    .local v1, "_arg0":Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->deregisterCallback(Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;)I

    move-result v3

    .line 62
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v2

    .line 48
    .end local v1    # "_arg0":Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    move-result-object v1

    .line 51
    .restart local v1    # "_arg0":Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->registerCallback(Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;)I

    move-result v3

    .line 52
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return v2

    .line 43
    .end local v1    # "_arg0":Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
    .end local v3    # "_result":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
