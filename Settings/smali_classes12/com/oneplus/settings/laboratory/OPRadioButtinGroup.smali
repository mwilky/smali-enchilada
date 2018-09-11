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
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public addChild(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "featureToggleNames"    # [Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d019e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a054f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, "titleView":Landroid/widget/TextView;
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 51
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->addView(Landroid/view/View;I)V

    .line 46
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "titleView":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setSelect(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;->OnRadioGroupClick(I)V

    .line 63
    :cond_0
    return-void
.end method

.method public setOnRadioGroupClickListener(Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    .line 95
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    .line 96
    return-void
.end method

.method public setSelect(I)V
    .locals 5
    .param p1, "index"    # I

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildCount()I

    move-result v0

    .line 79
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 80
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a039c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 81
    .local v3, "rb":Landroid/widget/RadioButton;
    if-ne p1, v2, :cond_0

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    .end local v3    # "rb":Landroid/widget/RadioButton;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setSelect(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildCount()I

    move-result v0

    .line 67
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 68
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a039c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 69
    .local v3, "rb":Landroid/widget/RadioButton;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 70
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 67
    .end local v3    # "rb":Landroid/widget/RadioButton;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
