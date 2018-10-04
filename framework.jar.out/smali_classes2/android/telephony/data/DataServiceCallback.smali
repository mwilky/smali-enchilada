.class public Landroid/telephony/data/DataServiceCallback;
.super Ljava/lang/Object;
.source "DataServiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataServiceCallback$ResultCode;
    }
.end annotation


# static fields
.field public static final RESULT_ERROR_BUSY:I = 0x3

.field public static final RESULT_ERROR_ILLEGAL_STATE:I = 0x4

.field public static final RESULT_ERROR_INVALID_ARG:I = 0x2

.field public static final RESULT_ERROR_UNSUPPORTED:I = 0x1

.field public static final RESULT_SUCCESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/data/IDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/telephony/data/DataServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/data/IDataServiceCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDataCallListChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onDataCallListChanged on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDeactivateDataCallComplete(I)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDeactivateDataCallComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onDeactivateDataCallComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onGetDataCallListComplete(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IDataServiceCallback;->onGetDataCallListComplete(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onGetDataCallListComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onSetDataProfileComplete(I)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onSetDataProfileComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onSetDataProfileComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onSetInitialAttachApnComplete(I)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onSetInitialAttachApnComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onSetInitialAttachApnComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IDataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onSetupDataCallComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
