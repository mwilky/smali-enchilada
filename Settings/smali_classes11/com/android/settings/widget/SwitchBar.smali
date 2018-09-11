.class public Lcom/android/settings/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SwitchBar$SavedState;,
        Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
    }
.end annotation


# static fields
.field private static final XML_ATTRIBUTES:[I


# instance fields
.field private mBackgroundActivatedColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mLabel:Ljava/lang/String;

.field private mLoggingIntialized:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMetricsTag:Ljava/lang/String;

.field private mOffTextId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mOnTextId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mRestrictedIcon:Landroid/view/View;

.field private mSummary:Ljava/lang/String;

.field private final mSummarySpan:Landroid/text/style/TextAppearanceSpan;

.field private mSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SwitchBar;->XML_ATTRIBUTES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04031f
        0x7f04031e
        0x7f04031d
        0x7f04031c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02a3

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    sget-object v0, Lcom/android/settings/widget/SwitchBar;->XML_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    .line 111
    .local v3, "switchBarMarginStart":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 112
    .local v1, "switchBarMarginEnd":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/settings/widget/SwitchBar;->mBackgroundColor:I

    .line 113
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/settings/widget/SwitchBar;->mBackgroundActivatedColor:I

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    const v4, 0x7f0a0523

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 117
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v6, 0x7f1303e6

    invoke-direct {v4, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    .line 118
    iget-object v4, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 121
    const v5, 0x7f0a0524

    invoke-virtual {p0, v5}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/ToggleSwitch;

    iput-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 124
    iget-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 128
    iget v4, p0, Lcom/android/settings/widget/SwitchBar;->mBackgroundColor:I

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SwitchBar;->setBackgroundColor(I)V

    .line 130
    const v4, 0x7f121166

    const v5, 0x7f121165

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 132
    new-instance v4, Lcom/android/settings/widget/-$$Lambda$SwitchBar$xcPsCGGwUScwZOtx6bxg2zuPXc8;

    invoke-direct {v4, p0}, Lcom/android/settings/widget/-$$Lambda$SwitchBar$xcPsCGGwUScwZOtx6bxg2zuPXc8;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 135
    const v4, 0x7f0a0449

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    .line 136
    iget-object v4, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    new-instance v5, Lcom/android/settings/widget/SwitchBar$1;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/widget/SwitchBar$1;-><init>(Lcom/android/settings/widget/SwitchBar;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 151
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SwitchBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SwitchBar;

    .line 50
    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/SwitchBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SwitchBar;

    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/SwitchBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SwitchBar;

    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SwitchBar;

    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SwitchBar;

    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/widget/SwitchBar;Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public static synthetic lambda$show$1(Lcom/android/settings/widget/SwitchBar;)V
    .locals 5

    .line 249
    new-instance v0, Landroid/view/TouchDelegate;

    new-instance v1, Landroid/graphics/Rect;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getDelegatingView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private updateText()V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 180
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 181
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 182
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 183
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 291
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDelegatingView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 213
    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    :goto_0
    return-object v0
.end method

.method public final getSwitch()Lcom/android/settings/widget/ToggleSwitch;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 283
    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->mLoggingIntialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/switch_bar|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 286
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/widget/SwitchBar;->mLoggingIntialized:Z

    .line 287
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->propagateChecked(Z)V

    .line 288
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 360
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/SwitchBar$SavedState;

    .line 362
    .local v0, "ss":Lcom/android/settings/widget/SwitchBar$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 364
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 365
    iget-boolean v1, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 366
    iget-boolean v1, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v2, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->requestLayout()V

    .line 370
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 350
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 352
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/settings/widget/SwitchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 353
    .local v1, "ss":Lcom/android/settings/widget/SwitchBar$SavedState;
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    .line 355
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 264
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 265
    new-instance v0, Landroid/view/TouchDelegate;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getDelegatingView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 268
    :cond_0
    return-void
.end method

.method public propagateChecked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .line 275
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 276
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 298
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 302
    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 190
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 195
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 5
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 222
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 223
    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 224
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 225
    iput-boolean v1, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    .line 226
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 231
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    .line 232
    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/ToggleSwitch;->setVisibility(I)V

    .line 233
    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 236
    :goto_0
    new-instance v0, Landroid/view/TouchDelegate;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getDelegatingView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 238
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 202
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 204
    return-void

    .line 206
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 209
    return-void
.end method

.method public setMetricsTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->updateText()V

    .line 173
    return-void
.end method

.method public setSwitchBarText(II)V
    .locals 1
    .param p1, "onText"    # I
    .param p2, "offText"    # I

    .line 165
    iput p1, p0, Lcom/android/settings/widget/SwitchBar;->mOnTextId:I

    .line 166
    iput p2, p0, Lcom/android/settings/widget/SwitchBar;->mOffTextId:I

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 168
    return-void
.end method

.method public setTextViewLabelAndBackground(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/SwitchBar;->mOnTextId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/widget/SwitchBar;->mOffTextId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 160
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/settings/widget/SwitchBar;->mBackgroundActivatedColor:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SwitchBar;->mBackgroundColor:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setBackgroundColor(I)V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->updateText()V

    .line 162
    return-void
.end method

.method public show()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$SwitchBar$H3bwEmU9c2USPE1paf4Zlyfzp3I;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$$Lambda$SwitchBar$H3bwEmU9c2USPE1paf4Zlyfzp3I;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_0
    return-void
.end method
