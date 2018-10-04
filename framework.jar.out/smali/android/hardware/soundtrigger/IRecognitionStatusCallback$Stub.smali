.class public abstract Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.super Landroid/os/Binder;
.source "IRecognitionStatusCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger/IRecognitionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.soundtrigger.IRecognitionStatusCallback"

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onGenericSoundTriggerDetected:I = 0x2

.field static final TRANSACTION_onKeyphraseDetected:I = 0x1

.field static final TRANSACTION_onRecognitionPaused:I = 0x4

.field static final TRANSACTION_onRecognitionResumed:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onRecognitionResumed()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onRecognitionPaused()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onError(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    return v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
