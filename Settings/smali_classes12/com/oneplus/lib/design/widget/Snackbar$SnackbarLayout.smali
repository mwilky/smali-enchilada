.class public final Lcom/oneplus/lib/design/widget/Snackbar$SnackbarLayout;
.super Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;
.source "Snackbar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnackbarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 326
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 331
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 335
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onMeasure(II)V

    .line 340
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/Snackbar$SnackbarLayout;->getChildCount()I

    move-result v0

    .line 341
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/Snackbar$SnackbarLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/Snackbar$SnackbarLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 342
    .local v1, "availableWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 343
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/Snackbar$SnackbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 344
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 345
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 346
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 345
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 342
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
