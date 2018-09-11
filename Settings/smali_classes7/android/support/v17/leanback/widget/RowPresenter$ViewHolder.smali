.class public Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "RowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# static fields
.field private static final ACTIVATED:I = 0x1

.field private static final ACTIVATED_NOT_ASSIGNED:I = 0x0

.field private static final NOT_ACTIVATED:I = 0x2


# instance fields
.field mActivated:I

.field protected final mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

.field mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

.field mExpanded:Z

.field mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

.field mInitialzed:Z

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field mRow:Landroid/support/v17/leanback/widget/Row;

.field mRowObject:Ljava/lang/Object;

.field mSelectLevel:F

.field mSelected:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 166
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mActivated:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->createDefault(Landroid/content/Context;)Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    .line 168
    return-void
.end method


# virtual methods
.method public final getHeaderViewHolder()Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    return-object v0
.end method

.method public final getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    .line 292
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public final getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-object v0
.end method

.method public getOnKeyListener()Landroid/view/View$OnKeyListener;
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method public final getRow()Landroid/support/v17/leanback/widget/Row;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    return-object v0
.end method

.method public final getRowObject()Ljava/lang/Object;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSelectLevel()F
    .locals 1

    .line 210
    iget v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedItemViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isExpanded()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mExpanded:Z

    return v0
.end method

.method public final isSelected()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelected:Z

    return v0
.end method

.method public final setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .line 228
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mActivated:I

    .line 229
    return-void
.end method

.method public final setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 285
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 286
    return-void
.end method

.method public final setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 268
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 269
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "keyListener"    # Landroid/view/View$OnKeyListener;

    .line 252
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 253
    return-void
.end method

.method public final syncActivatedStatus(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 241
    iget v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mActivated:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 242
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 243
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mActivated:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 246
    :cond_1
    :goto_0
    return-void
.end method
