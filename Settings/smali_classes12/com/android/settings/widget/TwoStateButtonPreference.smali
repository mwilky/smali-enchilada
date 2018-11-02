.class public Lcom/android/settings/widget/TwoStateButtonPreference;
.super Lcom/android/settings/applications/LayoutPreference;
.source "TwoStateButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mButtonOff:Landroid/widget/Button;

.field private final mButtonOn:Landroid/widget/Button;

.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f040360

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/R$styleable;->TwoStateButtonPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f12118c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v3, 0x7f0a0512

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/TwoStateButtonPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0511

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/TwoStateButtonPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/TwoStateButtonPreference;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStateOffButton()Landroid/widget/Button;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    return-object v0
.end method

.method public getStateOnButton()Landroid/widget/Button;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0512

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/TwoStateButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method public setButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
