.class public abstract Lcom/android/ims/internal/uce/options/IOptionsService$Stub;
.super Landroid/os/Binder;
.source "IOptionsService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getContactCap:I = 0x6

.field static final TRANSACTION_getContactListCap:I = 0x7

.field static final TRANSACTION_getMyInfo:I = 0x5

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_responseIncomingOptions:I = 0x8

.field static final TRANSACTION_setMyInfo:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/options/IOptionsService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.android.ims.internal.uce.options.IOptionsService"

    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_e

    const/4 v0, 0x0

    const/4 v13, 0x0

    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v6, v12

    goto :goto_2

    :cond_1
    move v6, v13

    :goto_2
    move-object v0, v7

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->responseIncomingOptions(IIILjava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;Z)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v12

    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_3
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v12

    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_4
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v12

    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getMyInfo(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_5
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v12

    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    goto :goto_7

    :cond_6
    nop

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->setMyInfo(ILcom/android/ims/internal/uce/common/CapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_7

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_7
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v12

    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/UceLong;

    goto :goto_9

    :cond_8
    nop

    :goto_9
    invoke-virtual {v7, v1, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_9

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_9
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v12

    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v0, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/UceLong;

    goto :goto_b

    :cond_a
    nop

    :goto_b
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->addListener(ILcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_b

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_b
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    if-eqz v0, :cond_c

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v10, v12}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_c
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v12

    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_d

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_d
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v12

    :cond_e
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
