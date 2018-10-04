.class public abstract Lcom/android/internal/app/IVoiceInteractorCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractorCallback.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractorCallback"

.field static final TRANSACTION_deliverAbortVoiceResult:I = 0x4

.field static final TRANSACTION_deliverCancel:I = 0x6

.field static final TRANSACTION_deliverCommandResult:I = 0x5

.field static final TRANSACTION_deliverCompleteVoiceResult:I = 0x3

.field static final TRANSACTION_deliverConfirmationResult:I = 0x1

.field static final TRANSACTION_deliverPickOptionResult:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractorCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractorCallback;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.android.internal.app.IVoiceInteractorCallback"

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {p0, v4, v1, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    nop

    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_2

    :cond_3
    nop

    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    nop

    :cond_4
    sget-object v5, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_3

    :cond_5
    nop

    :goto_3
    invoke-virtual {p0, v4, v1, v5, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_4

    :cond_7
    nop

    :goto_4
    invoke-virtual {p0, v4, v1, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V

    return v2

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

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
