.class public Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;
.super Landroid/widget/ImageView;
.source "OPCheckBoxNoAnim.java"


# instance fields
.field private mChecked:Z

.field private mCheckedResId:I

.field private mIntrinsicWidth:I

.field private mUnCheckedResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mIntrinsicWidth:I

    iput v0, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mCheckedResId:I

    iput v0, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mUnCheckedResId:I

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mChecked:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mCheckedResId:I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mUnCheckedResId:I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mChecked:Z

    return-void
.end method

.method public setCheckedImageResource(I)V
    .locals 3

    iput p1, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mCheckedResId:I

    iget v0, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mIntrinsicWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mCheckedResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mIntrinsicWidth:I

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    return-void
.end method

.method public setUnCheckedImageResource(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mUnCheckedResId:I

    return-void
.end method
