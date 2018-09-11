.class public Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "AbstractDetailsDescriptionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final mBody:Landroid/widget/TextView;

.field final mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field final mBodyLineSpacing:I

.field final mBodyMaxLines:I

.field final mBodyMinLines:I

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final mSubtitle:Landroid/widget/TextView;

.field final mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field final mTitle:Landroid/widget/TextView;

.field final mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field final mTitleLineSpacing:I

.field final mTitleMargin:I

.field final mTitleMaxLines:I

.field final mUnderSubtitleBaselineMargin:I

.field final mUnderTitleBaselineMargin:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 58
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    sget v0, Landroid/support/v17/leanback/R$id;->lb_details_description_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 60
    sget v0, Landroid/support/v17/leanback/R$id;->lb_details_description_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 61
    sget v0, Landroid/support/v17/leanback/R$id;->lb_details_description_body:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 64
    .local v0, "titleFontMetricsInt":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_details_description_title_baseline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 67
    .local v1, "titleAscent":I
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleMargin:I

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_under_title_baseline_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderTitleBaselineMargin:I

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_under_subtitle_baseline_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderSubtitleBaselineMargin:I

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_title_line_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleLineSpacing:I

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_body_line_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyLineSpacing:I

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$integer;->lb_details_description_body_max_lines:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyMaxLines:I

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$integer;->lb_details_description_body_min_lines:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyMinLines:I

    .line 83
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleMaxLines:I

    .line 85
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 86
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 87
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 89
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    new-instance v3, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$1;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 96
    return-void
.end method

.method private getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 146
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    .line 99
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 122
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 123
    return-void
.end method

.method public getBody()Landroid/widget/TextView;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubtitle()Landroid/widget/TextView;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method removePreDrawListener()V
    .locals 2

    .line 126
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 130
    :cond_0
    return-void
.end method
