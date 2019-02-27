.class public abstract Landroid/printservice/IPrintService$Stub;
.super Landroid/os/Binder;
.source "IPrintService.java"

# interfaces
.implements Landroid/printservice/IPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintService"

.field static final TRANSACTION_createPrinterDiscoverySession:I = 0x4

.field static final TRANSACTION_destroyPrinterDiscoverySession:I = 0xb

.field static final TRANSACTION_onPrintJobQueued:I = 0x3

.field static final TRANSACTION_requestCancelPrintJob:I = 0x2

.field static final TRANSACTION_requestCustomPrinterIcon:I = 0x9

.field static final TRANSACTION_setClient:I = 0x1

.field static final TRANSACTION_startPrinterDiscovery:I = 0x5

.field static final TRANSACTION_startPrinterStateTracking:I = 0x8

.field static final TRANSACTION_stopPrinterDiscovery:I = 0x6

.field static final TRANSACTION_stopPrinterStateTracking:I = 0xa

.field static final TRANSACTION_validatePrinters:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.printservice.IPrintService"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.printservice.IPrintService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/printservice/IPrintService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/printservice/IPrintService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/printservice/IPrintService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/printservice/IPrintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "android.printservice.IPrintService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->destroyPrinterDiscoverySession()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->validatePrinters(Ljava/util/List;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->stopPrinterDiscovery()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->startPrinterDiscovery(Ljava/util/List;)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->createPrinterDiscoverySession()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/printservice/IPrintServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->setClient(Landroid/printservice/IPrintServiceClient;)V

    return v2

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
