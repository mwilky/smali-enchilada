.class Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FocusHighlightHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FocusHighlightHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderItemFocusHighlight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;
    }
.end annotation


# instance fields
.field private mDuration:I

.field private mInitialized:Z

.field mScaleEnabled:Z

.field private mSelectScale:F


# direct methods
.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mScaleEnabled:Z

    return-void
.end method

.method private viewFocused(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->lazyInit(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    sget v0, Landroid/support/v17/leanback/R$id;->lb_focus_animator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;

    if-nez v0, :cond_0

    new-instance v1, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;

    iget v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    iget v3, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mDuration:I

    invoke-direct {v1, p1, v2, v3}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;-><init>(Landroid/view/View;FI)V

    move-object v0, v1

    sget v1, Landroid/support/v17/leanback/R$id;->lb_focus_animator:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->animateFocus(ZZ)V

    return-void
.end method


# virtual methods
.method lazyInit(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mScaleEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_browse_header_select_scale:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    :goto_0
    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_browse_header_select_duration:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v2, v1, Landroid/util/TypedValue;->data:I

    iput v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mDuration:I

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mInitialized:Z

    :cond_1
    return-void
.end method

.method public onInitializeView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemFocused(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->viewFocused(Landroid/view/View;Z)V

    return-void
.end method
