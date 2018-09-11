.class public Landroid/support/v17/leanback/graphics/CompositeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CompositeDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;,
        Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;
    }
.end annotation


# instance fields
.field mMutated:Z

.field mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    .line 71
    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    invoke-direct {v0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    .line 74
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    .line 75
    iput-object p1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    .line 76
    return-void
.end method


# virtual methods
.method public addChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-direct {v1, p1, p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/graphics/CompositeDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    .line 158
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .line 195
    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 197
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    return v1

    .line 199
    :cond_0
    const/16 v1, 0xff

    return v1
.end method

.method public getChildAt(I)Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;
    .locals 1
    .param p1, "index"    # I

    .line 124
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 204
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    .line 205
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v3}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 207
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 208
    return-object v3

    .line 205
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOpacity()I
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 216
    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->invalidateSelf()V

    .line 217
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 85
    iget-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 86
    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;-><init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;Landroid/support/v17/leanback/graphics/CompositeDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    .line 87
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    .line 88
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v3}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 90
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 88
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    .line 96
    .end local v0    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;>;"
    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 165
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 167
    return-void
.end method

.method public removeChild(I)V
    .locals 1
    .param p1, "index"    # I

    .line 131
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public removeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    .line 139
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    return-void

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 221
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 222
    return-void
.end method

.method public setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .line 184
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    .line 185
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 186
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setChildDrawableAt(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-direct {v1, p2, p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/graphics/CompositeDrawable;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 171
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    .line 172
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 226
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method updateBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    .line 234
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    .line 236
    .local v2, "childDrawable":Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;
    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 234
    .end local v2    # "childDrawable":Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
