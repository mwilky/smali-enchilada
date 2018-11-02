.class public abstract Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;
.super Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
.source "DialogLoadingAsyncTask.java"


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
        "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<",
        "TParam;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method
