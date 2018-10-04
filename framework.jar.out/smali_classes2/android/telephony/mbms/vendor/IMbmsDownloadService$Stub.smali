.class public abstract Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.super Landroid/os/Binder;
.source "IMbmsDownloadService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.vendor.IMbmsDownloadService"

.field static final TRANSACTION_addProgressListener:I = 0x7

.field static final TRANSACTION_addStatusListener:I = 0x5

.field static final TRANSACTION_cancelDownload:I = 0xa

.field static final TRANSACTION_dispose:I = 0xd

.field static final TRANSACTION_download:I = 0x4

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_listPendingDownloads:I = 0x9

.field static final TRANSACTION_removeProgressListener:I = 0x8

.field static final TRANSACTION_removeStatusListener:I = 0x6

.field static final TRANSACTION_requestDownloadState:I = 0xb

.field static final TRANSACTION_requestUpdateFileServices:I = 0x2

.field static final TRANSACTION_resetDownloadKnowledge:I = 0xc

.field static final TRANSACTION_setTempFileRootDirectory:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->dispose(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/mbms/DownloadRequest;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/FileInfo;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {p0, v3, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->listPendingDownloads(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadProgressListener;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    goto :goto_5

    :cond_5
    nop

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadProgressListener;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    goto :goto_6

    :cond_6
    nop

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStatusListener;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    goto :goto_7

    :cond_7
    nop

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStatusListener;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    goto :goto_8

    :cond_8
    nop

    :goto_8
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->download(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
