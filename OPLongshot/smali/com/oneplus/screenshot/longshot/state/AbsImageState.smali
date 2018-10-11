.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsImageState;
.super Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.source "AbsImageState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsImageState"


# instance fields
.field protected mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mImageView:Lcom/oneplus/screenshot/longshot/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageView:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f0b002b

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getNavBarHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setNavBarHeight(I)V

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setBitmaps(Ljava/util/List;)V

    :cond_0
    return-void
.end method
