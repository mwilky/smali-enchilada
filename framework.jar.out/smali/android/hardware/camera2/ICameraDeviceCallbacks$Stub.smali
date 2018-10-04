.class public abstract Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceCallbacks.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceCallbacks"

.field static final TRANSACTION_onCaptureStarted:I = 0x3

.field static final TRANSACTION_onDeviceError:I = 0x1

.field static final TRANSACTION_onDeviceIdle:I = 0x2

.field static final TRANSACTION_onPrepared:I = 0x5

.field static final TRANSACTION_onRepeatingRequestError:I = 0x6

.field static final TRANSACTION_onRequestQueueEmpty:I = 0x7

.field static final TRANSACTION_onResultReceived:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceCallbacks;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/ICameraDeviceCallbacks;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onRequestQueueEmpty()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v3, v4, v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onRepeatingRequestError(JI)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onPrepared(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    sget-object v4, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    invoke-virtual {p0, v3, v1, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onDeviceIdle()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v1, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {p0, v3, v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    return v2

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
