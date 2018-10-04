.class public abstract Landroid/net/wifi/aware/IWifiAwareManager$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareManager.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareManager"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getCharacteristics:I = 0x2

.field static final TRANSACTION_isUsageEnabled:I = 0x1

.field static final TRANSACTION_publish:I = 0x5

.field static final TRANSACTION_requestMacAddresses:I = 0xb

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_subscribe:I = 0x6

.field static final TRANSACTION_terminateSession:I = 0xa

.field static final TRANSACTION_updatePublish:I = 0x7

.field static final TRANSACTION_updateSubscribe:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.aware.IWifiAwareManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.wifi.aware.IWifiAwareManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/IWifiAwareManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.net.wifi.aware.IWifiAwareManager"

    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareMacAddressProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    move-result-object v3

    invoke-virtual {v7, v0, v2, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->requestMacAddresses(ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->terminateSession(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object v0, v7

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->sendMessage(III[BII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/SubscribeConfig;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v7, v0, v2, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/PublishConfig;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v7, v0, v2, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/SubscribeConfig;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v3

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->subscribe(Ljava/lang/String;ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/PublishConfig;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v3

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->publish(Ljava/lang/String;ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->disconnect(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareEventCallback;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/ConfigRequest;

    :goto_4
    move-object v4, v1

    goto :goto_5

    :cond_4
    goto :goto_4

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v5, v12

    goto :goto_6

    :cond_5
    move v5, v0

    :goto_6
    move-object v0, v7

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_6

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v10, v12}, Landroid/net/wifi/aware/Characteristics;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v12

    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isUsageEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :cond_7
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

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
