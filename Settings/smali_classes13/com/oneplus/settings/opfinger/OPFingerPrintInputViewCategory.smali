.class public Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "OPFingerPrintInputViewCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mLayoutResId:I

.field private mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

.field private mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsTitle:Landroid/widget/TextView;

.field private mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

.field private mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

.field public mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    const v0, 0x7f0d016c

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    const v0, 0x7f0d016c

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    const v0, 0x7f0d016c

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doRecognition(IIZ)V
    .locals 1

    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enrollFailed()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120bff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120bfe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    nop

    const v0, 0x7f0a03a6

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    nop

    const v0, 0x7f0a03a5

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    nop

    const v0, 0x7f0a03e4

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    nop

    const v0, 0x7f0a03e3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    nop

    const v0, 0x7f0a03e2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public resetTextAndBtn()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120c09

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120c08

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public resetWithAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetTextAndBtn()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetTextAndBtn()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->revealWithoutAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->revealWithoutAnimation()V

    :cond_1
    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    return-void
.end method

.method public setTipsCompletedContent()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120bfd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120bfc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120c02

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120c01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setTipsProgressContent(II)V
    .locals 3

    const/16 v0, 0x8

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120c02

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120c01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120c06

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120c05

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120c04

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120c03

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTipsStatusContent(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120c0b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120c0a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120c09

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120c08

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    nop

    :goto_0
    return-void
.end method

.method public showContinueView()V
    .locals 14

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    return-void
.end method
