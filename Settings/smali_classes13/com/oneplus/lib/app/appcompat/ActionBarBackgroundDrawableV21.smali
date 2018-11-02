.class Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;
.super Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_1
    :goto_0
    return-void
.end method
