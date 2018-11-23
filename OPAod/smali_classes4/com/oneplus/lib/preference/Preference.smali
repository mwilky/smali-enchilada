.class public Lcom/oneplus/lib/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/Preference$BaseSavedState;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oneplus/lib/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mImageFrame:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mIsAvatarIcon:Z

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconResId:I

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetFrame:Landroid/view/ViewGroup;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    sget v1, Lcom/oneplus/commonctrl/R$layout;->preference:I

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_opUseAvatarIcon:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    const-string v2, "Preference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsAvatarIcon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_icon:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_key:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_title:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_summary:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_order:I

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_fragment:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_layout:I

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_widgetLayout:I

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_enabled:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_selectable:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_persistent:I

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_dependency:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_shouldDisableView:I

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private doUpdateImageFrameParams()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_avatar_mini:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_left2:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_right3:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_top3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_top4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private isSummaryEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerDependency()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/Preference;->registerDependent(Lcom/oneplus/lib/preference/Preference;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/oneplus/lib/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependent(Lcom/oneplus/lib/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/oneplus/lib/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method canRecycleLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    return v0
.end method

.method public compareTo(Lcom/oneplus/lib/preference/Preference;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const/4 v0, -0x1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/oneplus/lib/preference/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->compareTo(Lcom/oneplus/lib/preference/Preference;)I

    move-result p1

    return p1
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/lib/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getPersistedFloat(F)F
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected getPersistedInt(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getPersistedLong(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    return-object v0
.end method

.method public getSecondaryIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getShouldDisableView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/oneplus/lib/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/oneplus/lib/preference/Preference;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->registerDependency()V

    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/lib/preference/Preference;->mId:J

    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->dispatchSetInitialValue()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    iget v5, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    :cond_4
    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    sget v5, Lcom/oneplus/commonctrl/R$id;->icon_frame:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    iget-object v6, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9

    move v6, v2

    goto :goto_3

    :cond_9
    move v6, v1

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->doUpdateImageFrameParams()V

    sget v5, Lcom/oneplus/commonctrl/R$id;->text_layout:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_e

    sget v6, Lcom/oneplus/commonctrl/R$id;->top_space:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_e

    if-eqz v7, :cond_e

    iget-object v8, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v1, :cond_b

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_b
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    if-eqz v6, :cond_e

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_c
    const/16 v8, 0x10

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v8, -0x2

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v6, :cond_d

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    :goto_4
    sget v6, Lcom/oneplus/commonctrl/R$id;->secondary_icon:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_13

    iget v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_11

    :cond_f
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_10

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    :cond_10
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_12

    move v1, v2

    nop

    :cond_12
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :cond_14
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    nop

    const v3, 0x1020018

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_1

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x10

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object v1
.end method

.method public onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependency()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    sget-object v0, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    sget-object v0, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->onClick()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    nop

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, p0}, Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/oneplus/lib/preference/PreferenceScreen;Lcom/oneplus/lib/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistFloat(F)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedFloat(F)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistInt(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    not-int v0, p1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistLong(J)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    not-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method requireKey()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mRequiresKey:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependency()V

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->registerDependency()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->requireKey()V

    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    return-void
.end method

.method public setSecondaryIcon(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method protected setSummaryOffFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    return-void
.end method

.method protected setSummaryOnFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setUseAvatarIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->doUpdateImageFrameParams()V

    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    return v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldPersist()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
