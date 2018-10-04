.class public final Landroid/service/autofill/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCalled:Z

.field private final mRequestId:I


# direct methods
.method public constructor <init>(Landroid/service/autofill/IFillCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iput p2, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    return-void
.end method

.method private assertNotCalled()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iget v1, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-interface {v0, v1, p1}, Landroid/service/autofill/IFillCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
