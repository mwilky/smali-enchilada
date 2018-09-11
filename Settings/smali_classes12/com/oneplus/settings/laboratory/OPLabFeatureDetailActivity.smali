.class public Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;


# static fields
.field private static final ONEPLUS_LAB_FEATURE_DISLIKE:I = -0x1

.field private static final ONEPLUS_LAB_FEATURE_KEY:Ljava/lang/String; = "oneplus_lab_feature_key"

.field private static final ONEPLUS_LAB_FEATURE_LIKE:I = 0x1

.field private static final ONEPLUS_LAB_FEATURE_SUMMARY:Ljava/lang/String; = "oneplus_lab_feature_Summary"

.field private static final ONEPLUS_LAB_FEATURE_TITLE:Ljava/lang/String; = "oneplus_lab_feature_title"

.field private static final ONEPLUS_LAB_FEATURE_TOGGLE_COUNT:Ljava/lang/String; = "oneplus_lab_feature_toggle_count"

.field private static final ONEPLUS_LAB_FEATURE_TOGGLE_NAMES:Ljava/lang/String; = "oneplus_lab_feature_toggle_names"

.field private static final SHOW_IMPORTANCE_SLIDER:Ljava/lang/String; = "show_importance_slider"


# instance fields
.field private mActiviteFeatureToggle:Landroid/view/View;

.field private mCommunirySummary:Landroid/widget/TextView;

.field private mCommuniryTitle:Landroid/widget/TextView;

.field private mDescriptionSummary:Landroid/widget/TextView;

.field private mDescriptionTitle:Landroid/widget/TextView;

.field private mDislikeImageButton:Landroid/widget/ImageButton;

.field private mFeatureToggleNames:[Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mLikeImageButton:Landroid/widget/ImageButton;

.field private mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

.field private mOneplusLabFeatureKey:Ljava/lang/String;

.field private mOneplusLabFeatureTitle:Ljava/lang/String;

.field private mOneplusLabFeatureToggleCount:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private highlightUserChoose(I)V
    .locals 3
    .param p1, "likeOrDislike"    # I

    .line 174
    const v0, 0x7f060273

    const v1, 0x7f0602be

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 177
    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 179
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 184
    :goto_0
    return-void
.end method

.method private initIntent()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_toggle_count"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_toggle_names"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mFeatureToggleNames:[Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method private initView()V
    .locals 5

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 72
    const v0, 0x7f0a0398

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionTitle:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a0397

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0a0396

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mCommuniryTitle:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a0395

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mCommunirySummary:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a039e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    .line 77
    const v0, 0x7f0a039d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    .line 78
    const-string v0, "show_importance_slider"

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    :goto_2
    const v0, 0x7f0a0399

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->isMultiToggle()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    iget v3, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mFeatureToggleNames:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->addChild(I[Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setOnRadioGroupClickListener(Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setSelect(I)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setVisibility(I)V

    .line 92
    :goto_3
    const v0, 0x7f0a0394

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    .line 93
    const v0, 0x7f0a0393

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_Summary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "oneplusLabFeatureSummary":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    .line 100
    return-void
.end method

.method private saveActitiveHistory(I)V
    .locals 2
    .param p1, "likeOrDislike"    # I

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    .line 159
    return-void
.end method

.method private setLikeOrDislike()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "likeOrDislike":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->highlightUserChoose(I)V

    .line 165
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 167
    .end local v0    # "likeOrDislike":I
    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0602be

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 171
    :goto_0
    return-void
.end method


# virtual methods
.method public OnRadioGroupClick(I)V
    .locals 2
    .param p1, "clickId"    # I

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 149
    return-void
.end method

.method public isMultiToggle()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a039e

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 136
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    .line 137
    goto :goto_2

    .line 139
    :pswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    .line 140
    goto :goto_2

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    .line 128
    .local v0, "isChecked":I
    const-string v1, "show_importance_slider"

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 134
    nop

    .line 144
    .end local v0    # "isChecked":I
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0393
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0d0175

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->initIntent()V

    .line 58
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->initView()V

    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 115
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->finish()V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
