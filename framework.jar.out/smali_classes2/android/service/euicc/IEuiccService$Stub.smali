.class public abstract Landroid/service/euicc/IEuiccService$Stub;
.super Landroid/os/Binder;
.source "IEuiccService.java"

# interfaces
.implements Landroid/service/euicc/IEuiccService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IEuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IEuiccService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.euicc.IEuiccService"

.field static final TRANSACTION_deleteSubscription:I = 0x9

.field static final TRANSACTION_downloadSubscription:I = 0x1

.field static final TRANSACTION_eraseSubscriptions:I = 0xc

.field static final TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x7

.field static final TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final TRANSACTION_getEid:I = 0x3

.field static final TRANSACTION_getEuiccInfo:I = 0x8

.field static final TRANSACTION_getEuiccProfileInfoList:I = 0x6

.field static final TRANSACTION_getOtaStatus:I = 0x4

.field static final TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xd

.field static final TRANSACTION_startOtaIfNecessary:I = 0x5

.field static final TRANSACTION_switchToSubscription:I = 0xa

.field static final TRANSACTION_updateSubscriptionNickname:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.euicc.IEuiccService"

    invoke-virtual {p0, p0, v0}, Landroid/service/euicc/IEuiccService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.service.euicc.IEuiccService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/euicc/IEuiccService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/service/euicc/IEuiccService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/service/euicc/IEuiccService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/euicc/IEuiccService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    const-string v9, "android.service.euicc.IEuiccService"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    return v10

    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IEraseSubscriptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEraseSubscriptionsCallback;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    return v10

    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IUpdateSubscriptionNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/service/euicc/IEuiccService$Stub;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    return v10

    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v10

    nop

    :cond_0
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/ISwitchToSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/ISwitchToSubscriptionCallback;

    move-result-object v3

    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/service/euicc/IEuiccService$Stub;->switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    return v10

    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IDeleteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDeleteSubscriptionCallback;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    return v10

    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccInfoCallback;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    return v10

    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v10

    nop

    :cond_1
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    return v10

    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEuiccProfileInfoListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    return v10

    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IOtaStatusChangedCallback;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    return v10

    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetOtaStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetOtaStatusCallback;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V

    return v10

    :pswitch_a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEidCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEidCallback;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEid(ILandroid/service/euicc/IGetEidCallback;)V

    return v10

    :pswitch_b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v10

    nop

    :cond_3
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    move-result-object v3

    invoke-virtual {v6, v2, v0, v1, v3}, Landroid/service/euicc/IEuiccService$Stub;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    return v10

    :pswitch_c
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_4
    goto :goto_1

    :goto_2
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v4, v10

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/euicc/IDownloadSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDownloadSubscriptionCallback;

    move-result-object v12

    move-object v0, v6

    move v1, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/service/euicc/IEuiccService$Stub;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V

    return v10

    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

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
