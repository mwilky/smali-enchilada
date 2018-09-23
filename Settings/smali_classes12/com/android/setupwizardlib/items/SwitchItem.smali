.class public Lcom/android/setupwizardlib/items/SwitchItem;
.super Lcom/android/setupwizardlib/items/Item;
.source "SwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/Item;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwSwitchItem_android_checked:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 1

    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_switch:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/Item;->onBindView(Landroid/view/View;)V

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/SwitchItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/android/setupwizardlib/items/SwitchItem;Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/SwitchItem;->notifyItemChanged()V

    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/android/setupwizardlib/items/SwitchItem;Z)V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    return-void
.end method

.method public toggle(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method
