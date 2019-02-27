.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_dismiss:I = 0x4

.field static final TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final TRANSACTION_notifyLidSwitchChanged:I = 0x17

.field static final TRANSACTION_onBootCompleted:I = 0x14

.field static final TRANSACTION_onDreamingStarted:I = 0x5

.field static final TRANSACTION_onDreamingStopped:I = 0x6

.field static final TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final TRANSACTION_onScreenTurningOff:I = 0xd

.field static final TRANSACTION_onScreenTurningOn:I = 0xb

.field static final TRANSACTION_onShortPowerPressedGoHome:I = 0x16

.field static final TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final TRANSACTION_onStartedWakingUp:I = 0x9

.field static final TRANSACTION_onSystemReady:I = 0x10

.field static final TRANSACTION_setCurrentUser:I = 0x13

.field static final TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_setSwitchingUser:I = 0x12

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.policy.IKeyguardService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    nop

    :cond_0
    move v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->notifyLidSwitchChanged(Z)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v2

    nop

    :cond_1
    move v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v3, v2

    nop

    :cond_3
    move v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp()V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    nop

    :cond_4
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_5
    nop

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v3, v2

    nop

    :cond_7
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    return v2

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

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
