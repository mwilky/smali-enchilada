.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/widget/FrameLayout;

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d015f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/SvgView;

    .line 130
    .local v0, "svgView":Lcom/oneplus/settings/opfinger/SvgView;
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    .line 131
    return-object v0
.end method


# virtual methods
.method public doRecognition(IZ)V
    .locals 2
    .param p1, "percent"    # I
    .param p2, "success"    # Z

    .line 180
    const/16 v0, 0x11

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto/16 :goto_0

    .line 182
    :cond_0
    const/16 v1, 0x15

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto/16 :goto_0

    .line 184
    :cond_1
    if-lt p1, v1, :cond_2

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 186
    :cond_2
    const/16 v0, 0x1d

    const/16 v1, 0x25

    if-lt p1, v0, :cond_3

    if-ge p1, v1, :cond_3

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 188
    :cond_3
    const/16 v0, 0x28

    if-lt p1, v1, :cond_4

    if-ge p1, v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 190
    :cond_4
    const/16 v1, 0x2e

    if-lt p1, v0, :cond_5

    if-ge p1, v1, :cond_5

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 192
    :cond_5
    const/16 v0, 0x32

    if-lt p1, v1, :cond_6

    if-ge p1, v0, :cond_6

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 194
    :cond_6
    const/16 v1, 0x37

    if-lt p1, v0, :cond_7

    if-ge p1, v1, :cond_7

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 196
    :cond_7
    const/16 v0, 0x3c

    if-lt p1, v1, :cond_8

    if-ge p1, v0, :cond_8

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 198
    :cond_8
    if-lt p1, v0, :cond_9

    const/16 v0, 0x41

    if-ge p1, v0, :cond_9

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 201
    :cond_9
    :goto_0
    return-void
.end method

.method public doRecognitionByCount(IIZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .line 214
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 238
    goto :goto_0

    .line 234
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 235
    goto :goto_0

    .line 231
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 232
    goto :goto_0

    .line 228
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 229
    goto :goto_0

    .line 225
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 226
    goto :goto_0

    .line 222
    :pswitch_7
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 223
    goto :goto_0

    .line 219
    :pswitch_8
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 220
    goto :goto_0

    .line 216
    :pswitch_9
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 217
    nop

    .line 252
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Landroid/widget/FrameLayout;

    .line 71
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const v0, 0x7f110022

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 74
    const v0, 0x7f110023

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 75
    const v0, 0x7f110024

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 76
    const v0, 0x7f110025

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 77
    const v0, 0x7f110026

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 78
    const v0, 0x7f110027

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 79
    const v0, 0x7f110028

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 80
    const v0, 0x7f110029

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    goto/16 :goto_0

    .line 82
    :cond_0
    const v0, 0x7f110033

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 83
    const v0, 0x7f110034

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 84
    const v0, 0x7f110035

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 85
    const v0, 0x7f110036

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 86
    const v0, 0x7f110037

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 87
    const v0, 0x7f110038

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 88
    const v0, 0x7f110039

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 89
    const v0, 0x7f11003a

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    goto :goto_0

    .line 100
    :cond_1
    const v0, 0x7f110012

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 101
    const v0, 0x7f110013

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 102
    const v0, 0x7f110014

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 103
    const v0, 0x7f110015

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 104
    const v0, 0x7f110016

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 105
    const v0, 0x7f110017

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 106
    const v0, 0x7f110018

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 107
    const v0, 0x7f110019

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    .line 108
    const v0, 0x7f11001a

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    .line 109
    const v0, 0x7f11001b

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 120
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 125
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d015e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    .line 56
    const-string v0, "#414141"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 58
    return-void
.end method

.method public resetWithAnimation()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 162
    :cond_0
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 147
    :cond_0
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 168
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 177
    :cond_0
    return-void
.end method

.method public setBackGround(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 255
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "colorString"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080426

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_1
    return-void
.end method
