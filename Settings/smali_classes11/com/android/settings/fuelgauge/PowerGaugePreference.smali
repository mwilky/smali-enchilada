.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Lcom/android/settings/widget/AppPreference;
.source "PowerGaugePreference.java"


# instance fields
.field private appendix:Landroid/view/View;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPowerState:I

.field private mProgress:Ljava/lang/CharSequence;

.field private mShowAnomalyIcon:Z

.field private mSwitch:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "info"    # Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 63
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;
    .param p5, "info"    # Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    .line 77
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 78
    const v1, 0x7f0d020a

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setWidgetLayoutResource(I)V

    .line 79
    iput-object p5, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 83
    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120d15

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p4

    .line 84
    .local v1, "title":Ljava/lang/CharSequence;
    :goto_1
    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 87
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    .line 91
    return-void
.end method

.method private convertToSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 3
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\"#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "colorfulTxt":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 166
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    .local v1, "encode":Landroid/text/Spanned;
    goto :goto_0

    .line 168
    .end local v1    # "encode":Landroid/text/Spanned;
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 171
    .restart local v1    # "encode":Landroid/text/Spanned;
    :goto_0
    return-object v1
.end method

.method private setButtonVisible()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 153
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shadowView()V

    .line 160
    :cond_2
    :goto_1
    return-void
.end method

.method private setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 120
    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method

.method private shadowView()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->appendix:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->appendix:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 5

    .line 137
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120739

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "txt":Ljava/lang/String;
    const-string v1, "D94B41"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->convertToSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120738

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .restart local v0    # "txt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shadowView()V

    goto :goto_0

    .line 145
    .end local v0    # "txt":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "txt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setButtonVisible()V

    .line 149
    return-void
.end method


# virtual methods
.method getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    return-object v0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 203
    const v0, 0x7f0a0073

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->appendix:Landroid/view/View;

    .line 204
    const v0, 0x7f0a05b6

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 205
    .local v1, "subtitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 207
    const v2, 0x7f08025a

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 214
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 216
    .local v0, "mTextButtonColor":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120cb8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060273

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setButtonVisible()V

    .line 222
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 223
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 224
    .local v2, "titleView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 226
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 96
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 116
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public setPercent(D)V
    .locals 1
    .param p1, "percentOfTotal"    # D

    .line 99
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/settings/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->updatePowerState()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 104
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 111
    iput p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    .line 112
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->updatePowerState()V

    .line 113
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 176
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 178
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 181
    return-void
.end method

.method public shouldShowAnomalyIcon(Z)V
    .locals 0
    .param p1, "showAnomalyIcon"    # Z

    .line 188
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 190
    return-void
.end method

.method public showAnomalyIcon()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    return v0
.end method
