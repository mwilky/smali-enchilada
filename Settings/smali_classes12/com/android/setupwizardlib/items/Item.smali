.class public Lcom/android/setupwizardlib/items/Item;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "Item.java"


# instance fields
.field private mEnabled:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLayoutRes:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getDefaultLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/items/Item;->mLayoutRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_enabled:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/items/Item;->mIcon:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/items/Item;->mTitle:Ljava/lang/CharSequence;

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_summary:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/items/Item;->mSummary:Ljava/lang/CharSequence;

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_layout:I

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getDefaultLayoutResource()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/setupwizardlib/items/Item;->mLayoutRes:I

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_visible:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_default:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/Item;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/items/Item;->mLayoutRes:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/Item;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/Item;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getId()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 8

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_items_summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    sget v5, Lcom/android/setupwizardlib/R$id;->suw_items_icon_container:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    sget v3, Lcom/android/setupwizardlib/R$id;->suw_items_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3, v6}, Lcom/android/setupwizardlib/items/Item;->onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getViewId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method protected onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/items/Item;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/items/Item;->mLayoutRes:I

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/items/Item;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/items/Item;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/items/Item;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/items/Item;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method
