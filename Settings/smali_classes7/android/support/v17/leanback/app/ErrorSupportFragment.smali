.class public Landroid/support/v17/leanback/app/ErrorSupportFragment;
.super Landroid/support/v17/leanback/app/BrandedSupportFragment;
.source "ErrorSupportFragment.java"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mButton:Landroid/widget/Button;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonText:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mErrorFrame:Landroid/view/ViewGroup;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsBackgroundTranslucent:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mIsBackgroundTranslucent:Z

    return-void
.end method

.method private static getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 232
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 233
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    return-object v1
.end method

.method private static setTopMargin(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "topMargin"    # I

    .line 238
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 239
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 240
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 189
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mIsBackgroundTranslucent:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/support/v17/leanback/R$color;->lb_error_background_color_translucent:I

    goto :goto_0

    :cond_1
    sget v2, Landroid/support/v17/leanback/R$color;->lb_error_background_color_opaque:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 199
    :cond_2
    :goto_1
    return-void
.end method

.method private updateButton()V
    .locals 2

    .line 216
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 222
    :cond_1
    return-void
.end method

.method private updateImageDrawable()V
    .locals 2

    .line 209
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :cond_1
    return-void
.end method

.method private updateMessage()V
    .locals 2

    .line 202
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :cond_1
    return-void
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isBackgroundTranslucent()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mIsBackgroundTranslucent:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 160
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_error_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "root":Landroid/view/View;
    sget v1, Landroid/support/v17/leanback/R$id;->error_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    .line 163
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateBackground()V

    .line 165
    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v1, p3}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 167
    sget v1, Landroid/support/v17/leanback/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mImageView:Landroid/widget/ImageView;

    .line 168
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateImageDrawable()V

    .line 170
    sget v1, Landroid/support/v17/leanback/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    .line 171
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateMessage()V

    .line 173
    sget v1, Landroid/support/v17/leanback/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    .line 174
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateButton()V

    .line 176
    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 177
    .local v1, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_error_under_image_baseline_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 179
    .local v2, "underImageBaselineMargin":I
    iget-object v3, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->setTopMargin(Landroid/widget/TextView;I)V

    .line 181
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_error_under_message_baseline_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 183
    .local v3, "underMessageBaselineMargin":I
    iget-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v5, v3, v5

    invoke-static {v4, v5}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->setTopMargin(Landroid/widget/TextView;I)V

    .line 185
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->onStart()V

    .line 227
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 228
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 75
    .local v0, "opacity":I
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mIsBackgroundTranslucent:Z

    .line 78
    .end local v0    # "opacity":I
    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateBackground()V

    .line 79
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateMessage()V

    .line 80
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 146
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 147
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateButton()V

    .line 148
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonText:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateButton()V

    .line 131
    return-void
.end method

.method public setDefaultBackground(Z)V
    .locals 1
    .param p1, "translucent"    # Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mIsBackgroundTranslucent:Z

    .line 55
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateBackground()V

    .line 56
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateMessage()V

    .line 57
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateImageDrawable()V

    .line 97
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 112
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mMessage:Ljava/lang/CharSequence;

    .line 113
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateMessage()V

    .line 114
    return-void
.end method
