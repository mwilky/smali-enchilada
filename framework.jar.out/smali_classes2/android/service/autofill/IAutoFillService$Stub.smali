.class public abstract Landroid/service/autofill/IAutoFillService$Stub;
.super Landroid/os/Binder;
.source "IAutoFillService.java"

# interfaces
.implements Landroid/service/autofill/IAutoFillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IAutoFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IAutoFillService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IAutoFillService"

.field static final TRANSACTION_onConnectedStateChanged:I = 0x1

.field static final TRANSACTION_onFillRequest:I = 0x2

.field static final TRANSACTION_onSaveRequest:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.autofill.IAutoFillService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IAutoFillService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.service.autofill.IAutoFillService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/service/autofill/IAutoFillService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/service/autofill/IAutoFillService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IAutoFillService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "android.service.autofill.IAutoFillService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/service/autofill/SaveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/SaveRequest;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/ISaveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/ISaveCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/service/autofill/IAutoFillService$Stub;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroid/service/autofill/FillRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillRequest;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/IFillCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IFillCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/service/autofill/IAutoFillService$Stub;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Landroid/service/autofill/IAutoFillService$Stub;->onConnectedStateChanged(Z)V

    return v2

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
