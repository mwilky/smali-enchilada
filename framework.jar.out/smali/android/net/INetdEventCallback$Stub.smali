.class public abstract Landroid/net/INetdEventCallback$Stub;
.super Landroid/os/Binder;
.source "INetdEventCallback.java"

# interfaces
.implements Landroid/net/INetdEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetdEventCallback"

.field static final TRANSACTION_onConnectEvent:I = 0x3

.field static final TRANSACTION_onDnsEvent:I = 0x1

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.INetdEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetdEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.INetdEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetdEventCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/INetdEventCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/INetdEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetdEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.net.INetdEventCallback"

    const v3, 0x5f4e5446

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v5, p0

    move-object v6, v3

    move v7, v11

    move-wide v8, v12

    move v10, v14

    invoke-virtual/range {v5 .. v10}, Landroid/net/INetdEventCallback$Stub;->onConnectEvent(Ljava/lang/String;IJI)V

    return v4

    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v15, p0

    invoke-virtual {v15, v3, v5, v6, v7}, Landroid/net/INetdEventCallback$Stub;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    return v4

    :pswitch_2
    move-object/from16 v15, p0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v15

    move-object v9, v3

    move-object v10, v5

    move v11, v6

    move-wide/from16 v12, v16

    move v14, v7

    invoke-virtual/range {v8 .. v14}, Landroid/net/INetdEventCallback$Stub;->onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V

    return v4

    :cond_1
    move-object/from16 v15, p0

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
