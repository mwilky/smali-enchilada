.class public Lcom/oneplus/screenshot/longshot/cache/ImageCache;
.super Ljava/util/ArrayList;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mCanClear:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->mCanClear:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->mCanClear:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setCanClear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->mCanClear:Z

    return-void
.end method
