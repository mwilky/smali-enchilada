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
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 43
    const v0, 0x7f0d0164

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 43
    const v0, 0x7f0d0164

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 43
    const v0, 0x7f0d0164

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method public doRecognition(IIZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .line 208
    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    .line 219
    :cond_1
    :goto_0
    return-void
.end method

.method public enrollFailed()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 234
    const v1, 0x7f120be3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 236
    const v1, 0x7f120be2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 245
    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 71
    nop

    .line 72
    const v0, 0x7f0a0384

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    .line 75
    nop

    .line 76
    const v0, 0x7f0a0383

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    .line 79
    nop

    .line 80
    const v0, 0x7f0a03bb

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 81
    nop

    .line 82
    const v0, 0x7f0a03ba

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 83
    nop

    .line 84
    const v0, 0x7f0a03b9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 284
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, "layout":Landroid/view/View;
    return-object v1
.end method

.method public resetTextAndBtn()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 223
    const v1, 0x7f120bed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f120bec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    return-void
.end method

.method public resetWithAnimation()V
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetTextAndBtn()V

    .line 269
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithAnimation()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 277
    :cond_1
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetTextAndBtn()V

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 265
    :cond_1
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->revealWithoutAnimation()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->revealWithoutAnimation()V

    .line 254
    :cond_1
    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    .line 105
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    .line 106
    return-void
.end method

.method public setTipsCompletedContent()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f120be1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f120be0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f120be6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 173
    const v1, 0x7f120be5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public setTipsProgressContent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "percent"    # I

    .line 109
    const/16 v0, 0x8

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120be6

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120be5

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_0
    const/16 v1, 0x64

    if-lt p2, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120bea

    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120be9

    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120be8

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120be7

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    :goto_0
    return-void
.end method

.method public setTipsStatusContent(I)V
    .locals 2
    .param p1, "status"    # I

    .line 137
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120bef

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120bee

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120bed

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120bec

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    nop

    .line 153
    :goto_0
    return-void
.end method

.method public showContinueView()V
    .locals 14

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 182
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 183
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 184
    .local v1, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 187
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

    .line 190
    .local v4, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 191
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 195
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    .line 205
    return-void
.end method
