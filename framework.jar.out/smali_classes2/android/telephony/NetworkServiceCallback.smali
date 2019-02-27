.class public Landroid/telephony/NetworkServiceCallback;
.super Ljava/lang/Object;
.source "NetworkServiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkServiceCallback$Result;
    }
.end annotation


# static fields
.field public static final RESULT_ERROR_BUSY:I = 0x3

.field public static final RESULT_ERROR_FAILED:I = 0x5

.field public static final RESULT_ERROR_ILLEGAL_STATE:I = 0x4

.field public static final RESULT_ERROR_INVALID_ARG:I = 0x2

.field public static final RESULT_ERROR_UNSUPPORTED:I = 0x1

.field public static final RESULT_SUCCESS:I

.field private static final mTag:Ljava/lang/String;


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/INetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/telephony/NetworkServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/NetworkServiceCallback;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/INetworkServiceCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/NetworkServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onGetNetworkRegistrationStateComplete(ILandroid/telephony/NetworkRegistrationState;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/NetworkServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/INetworkServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/INetworkServiceCallback;->onGetNetworkRegistrationStateComplete(ILandroid/telephony/NetworkRegistrationState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Landroid/telephony/NetworkServiceCallback;->mTag:Ljava/lang/String;

    const-string v3, "Failed to onGetNetworkRegistrationStateComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/telephony/NetworkServiceCallback;->mTag:Ljava/lang/String;

    const-string v2, "Weak reference of callback is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
