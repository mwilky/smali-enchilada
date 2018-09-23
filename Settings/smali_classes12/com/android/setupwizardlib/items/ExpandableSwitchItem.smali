.class public Lcom/android/setupwizardlib/items/ExpandableSwitchItem;
.super Lcom/android/setupwizardlib/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCollapsedSummary:Ljava/lang/CharSequence;

.field private mExpandedSummary:Ljava/lang/CharSequence;

.field private mIsExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem_suwCollapsedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem_suwExpandedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private tintCompoundDrawables(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010036

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_3

    sget v3, Lcom/android/setupwizardlib/R$id;->suw_items_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getCollapsedSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_expandable_switch:I

    return v0
.end method

.method public getExpandedSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->getExpandedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->getCollapsedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/SwitchItem;->onBindView(Landroid/view/View;)V

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_expandable_switch_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v1, v0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setChecked(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->tintCompoundDrawables(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->setExpanded(Z)V

    return-void
.end method

.method public setCollapsedSummary(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->notifyItemChanged()V

    return-void
.end method

.method public setExpandedSummary(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->notifyChanged()V

    :cond_0
    return-void
.end method
