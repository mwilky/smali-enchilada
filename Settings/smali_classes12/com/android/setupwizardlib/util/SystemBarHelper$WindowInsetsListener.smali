.class Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/SystemBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsListener"
.end annotation


# instance fields
.field private mBottomOffset:I

.field private mHasCalculatedBottomOffset:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;->mHasCalculatedBottomOffset:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/setupwizardlib/util/SystemBarHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/setupwizardlib/util/SystemBarHelper$1;

    .line 319
    invoke-direct {p0}, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 325
    iget-boolean v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;->mHasCalculatedBottomOffset:Z

    if-nez v0, :cond_0

    .line 326
    invoke-static {p1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->access$700(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;->mBottomOffset:I

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;->mHasCalculatedBottomOffset:Z

    .line 330
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 332
    .local v0, "bottomInset":I
    nop

    .line 333
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iget v2, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;->mBottomOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 332
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 335
    .local v1, "bottomMargin":I
    nop

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 339
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_1

    .line 340
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    const/4 v0, 0x0

    .line 346
    :cond_1
    nop

    .line 347
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    .line 348
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    .line 349
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    .line 346
    invoke-virtual {p2, v3, v4, v5, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v3

    return-object v3
.end method
