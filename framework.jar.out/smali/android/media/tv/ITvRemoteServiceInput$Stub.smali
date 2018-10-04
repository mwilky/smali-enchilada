.class public abstract Landroid/media/tv/ITvRemoteServiceInput$Stub;
.super Landroid/os/Binder;
.source "ITvRemoteServiceInput.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteServiceInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteServiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvRemoteServiceInput"

.field static final TRANSACTION_clearInputBridge:I = 0x3

.field static final TRANSACTION_closeInputBridge:I = 0x2

.field static final TRANSACTION_openInputBridge:I = 0x1

.field static final TRANSACTION_sendKeyDown:I = 0x5

.field static final TRANSACTION_sendKeyUp:I = 0x6

.field static final TRANSACTION_sendPointerDown:I = 0x7

.field static final TRANSACTION_sendPointerSync:I = 0x9

.field static final TRANSACTION_sendPointerUp:I = 0x8

.field static final TRANSACTION_sendTimestamp:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteServiceInput;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvRemoteServiceInput;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvRemoteServiceInput;

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.media.tv.ITvRemoteServiceInput"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerSync(Landroid/os/IBinder;)V

    return v10

    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerUp(Landroid/os/IBinder;I)V

    return v10

    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerDown(Landroid/os/IBinder;III)V

    return v10

    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyUp(Landroid/os/IBinder;I)V

    return v10

    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyDown(Landroid/os/IBinder;I)V

    return v10

    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendTimestamp(Landroid/os/IBinder;J)V

    return v10

    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->clearInputBridge(Landroid/os/IBinder;)V

    return v10

    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->closeInputBridge(Landroid/os/IBinder;)V

    return v10

    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V

    return v10

    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
