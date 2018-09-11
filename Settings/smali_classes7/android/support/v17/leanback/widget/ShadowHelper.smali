.class final Landroid/support/v17/leanback/widget/ShadowHelper;
.super Ljava/lang/Object;
.source "ShadowHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;
    .locals 2
    .param p0, "shadowContainer"    # Landroid/view/View;
    .param p1, "unfocusedZ"    # F
    .param p2, "focusedZ"    # F
    .param p3, "roundedCornerRadius"    # I

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    invoke-static {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 2
    .param p0, "impl"    # Ljava/lang/Object;
    .param p1, "level"    # F

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    invoke-static {p0, p1}, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->setShadowFocusLevel(Ljava/lang/Object;F)V

    .line 40
    :cond_0
    return-void
.end method

.method static supportsDynamicShadow()Z
    .locals 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
