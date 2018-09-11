.class public Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
.super Ljava/lang/Object;
.source "ItemAlignmentFacet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemAlignmentDef"
.end annotation


# instance fields
.field private mAlignToBaseline:Z

.field mFocusViewId:I

.field mOffset:I

.field mOffsetPercent:F

.field mOffsetWithPadding:Z

.field mViewId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    .line 49
    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    .line 51
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 52
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    return-void
.end method


# virtual methods
.method public final getItemAlignmentFocusViewId()I
    .locals 2

    .line 167
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    :goto_0
    return v0
.end method

.method public final getItemAlignmentOffset()I
    .locals 1

    .line 71
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    return v0
.end method

.method public final getItemAlignmentOffsetPercent()F
    .locals 1

    .line 121
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    return v0
.end method

.method public final getItemAlignmentViewId()I
    .locals 1

    .line 150
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    return v0
.end method

.method public isAlignedToTextViewBaseLine()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mAlignToBaseline:Z

    return v0
.end method

.method public final isItemAlignmentOffsetWithPadding()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    return v0
.end method

.method public final setAlignedToTextViewBaseline(Z)V
    .locals 0
    .param p1, "alignToBaseline"    # Z

    .line 176
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mAlignToBaseline:Z

    .line 177
    return-void
.end method

.method public final setItemAlignmentFocusViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .line 159
    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    .line 160
    return-void
.end method

.method public final setItemAlignmentOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 61
    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    .line 62
    return-void
.end method

.method public final setItemAlignmentOffsetPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 108
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 112
    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 113
    return-void

    .line 110
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final setItemAlignmentOffsetWithPadding(Z)V
    .locals 0
    .param p1, "withPadding"    # Z

    .line 85
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    .line 86
    return-void
.end method

.method public final setItemAlignmentViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .line 136
    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    .line 137
    return-void
.end method
