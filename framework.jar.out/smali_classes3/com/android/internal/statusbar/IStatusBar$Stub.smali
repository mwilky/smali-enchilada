.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addQsTile:I = 0x21

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandNotificationsPanelWithVelocity:I = 0x31

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x17

.field static final TRANSACTION_appTransitionFinished:I = 0x19

.field static final TRANSACTION_appTransitionPending:I = 0x16

.field static final TRANSACTION_appTransitionStarting:I = 0x18

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_clickQsTile:I = 0x23

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x14

.field static final TRANSACTION_handleSystemKey:I = 0x24

.field static final TRANSACTION_hideFingerprintDialog:I = 0x2c

.field static final TRANSACTION_hideRecentApps:I = 0xe

.field static final TRANSACTION_notifyNavBarColorChanged:I = 0x30

.field static final TRANSACTION_onAuthenticatedFailed:I = 0x2f

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1c

.field static final TRANSACTION_onFingerprintAcquired:I = 0x2d

.field static final TRANSACTION_onFingerprintAuthenticated:I = 0x29

.field static final TRANSACTION_onFingerprintEnrollResult:I = 0x2e

.field static final TRANSACTION_onFingerprintError:I = 0x2b

.field static final TRANSACTION_onFingerprintHelp:I = 0x2a

.field static final TRANSACTION_onProposedRotationChanged:I = 0x1f

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_remQsTile:I = 0x22

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_sendGestureMotionEvent:I = 0x33

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0xb

.field static final TRANSACTION_setSystemUiVisibility:I = 0x9

.field static final TRANSACTION_setTopAppHidesStatusBar:I = 0x20

.field static final TRANSACTION_setWindowState:I = 0xc

.field static final TRANSACTION_showAssistDisclosure:I = 0x1a

.field static final TRANSACTION_showFingerprintDialog:I = 0x28

.field static final TRANSACTION_showGlobalActionsMenu:I = 0x1e

.field static final TRANSACTION_showPictureInPictureMenu:I = 0x1d

.field static final TRANSACTION_showPinningEnterExitToast:I = 0x25

.field static final TRANSACTION_showPinningEscapeToast:I = 0x26

.field static final TRANSACTION_showRecentApps:I = 0xd

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_showShutdownUi:I = 0x27

.field static final TRANSACTION_showWirelessChargingAnimation:I = 0x8

.field static final TRANSACTION_startAssist:I = 0x1b

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x15

.field static final TRANSACTION_togglePanel:I = 0x7

.field static final TRANSACTION_toggleRecentApps:I = 0xf

.field static final TRANSACTION_toggleRecentAppsWithGesture:I = 0x32

.field static final TRANSACTION_toggleSplitScreen:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.android.internal.statusbar.IStatusBar"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v0, v1

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    return v11

    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentAppsWithGesture(IIFF)V

    return v11

    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanelWithVelocity(I)V

    return v11

    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyNavBarColorChanged(ILjava/lang/String;)V

    return v11

    :pswitch_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onAuthenticatedFailed()V

    return v11

    :pswitch_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFingerprintEnrollResult()V

    return v11

    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFingerprintAcquired(II)V

    return v11

    :pswitch_7
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideFingerprintDialog()V

    return v11

    :pswitch_8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFingerprintError(Ljava/lang/String;)V

    return v11

    :pswitch_9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFingerprintHelp(Ljava/lang/String;)V

    return v11

    :pswitch_a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFingerprintAuthenticated()V

    return v11

    :pswitch_b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    return v11

    :pswitch_c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v11

    nop

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    return v11

    :pswitch_d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    return v11

    :pswitch_e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v11

    nop

    :cond_3
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    return v11

    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(I)V

    return v11

    :pswitch_10
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_2

    :cond_4
    nop

    :goto_2
    move-object v0, v1

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    return v11

    :pswitch_11
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move-object v0, v1

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    return v11

    :pswitch_12
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_4

    :cond_6
    nop

    :goto_4
    move-object v0, v1

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    return v11

    :pswitch_13
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v0, v11

    nop

    :cond_7
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    return v11

    :pswitch_14
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v11

    nop

    :cond_8
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    return v11

    :pswitch_15
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    return v11

    :pswitch_16
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    return v11

    :pswitch_17
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    return v11

    :pswitch_18
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    goto :goto_5

    :cond_9
    nop

    :goto_5
    move-object v0, v1

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    return v11

    :pswitch_19
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    return v11

    :pswitch_1a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished()V

    return v11

    :pswitch_1b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    return v11

    :pswitch_1c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    return v11

    :pswitch_1d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    return v11

    :pswitch_1e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    return v11

    :pswitch_1f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    return v11

    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    return v11

    :pswitch_21
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    return v11

    :pswitch_22
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    return v11

    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    return v11

    :pswitch_24
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    return v11

    :pswitch_25
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v11

    goto :goto_6

    :cond_a
    move v1, v0

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v11

    nop

    :cond_b
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    return v11

    :pswitch_26
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    move v0, v11

    nop

    :cond_c
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    return v11

    :pswitch_27
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    return v11

    :pswitch_28
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    move v0, v11

    nop

    :cond_d
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    return v11

    :pswitch_29
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    move v0, v11

    nop

    :cond_e
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    return v11

    :pswitch_2a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v5, v0

    goto :goto_7

    :cond_f
    move-object v5, v1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v6, v0

    goto :goto_8

    :cond_10
    move-object v6, v1

    :goto_8
    move-object v0, v7

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return v11

    :pswitch_2b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    return v11

    :pswitch_2c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->togglePanel()V

    return v11

    :pswitch_2d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    return v11

    :pswitch_2e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    return v11

    :pswitch_2f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    return v11

    :pswitch_30
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    return v11

    :pswitch_31
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    return v11

    :pswitch_32
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    goto :goto_9

    :cond_11
    nop

    :goto_9
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    return v11

    :cond_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
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
