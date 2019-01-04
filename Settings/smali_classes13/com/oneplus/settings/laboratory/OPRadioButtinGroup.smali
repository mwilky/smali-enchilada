.class public Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;
.super Landroid/widget/LinearLayout;
.source "OPRadioButtinGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addChild(I[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a058a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setSelect(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;->OnRadioGroupClick(I)V

    :cond_0
    return-void
.end method

.method public setOnRadioGroupClickListener(Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    return-void
.end method

.method public setSelect(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a03c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelect(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a03c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
