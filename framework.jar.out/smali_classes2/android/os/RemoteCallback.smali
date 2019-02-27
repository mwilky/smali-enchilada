.class public final Landroid/os/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallback$OnResultListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/os/RemoteCallback$OnResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Landroid/os/RemoteCallback$3;

    invoke-direct {v0}, Landroid/os/RemoteCallback$3;-><init>()V

    sput-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    .line 59
    iput-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    .line 60
    nop

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/RemoteCallback$OnResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/RemoteCallback$OnResultListener;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/RemoteCallback$OnResultListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    .line 48
    iput-object p2, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/os/RemoteCallback$1;

    invoke-direct {v0, p0}, Landroid/os/RemoteCallback$1;-><init>(Landroid/os/RemoteCallback;)V

    iput-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 55
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback$OnResultListener;
    .locals 1
    .param p0, "x0"    # Landroid/os/RemoteCallback;

    .line 29
    iget-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;

    .line 66
    iget-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/RemoteCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/os/RemoteCallback$2;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    invoke-interface {v0, p1}, Landroid/os/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 80
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 85
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 95
    return-void
.end method
