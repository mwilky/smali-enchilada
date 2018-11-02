.class Lcom/oneplus/settings/quicklaunch/OPAppDragCell;
.super Landroid/widget/RelativeLayout;
.source "OPAppDragCell.java"


# instance fields
.field private mAppIcon:Landroid/widget/ImageView;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDeleteButton:Landroid/widget/ImageView;

.field private mDragHandle:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mSmallIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getDeleteButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDeleteButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDragHandle()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDragHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a02bf

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0458

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a04f9

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mSmallIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDragHandle:Landroid/widget/ImageView;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDeleteButton:Landroid/widget/ImageView;

    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->invalidate()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->invalidate()V

    return-void
.end method

.method public setShowAppIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mAppIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->invalidate()V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->requestLayout()V

    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->invalidate()V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->requestLayout()V

    return-void
.end method

.method public setShowHandle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mDragHandle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->invalidate()V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->requestLayout()V

    return-void
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->invalidate()V

    return-void
.end method
