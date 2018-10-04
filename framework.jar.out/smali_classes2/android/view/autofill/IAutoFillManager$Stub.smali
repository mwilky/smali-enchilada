.class public abstract Landroid/view/autofill/IAutoFillManager$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManager.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManager"

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_cancelSession:I = 0xa

.field static final TRANSACTION_disableOwnedAutofillServices:I = 0xd

.field static final TRANSACTION_finishSession:I = 0x9

.field static final TRANSACTION_getAutofillServiceComponentName:I = 0x15

.field static final TRANSACTION_getAvailableFieldClassificationAlgorithms:I = 0x16

.field static final TRANSACTION_getDefaultFieldClassificationAlgorithm:I = 0x17

.field static final TRANSACTION_getFillEventHistory:I = 0x4

.field static final TRANSACTION_getUserData:I = 0x11

.field static final TRANSACTION_getUserDataId:I = 0x12

.field static final TRANSACTION_isFieldClassificationEnabled:I = 0x14

.field static final TRANSACTION_isServiceEnabled:I = 0xf

.field static final TRANSACTION_isServiceSupported:I = 0xe

.field static final TRANSACTION_onPendingSaveUi:I = 0x10

.field static final TRANSACTION_removeClient:I = 0x2

.field static final TRANSACTION_restoreSession:I = 0x5

.field static final TRANSACTION_setAuthenticationResult:I = 0xb

.field static final TRANSACTION_setAutofillFailure:I = 0x8

.field static final TRANSACTION_setHasCallback:I = 0xc

.field static final TRANSACTION_setUserData:I = 0x13

.field static final TRANSACTION_startSession:I = 0x3

.field static final TRANSACTION_updateOrRestartSession:I = 0x7

.field static final TRANSACTION_updateSession:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutoFillManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v11, p3

    const-string v10, "android.view.autofill.IAutoFillManager"

    const v0, 0x5f4e5446

    const/4 v8, 0x1

    if-eq v14, v0, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v14, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getDefaultFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :pswitch_1
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getAvailableFieldClassificationAlgorithms()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v8

    :pswitch_2
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getAutofillServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v8}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v8

    :pswitch_3
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->isFieldClassificationEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_4
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/service/autofill/UserData;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v0, v1

    invoke-virtual {v13, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->setUserData(Landroid/service/autofill/UserData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_5
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserDataId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :pswitch_6
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v8}, Landroid/service/autofill/UserData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v8

    :pswitch_7
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->onPendingSaveUi(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_8
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceEnabled(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_9
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceSupported(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_a
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->disableOwnedAutofillServices(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_b
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v8

    nop

    :cond_3
    invoke-virtual {v13, v1, v2, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->setHasCallback(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_c
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    goto :goto_3

    :cond_4
    nop

    :goto_3
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->setAuthenticationResult(Landroid/os/Bundle;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_d
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->cancelSession(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_e
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->finishSession(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_f
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v13, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->setAutofillFailure(ILjava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_10
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    move-object v3, v2

    goto :goto_4

    :cond_5
    move-object v3, v1

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object v4, v2

    goto :goto_5

    :cond_6
    move-object v4, v1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    move-object v5, v2

    goto :goto_6

    :cond_7
    move-object v5, v1

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v7, v8

    goto :goto_7

    :cond_8
    move v7, v0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_8
    move-object v9, v1

    goto :goto_9

    :cond_9
    goto :goto_8

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    move v12, v8

    goto :goto_a

    :cond_a
    move v12, v0

    :goto_a
    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v6, v18

    move v14, v8

    move/from16 v8, v19

    move-object/from16 v22, v10

    move/from16 v10, v20

    move/from16 v11, v21

    invoke-virtual/range {v0 .. v12}, Landroid/view/autofill/IAutoFillManager$Stub;->updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;IIZ)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v11, p3

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_11
    move v14, v8

    move-object/from16 v22, v10

    move-object/from16 v12, v22

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    move-object v2, v0

    goto :goto_b

    :cond_b
    move-object v2, v1

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v3, v0

    goto :goto_c

    :cond_c
    move-object v3, v1

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillValue;

    move-object v4, v0

    goto :goto_d

    :cond_d
    move-object v4, v1

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v13

    move v1, v8

    move v5, v9

    move v6, v10

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/view/autofill/IAutoFillManager$Stub;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_12
    move v14, v8

    move-object v12, v10

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_13
    move v14, v8

    move-object v12, v10

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_e

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v14}, Landroid/service/autofill/FillEventHistory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_e
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v14

    :pswitch_14
    move v14, v8

    move-object v12, v10

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    move-object v3, v2

    goto :goto_f

    :cond_f
    move-object v3, v1

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object v4, v2

    goto :goto_10

    :cond_10
    move-object v4, v1

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    move-object v5, v2

    goto :goto_11

    :cond_11
    move-object v5, v1

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    move v7, v14

    goto :goto_12

    :cond_12
    move v7, v0

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_13
    move-object v9, v1

    goto :goto_14

    :cond_13
    goto :goto_13

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    move v10, v14

    goto :goto_15

    :cond_14
    move v10, v0

    :goto_15
    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v6, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v10}, Landroid/view/autofill/IAutoFillManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;Z)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_15
    move v14, v8

    move-object v12, v10

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_16
    move v14, v8

    move-object v12, v10

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :cond_15
    move v14, v8

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
