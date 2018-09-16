.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;
.super Landroid/widget/RelativeLayout;
.source "OPFingerPrintEnrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mLayoutResId:I

.field private mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

.field private mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsWarning:Landroid/widget/TextView;

.field private mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

.field private mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

.field public mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

.field private mPercent:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 47
    const v0, 0x7f0d0164

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 47
    const v0, 0x7f0d0164

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 58
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 47
    const v0, 0x7f0d0164

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0164

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 94
    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 98
    const v1, 0x7f0a0383

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 101
    const v1, 0x7f0a03bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 103
    const v1, 0x7f0a03bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 105
    const v1, 0x7f0a03be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 107
    const v1, 0x7f0a03bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public doEnroll(IIZ)V
    .locals 3
    .param p1, "totalStep"    # I
    .param p2, "remainingStep"    # I
    .param p3, "success"    # Z

    .line 268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnroll--1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnroll--2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v1, p2, v0, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, p2, v0, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    .line 281
    :cond_1
    :goto_0
    return-void
.end method

.method public doRecognition(IIZ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v0

    .line 285
    .local v0, "scaleAnimationStep":I
    if-gt p1, v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    .line 296
    :cond_1
    :goto_0
    return-void
.end method

.method public enrollFailed()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 325
    const v1, 0x7f120be7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 327
    const v1, 0x7f120be6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 334
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 336
    :cond_1
    return-void
.end method

.method public getWarningTipsView()Landroid/widget/TextView;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideHeaderView()V
    .locals 5

    .line 77
    const v0, 0x7f0a04a7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .local v0, "titleBgView":Landroid/widget/ImageView;
    const v1, 0x7f0a04a8

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 79
    .local v1, "titleBgShadowView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 80
    const v3, 0x7f0a03bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "fingerInputTipsTitle":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 82
    const v4, 0x7f0a03bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, "fingerInputTipsSubTitle":Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public hideWarningTips()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public resetTextAndBtn()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120bf1

    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 306
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const v0, 0x7f120b10

    .local v0, "stringId":I
    :goto_0
    goto :goto_1

    .line 308
    .end local v0    # "stringId":I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    const v0, 0x7f120bef

    goto :goto_0

    .line 311
    :cond_2
    const v0, 0x7f120bf0

    .line 313
    .restart local v0    # "stringId":I
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 315
    .end local v0    # "stringId":I
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    if-eqz v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 318
    :cond_4
    return-void
.end method

.method public resetWithAnimation()V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetTextAndBtn()V

    .line 360
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithAnimation()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 366
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 368
    :cond_1
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetTextAndBtn()V

    .line 349
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 354
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 356
    :cond_1
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->revealWithoutAnimation()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->revealWithoutAnimation()V

    .line 345
    :cond_1
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "colorString"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    .line 137
    :cond_1
    return-void
.end method

.method public setEnrollAnimVisibility(Z)V
    .locals 4
    .param p1, "visibility"    # Z

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->setAlpha(F)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setAlpha(F)V

    .line 128
    :cond_3
    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

    .line 146
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

    .line 147
    return-void
.end method

.method public setSubTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "subTitleView"    # Landroid/widget/TextView;

    .line 73
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 74
    return-void
.end method

.method public setTipsCompletedContent()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 220
    const v1, 0x7f120be5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f120be4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 224
    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 231
    const v1, 0x7f120bea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f120be9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 235
    return-void
.end method

.method public setTipsProgressContent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "percent"    # I

    .line 150
    const/16 v0, 0x8

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120bea

    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120be9

    .line 154
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    const/16 v1, 0x64

    if-lt p2, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120bee

    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120bed

    .line 160
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120bec

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120beb

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 169
    :goto_0
    return-void
.end method

.method public setTipsStatusContent(I)V
    .locals 2
    .param p1, "status"    # I

    .line 197
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120bf3

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120bf2

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120bf1

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120bf0

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    nop

    .line 213
    :goto_0
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .line 69
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public showContinueView()V
    .locals 14

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 242
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 243
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 244
    .local v1, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 247
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

    .line 250
    .local v4, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 251
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 254
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 255
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    .line 265
    return-void
.end method

.method public showWarningTips(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "warningMsg"    # Ljava/lang/CharSequence;

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_0
    return-void
.end method
