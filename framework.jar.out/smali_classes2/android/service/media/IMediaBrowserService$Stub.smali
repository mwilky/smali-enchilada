.class public abstract Landroid/service/media/IMediaBrowserService$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserService.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/IMediaBrowserService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserService"

.field static final TRANSACTION_addSubscription:I = 0x6

.field static final TRANSACTION_addSubscriptionDeprecated:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getMediaItem:I = 0x5

.field static final TRANSACTION_removeSubscription:I = 0x7

.field static final TRANSACTION_removeSubscriptionDeprecated:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.media.IMediaBrowserService"

    invoke-virtual {p0, p0, v0}, Landroid/service/media/IMediaBrowserService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.service.media.IMediaBrowserService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/media/IMediaBrowserService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/service/media/IMediaBrowserService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/service/media/IMediaBrowserService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/media/IMediaBrowserService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.media.IMediaBrowserService"

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/service/media/IMediaBrowserService$Stub;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/service/media/IMediaBrowserService$Stub;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/service/media/IMediaBrowserService$Stub;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/service/media/IMediaBrowserService$Stub;->removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/service/media/IMediaBrowserService$Stub;->addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/service/media/IMediaBrowserService$Stub;->disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/service/media/IMediaBrowserService$Stub;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return v2

    :cond_3
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
