.class public abstract Landroid/service/gatekeeper/IGateKeeperService$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field static final TRANSACTION_clearSecureUserId:I = 0x5

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getSecureUserId:I = 0x4

.field static final TRANSACTION_reportDeviceSetupComplete:I = 0x6

.field static final TRANSACTION_verify:I = 0x2

.field static final TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/service/gatekeeper/IGateKeeperService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.service.gatekeeper.IGateKeeperService"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_3

    const/4 v12, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->reportDeviceSetupComplete()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->clearSecureUserId(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getSecureUserId(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object v0, v6

    move v1, v13

    move-wide v2, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v11

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v11

    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v11

    :cond_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
