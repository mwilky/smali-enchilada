.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final TRANSACTION_addClient:I = 0x7

.field static final TRANSACTION_clearLastInputMethodWindowForTransition:I = 0x1f

.field static final TRANSACTION_createInputContentUriToken:I = 0x20

.field static final TRANSACTION_finishInput:I = 0x9

.field static final TRANSACTION_getCurrentInputMethodSubtype:I = 0x18

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x3

.field static final TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x4

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x1e

.field static final TRANSACTION_getLastInputMethodSubtype:I = 0x5

.field static final TRANSACTION_getShortcutInputMethodsAndSubtypes:I = 0x6

.field static final TRANSACTION_getVrInputMethodList:I = 0x2

.field static final TRANSACTION_hideMySoftInput:I = 0x12

.field static final TRANSACTION_hideSoftInput:I = 0xb

.field static final TRANSACTION_hideSoftInputForLongshot:I = 0x23

.field static final TRANSACTION_isInputMethodPickerShownForTest:I = 0xf

.field static final TRANSACTION_notifySuggestionPicked:I = 0x17

.field static final TRANSACTION_notifyUserAction:I = 0x22

.field static final TRANSACTION_registerSuggestionSpansForNotification:I = 0x16

.field static final TRANSACTION_removeClient:I = 0x8

.field static final TRANSACTION_reportFullscreenMode:I = 0x21

.field static final TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x1d

.field static final TRANSACTION_setCurrentInputMethodSubtype:I = 0x19

.field static final TRANSACTION_setImeWindowStatus:I = 0x15

.field static final TRANSACTION_setInputMethod:I = 0x10

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0x11

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0x1c

.field static final TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xe

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xd

.field static final TRANSACTION_showMySoftInput:I = 0x13

.field static final TRANSACTION_showSoftInput:I = 0xa

.field static final TRANSACTION_startInputOrWindowGainedFocus:I = 0xc

.field static final TRANSACTION_switchToNextInputMethod:I = 0x1b

.field static final TRANSACTION_switchToPreviousInputMethod:I = 0x1a

.field static final TRANSACTION_updateStatusIcon:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "com.android.internal.view.IInputMethodManager"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v12, v0, :cond_f

    const/4 v9, 0x0

    const/4 v0, 0x0

    packed-switch v12, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v11, v1, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifyUserAction(I)V

    return v10

    :pswitch_2
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v9, v10

    nop

    :cond_1
    move v1, v9

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_3
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :pswitch_4
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_5
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_6
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_7
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_8
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v9, v10

    nop

    :cond_4
    move v1, v9

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_9
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToPreviousInputMethod(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_a
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_2

    :cond_5
    nop

    :goto_2
    invoke-virtual {v11, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_b
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v10}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v10

    :pswitch_c
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/SuggestionSpan;

    goto :goto_4

    :cond_7
    nop

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_d
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    invoke-virtual {v11, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_e
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_f
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_10
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showMySoftInput(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_11
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideMySoftInput(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_12
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_5

    :cond_8
    nop

    :goto_5
    invoke-virtual {v11, v1, v2, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_13
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_14
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_15
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_16
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_17
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/EditorInfo;

    :goto_6
    move-object v7, v0

    goto :goto_7

    :cond_9
    goto :goto_6

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object v0, v11

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v8, v22

    move v12, v9

    move/from16 v9, v23

    move v12, v10

    move/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v12

    :pswitch_18
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    goto :goto_9

    :cond_b
    nop

    :goto_9
    invoke-virtual {v11, v1, v2, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_19
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    goto :goto_a

    :cond_c
    nop

    :goto_a
    invoke-virtual {v11, v1, v2, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1a
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1b
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1c
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1d
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v12

    :pswitch_1e
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_d

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v12}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v12

    :pswitch_1f
    move v1, v9

    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v1, v12

    nop

    :cond_e
    invoke-virtual {v11, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_20
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_21
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getVrInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_22
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :cond_f
    move v12, v10

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
