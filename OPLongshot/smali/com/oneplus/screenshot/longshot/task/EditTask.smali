.class public Lcom/oneplus/screenshot/longshot/task/EditTask;
.super Landroid/os/AsyncTask;
.source "EditTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditTask"


# instance fields
.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_0
    if-le v7, v2, :cond_0

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v0, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v7, v4

    if-lez v7, :cond_3

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v7

    if-lez v9, :cond_2

    invoke-static {v3, v1, v1, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v3, v1, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v0, v7

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/EditTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;->onEditFinished(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/EditTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
