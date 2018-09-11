.class public abstract Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IUimRemoteSimlockServiceCallback.java"

# interfaces
.implements Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockServiceCallback"

.field static final TRANSACTION_uimRemoteSimlockGenerateHMACResponse:I = 0x3

.field static final TRANSACTION_uimRemoteSimlockGetSharedKeyResponse:I = 0x2

.field static final TRANSACTION_uimRemoteSimlockGetSimlockStatusResponse:I = 0x5

.field static final TRANSACTION_uimRemoteSimlockGetVersionResponse:I = 0x4

.field static final TRANSACTION_uimRemoteSimlockProcessSimlockDataResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    .line 38
    const-string v9, "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockServiceCallback"

    .line 39
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_0

    packed-switch v7, :pswitch_data_0

    .line 117
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 102
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 106
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 108
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 110
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 111
    .local v14, "_arg3":J
    move-object v0, v6

    move v1, v11

    move v2, v12

    move v3, v13

    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;->uimRemoteSimlockGetSimlockStatusResponse(IIIJ)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v10

    .line 87
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":J
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 96
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;->uimRemoteSimlockGetVersionResponse(IIII)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v10

    .line 74
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 81
    .local v2, "_arg2":[B
    invoke-virtual {v6, v0, v1, v2}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;->uimRemoteSimlockGenerateHMACResponse(II[B)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v10

    .line 61
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 68
    .restart local v2    # "_arg2":[B
    invoke-virtual {v6, v0, v1, v2}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;->uimRemoteSimlockGetSharedKeyResponse(II[B)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v10

    .line 48
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 55
    .restart local v2    # "_arg2":[B
    invoke-virtual {v6, v0, v1, v2}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;->uimRemoteSimlockProcessSimlockDataResponse(II[B)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v10

    .line 43
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
