.class public Lcom/android/settings/widget/FixedLineSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "FixedLineSummaryPreference.java"


# instance fields
.field private mSummaryLineCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/settings/R$styleable;->FixedLineSummaryPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    iget v1, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    return-void
.end method

.method public setSummaryLineCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    return-void
.end method
