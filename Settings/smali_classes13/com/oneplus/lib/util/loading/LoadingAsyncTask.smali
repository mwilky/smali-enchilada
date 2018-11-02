.class public abstract Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
.super Landroid/os/AsyncTask;
.source "LoadingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParam;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;-><init>(Lcom/oneplus/lib/util/loading/LoadingAsyncTask;)V

    iput-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    return-void
.end method

.method private onFinish(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    new-instance v1, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;-><init>(Lcom/oneplus/lib/util/loading/LoadingAsyncTask;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    return-void
.end method


# virtual methods
.method protected abstract hideProgree(Ljava/lang/Object;)V
.end method

.method protected final onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected final onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onFinish(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onCancelledExtend(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCancelledExtend(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecuteExtend(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/util/loading/LoadingHelper;->beginShowProgress()V

    invoke-virtual {p0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onPreExecuteExtend()V

    return-void
.end method

.method protected onPreExecuteExtend()V
    .locals 0

    return-void
.end method

.method public setProgreeMinShowTime(J)Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<",
            "TParam;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/util/loading/LoadingHelper;->setProgreeMinShowTime(J)Lcom/oneplus/lib/util/loading/LoadingHelper;

    return-object p0
.end method

.method public setWillShowProgreeTime(J)Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<",
            "TParam;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/util/loading/LoadingHelper;->setWillShowProgreeTime(J)Lcom/oneplus/lib/util/loading/LoadingHelper;

    return-object p0
.end method

.method protected abstract showProgree()Ljava/lang/Object;
.end method
