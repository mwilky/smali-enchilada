.class public Lcom/oneplus/lib/widget/actionbar/Toolbar;
.super Landroid/widget/Toolbar;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;,
        Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;,
        Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_DIVIDER_ATTR:[I

.field private static final MAX_ICON_SIZE:I

.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private final ICON_MIN_WIDTH:I

.field private final ICON_SIZE_STANDARD:I

.field private mActionBarDividerColor:I

.field private mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private mHasActionBarLineColor:Z

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMaxIconSize:I

.field private mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

.field private mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

.field private final mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

.field private mMyNavButtonView:Landroid/widget/ImageButton;

.field private mNavButtonStyle:I

.field private mNeedResetPadding:Z

.field private mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private mOrientation:I

.field private mOuterActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

.field private mPaddingTopOffset:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mRealPaddingBottom:I

.field private mRealTitleMarginBottom:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubTitleMarginBottom:I

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private final mTmpStatesArray:[I

.field private mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    sget v0, Lcom/oneplus/commonctrl/R$dimen;->abc_action_menu_icon_size:I

    sput v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->MAX_ICON_SIZE:I

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->onePlusActionbarLineColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ACTION_BAR_DIVIDER_ATTR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 161
    sget v0, Lcom/oneplus/commonctrl/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 169
    invoke-direct/range {p0 .. p4}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    sget v2, Lcom/oneplus/commonctrl/R$dimen;->toolbar_icon_min_width:I

    iput v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ICON_MIN_WIDTH:I

    .line 63
    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_icon_size_button:I

    iput v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ICON_SIZE_STANDARD:I

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    .line 108
    const v3, 0x800013

    iput v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 125
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    .line 126
    new-array v3, v3, [I

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTmpStatesArray:[I

    .line 129
    new-instance v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;

    invoke-direct {v3, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    .line 150
    new-instance v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$2;

    invoke-direct {v3, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$2;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 171
    sget-object v3, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ACTION_BAR_DIVIDER_ATTR:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getDividerColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionBarDividerColor:I

    .line 172
    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 175
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_op_collapsible:I

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    .line 176
    iget-boolean v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v8, :cond_0

    .line 177
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 180
    sget v8, Lcom/oneplus/commonctrl/R$anim;->op_design_appbar_state_list_animator:I

    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v8

    .line 182
    .local v8, "sla":Landroid/animation/StateListAnimator;
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 183
    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setCollapsedState(Z)Z

    .line 187
    .end local v8    # "sla":Landroid/animation/StateListAnimator;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    .line 188
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    .line 189
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    .line 190
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_opNavigationButtonStyle:I

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    .line 191
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_gravity:I

    iget v9, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    .line 192
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_opButtonGravity:I

    const/16 v9, 0x30

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    .line 193
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMargin:I

    .line 194
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/oneplus/lib/widget/actionbar/Toolbar;->MAX_ICON_SIZE:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    .line 196
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginStart:I

    const/4 v9, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 197
    .local v8, "marginStart":I
    if-ltz v8, :cond_1

    .line 198
    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    .line 201
    :cond_1
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {v3, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 202
    .local v10, "marginEnd":I
    if-ltz v10, :cond_2

    .line 203
    iput v10, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    .line 206
    :cond_2
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {v3, v11, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 207
    .local v11, "marginTop":I
    if-ltz v11, :cond_3

    .line 208
    iput v11, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    .line 211
    :cond_3
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {v3, v12, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 213
    .local v12, "marginBottom":I
    if-ltz v12, :cond_4

    .line 214
    iput v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    .line 217
    :cond_4
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subTitleMarginBottom:I

    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 218
    .local v13, "subtitleMarginBottom":I
    if-lez v13, :cond_5

    .line 219
    iput v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubTitleMarginBottom:I

    .line 221
    :cond_5
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_realPaddingBottom:I

    invoke-virtual {v3, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    iput v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    .line 222
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_realTitleMarginBottom:I

    invoke-virtual {v3, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    iput v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealTitleMarginBottom:I

    .line 223
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {v3, v14, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    .line 225
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetStart:I

    .line 226
    const/high16 v15, -0x80000000

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    .line 228
    .local v14, "contentInsetStart":I
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetEnd:I

    .line 229
    invoke-virtual {v3, v2, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 231
    .local v2, "contentInsetEnd":I
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetLeft:I

    .line 232
    invoke-virtual {v3, v9, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 233
    .local v9, "contentInsetLeft":I
    sget v15, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetRight:I

    .line 234
    invoke-virtual {v3, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 235
    .local v15, "contentInsetRight":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    .line 236
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v4, v9, v15}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setAbsolute(II)V

    .line 238
    const/high16 v4, -0x80000000

    if-ne v14, v4, :cond_6

    if-eq v2, v4, :cond_7

    .line 240
    :cond_6
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v4, v14, v2}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setRelative(II)V

    .line 243
    :cond_7
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    .line 245
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    .line 248
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 249
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 251
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_title:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 252
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 253
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    :cond_8
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 257
    .local v4, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 258
    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 262
    :cond_9
    move-object/from16 v17, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    .end local v1    # "title":Ljava/lang/CharSequence;
    .local v17, "title":Ljava/lang/CharSequence;
    iput-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 263
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_popupTheme:I

    move/from16 v18, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .end local v2    # "contentInsetEnd":I
    .local v18, "contentInsetEnd":I
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setPopupTheme(I)V

    .line 265
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 266
    .local v1, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_a

    .line 267
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_a
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 272
    .local v2, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 273
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 276
    :cond_b
    move-object/from16 v19, v1

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_logo:I

    .end local v1    # "navIcon":Landroid/graphics/drawable/Drawable;
    .local v19, "navIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 277
    .local v1, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_c

    .line 278
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_c
    move-object/from16 v20, v1

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_logoDescription:I

    .end local v1    # "logo":Landroid/graphics/drawable/Drawable;
    .local v20, "logo":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 282
    .local v1, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 283
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 286
    :cond_d
    move-object/from16 v21, v1

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextColor:I

    .end local v1    # "logoDesc":Ljava/lang/CharSequence;
    .local v21, "logoDesc":Ljava/lang/CharSequence;
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 287
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextColor:I

    move-object/from16 v22, v2

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .end local v2    # "navDesc":Ljava/lang/CharSequence;
    .local v22, "navDesc":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitleTextColor(I)V

    goto :goto_0

    .line 290
    .end local v22    # "navDesc":Ljava/lang/CharSequence;
    .restart local v2    # "navDesc":Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v22, v2

    const/4 v2, -0x1

    .end local v2    # "navDesc":Ljava/lang/CharSequence;
    .restart local v22    # "navDesc":Ljava/lang/CharSequence;
    :goto_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 291
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitleTextColor(I)V

    .line 296
    :cond_f
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getFitsSystemWindows()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 59
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 59
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 59
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/actionbar/Toolbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 59
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    return v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2119
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 2120
    .local v0, "isRtl":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildCount()I

    move-result v2

    .line 2121
    .local v2, "childCount":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutDirection()I

    move-result v3

    invoke-static {p2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    .line 2123
    .local v3, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2125
    if-eqz v0, :cond_2

    .line 2126
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 2127
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2128
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2129
    .local v5, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v6, v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 2130
    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 2131
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2126
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2135
    .end local v1    # "i":I
    :cond_2
    nop

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 2136
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2137
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2138
    .restart local v5    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v6, v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 2139
    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 2140
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2135
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2144
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .line 1437
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1439
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v1

    .local v1, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :goto_0
    goto :goto_1

    .line 1441
    .end local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1442
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v1

    goto :goto_0

    .line 1444
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1446
    .restart local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :goto_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 1448
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1449
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1452
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    :goto_2
    return-void
.end method

.method private ensureCollapseButtonView()V
    .locals 5

    .line 1419
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1420
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1421
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1422
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1423
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    .line 1424
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 1425
    const/4 v1, 0x2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 1426
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1434
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    .line 2281
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-nez v0, :cond_0

    .line 2282
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    .line 2284
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 708
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .line 1079
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenuView()V

    .line 1080
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuBuilder;

    .line 1083
    .local v0, "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1084
    new-instance v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Lcom/oneplus/lib/widget/actionbar/Toolbar$1;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1087
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1089
    .end local v0    # "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .line 1092
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-nez v0, :cond_0

    .line 1093
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    .line 1094
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->setToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    .line 1095
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;->setPopupTheme(I)V

    .line 1096
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;->setOnMenuItemClickListener(Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;)V

    .line 1097
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 1098
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    .line 1100
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 1101
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1104
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 5

    .line 1410
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1411
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    .line 1412
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    .line 1413
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 1414
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 6
    .param p1, "gravity"    # I

    .line 2147
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutDirection()I

    move-result v0

    .line 2148
    .local v0, "ld":I
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 2149
    .local v1, "absGrav":I
    and-int/lit8 v2, v1, 0x7

    .line 2150
    .local v2, "hGrav":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v5, 0x5

    if-eq v2, v5, :cond_1

    .line 2156
    if-ne v0, v3, :cond_0

    move v4, v5

    nop

    :cond_0
    return v4

    .line 2154
    :cond_1
    return v2
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .line 2066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2067
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2068
    .local v1, "childHeight":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2069
    .local v3, "alignmentOffset":I
    :goto_0
    const/4 v4, 0x0

    .line 2070
    .local v4, "top":I
    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildVerticalGravity(I)I

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_4

    const/16 v6, 0x50

    if-eq v5, v6, :cond_3

    .line 2080
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v5, v6

    .line 2081
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v6

    .line 2082
    .local v6, "paddingBottom":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v7

    .line 2083
    .local v7, "height":I
    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    .line 2084
    .local v8, "space":I
    sub-int v9, v8, v1

    div-int/lit8 v9, v9, 0x2

    .line 2085
    .local v9, "spaceAbove":I
    iget v10, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    if-ge v9, v10, :cond_1

    .line 2086
    iget v9, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    goto :goto_1

    .line 2088
    :cond_1
    sub-int v10, v7, v6

    sub-int/2addr v10, v1

    sub-int/2addr v10, v9

    sub-int/2addr v10, v5

    .line 2090
    .local v10, "spaceBelow":I
    iget v11, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v10, v11, :cond_2

    .line 2091
    iget v11, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v10

    sub-int v11, v9, v11

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2094
    .end local v10    # "spaceBelow":I
    :cond_2
    :goto_1
    add-int/2addr v5, v9

    .end local v4    # "top":I
    .end local v6    # "paddingBottom":I
    .end local v7    # "height":I
    .end local v8    # "space":I
    .end local v9    # "spaceAbove":I
    .local v5, "top":I
    goto :goto_2

    .line 2075
    .end local v5    # "top":I
    .restart local v4    # "top":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, v1

    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v5

    sub-int v5, v2, v3

    .line 2077
    .end local v4    # "top":I
    .restart local v5    # "top":I
    goto :goto_2

    .line 2072
    .end local v5    # "top":I
    .restart local v4    # "top":I
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v2

    iget v5, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v2, v5

    sub-int v5, v2, v3

    .line 2073
    .end local v4    # "top":I
    .restart local v5    # "top":I
    nop

    .line 2096
    :goto_2
    return v5
.end method

.method private getChildVerticalGravity(I)I
    .locals 3
    .param p1, "gravity"    # I

    .line 2100
    and-int/lit8 v0, p1, 0x10

    .line 2101
    .local v0, "vgrav":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v2, 0x30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    .line 2107
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    and-int/2addr v1, v2

    return v1

    .line 2105
    :cond_0
    return v0
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2165
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2166
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1107
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getPaddingTopOffset(I)I
    .locals 4
    .param p1, "spaceBelow"    # I

    .line 1638
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v0

    .line 1639
    .local v0, "paddingTop":I
    move v1, v0

    .line 1640
    .local v1, "finalPaddingTop":I
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    .line 1642
    .local v2, "desginPaddingBottom":I
    if-ge p1, v2, :cond_0

    .line 1643
    sub-int v3, v2, p1

    sub-int/2addr v1, v3

    goto :goto_0

    .line 1645
    :cond_0
    sub-int v3, p1, v2

    add-int/2addr v1, v3

    .line 1648
    :goto_0
    return v1
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2170
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2171
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 2021
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2022
    .local v1, "collapseLeft":I
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 2023
    .local v2, "collapseRight":I
    const/4 v3, 0x0

    .line 2024
    .local v3, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2025
    .local v4, "count":I
    move v5, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .local v1, "i":I
    .local v2, "collapseLeft":I
    .local v3, "collapseRight":I
    .local v5, "width":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2026
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2027
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2028
    .local v7, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v8, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v2

    .line 2029
    .local v8, "l":I
    iget v9, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v3

    .line 2030
    .local v9, "r":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2031
    .local v10, "leftMargin":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2032
    .local v11, "rightMargin":I
    neg-int v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2033
    neg-int v12, v9

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2034
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    add-int/2addr v5, v12

    .line 2025
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v8    # "l":I
    .end local v9    # "r":I
    .end local v10    # "leftMargin":I
    .end local v11    # "rightMargin":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2036
    .end local v1    # "i":I
    :cond_0
    return v5
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2231
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2232
    return v1

    .line 2234
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 2203
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2041
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2042
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2043
    .local v1, "l":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 2044
    neg-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2045
    invoke-direct {p0, p1, p4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2046
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2047
    .local v3, "childWidth":I
    add-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2048
    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    .line 2049
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2054
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2055
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2056
    .local v1, "r":I
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2057
    neg-int v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2058
    invoke-direct {p0, p1, p4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2059
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2060
    .local v3, "childWidth":I
    sub-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2061
    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    sub-int/2addr p2, v4

    .line 2062
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1592
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1594
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1595
    .local v1, "leftDiff":I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1596
    .local v3, "rightDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1597
    .local v5, "leftMargin":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1598
    .local v6, "rightMargin":I
    add-int v7, v5, v6

    .line 1599
    .local v7, "hMargins":I
    neg-int v8, v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, p6, v2

    .line 1600
    neg-int v8, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p6, v4

    .line 1602
    nop

    .line 1603
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    add-int/2addr v2, p3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1602
    invoke-static {p2, v2, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1604
    .local v2, "childWidthMeasureSpec":I
    nop

    .line 1605
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v4

    iget v8, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v4, v8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v8

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v8

    add-int/2addr v4, p5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1604
    invoke-static {p4, v4, v8}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1608
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1609
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .line 1540
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1542
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 1543
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1542
    invoke-static {p2, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1545
    .local v1, "childWidthSpec":I
    nop

    .line 1546
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1545
    invoke-static {p4, v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1549
    .local v2, "childHeightSpec":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1550
    .local v3, "childHeightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1551
    if-eqz v3, :cond_0

    .line 1552
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 1553
    :cond_0
    move v5, p6

    .line 1554
    .local v5, "size":I
    :goto_0
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1556
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1557
    return-void
.end method

.method private measureSearchChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1562
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1564
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v3, 0x0

    aget v4, p6, v3

    sub-int/2addr v2, v4

    .line 1565
    .local v2, "leftDiff":I
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v5, 0x1

    aget v6, p6, v5

    sub-int/2addr v4, v6

    .line 1566
    .local v4, "rightDiff":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1567
    .local v6, "leftMargin":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1568
    .local v7, "rightMargin":I
    add-int v8, v6, v7

    .line 1569
    .local v8, "hMargins":I
    neg-int v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v3

    .line 1570
    neg-int v9, v4

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p6, v5

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v8

    add-int v3, v3, p3

    .line 1572
    .local v3, "totalUsedWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 1573
    .local v9, "childWidth":I
    move/from16 v10, p2

    invoke-static {v10, v3, v9}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v11

    .line 1575
    .local v11, "childWidthMeasureSpec":I
    nop

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v12

    move-object/from16 v13, p0

    iget v14, v13, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v14

    add-int/2addr v12, v14

    iget v14, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iget v14, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    add-int v12, v12, p5

    iget v15, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1575
    move/from16 v0, p4

    invoke-static {v0, v12, v15}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    .line 1579
    .local v12, "childHeightMeasureSpec":I
    move-object/from16 v15, p1

    invoke-virtual {v15, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1580
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v16, v16, v8

    return v16
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .line 1488
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1489
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1490
    return-void
.end method

.method private resetNavgationIconBound(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 993
    if-eqz p1, :cond_2

    .line 994
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 995
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 996
    .local v1, "height":I
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    if-le v0, v2, :cond_0

    .line 997
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 998
    .local v2, "scale":F
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    .line 999
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1001
    .end local v2    # "scale":F
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    if-le v1, v2, :cond_1

    .line 1002
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 1003
    .restart local v2    # "scale":F
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    .line 1004
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 1006
    .end local v2    # "scale":F
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1008
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_2
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .line 1619
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1621
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildCount()I

    move-result v0

    .line 1622
    .local v0, "childCount":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1623
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1624
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1625
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1626
    return v1

    .line 1622
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1629
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .line 2222
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2224
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2225
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;)V

    .line 2224
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2227
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2228
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2199
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 737
    .local v0, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->collapseActionView()Z

    .line 740
    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->dismissPopupMenus()V

    .line 609
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 2

    .line 2194
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2176
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2181
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2182
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;)V

    return-object v0

    .line 2183
    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2184
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2185
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2186
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2188
    :cond_2
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .line 1317
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1318
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    goto :goto_0

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1317
    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .line 1274
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1275
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    goto :goto_0

    .line 1276
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1274
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 4

    .line 1369
    const/4 v0, 0x0

    .line 1370
    .local v0, "hasActions":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v1

    .line 1372
    .local v1, "mb":Lcom/oneplus/lib/menu/MenuBuilder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    .line 1374
    .end local v1    # "mb":Lcom/oneplus/lib/menu/MenuBuilder;
    :cond_1
    if-eqz v0, :cond_2

    .line 1375
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result v1

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1376
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1374
    :goto_1
    return v1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 1

    .line 1389
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    .line 1391
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1389
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 1

    .line 1404
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    .line 1406
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1404
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .line 1355
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1357
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1355
    :goto_0
    return v0
.end method

.method public getDividerColor(Landroid/content/Context;I)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrRes"    # I

    .line 301
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 302
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 303
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 306
    .local v1, "color":I
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    return v1

    .line 308
    .end local v1    # "color":I
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z

    .line 312
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1053
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    .line 1054
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1041
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method getOuterActionMenuPresenter()Lcom/oneplus/lib/menu/ActionMenuPresenter;
    .locals 1

    .line 2290
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOuterActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1074
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    .line 1075
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .line 2294
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Z)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public getTitieTopWithoutOffset()I
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .line 471
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .line 441
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method public getTitleTop()I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .line 1119
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1120
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .line 613
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 614
    return v1

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 618
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 619
    return v1

    .line 622
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 623
    .local v2, "lineCount":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 624
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 625
    const/4 v1, 0x1

    return v1

    .line 623
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 628
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 354
    invoke-super {p0}, Landroid/widget/Toolbar;->onAttachedToWindow()V

    .line 355
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 318
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 319
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 320
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    .line 321
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 322
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v1

    .line 323
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v2

    .line 331
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 332
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "height":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4
    .param p1, "extraSpace"    # I

    .line 339
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTmpStatesArray:[I

    .line 341
    .local v0, "extraStates":[I
    array-length v1, v0

    add-int/2addr v1, p1

    invoke-super {p0, v1}, Landroid/widget/Toolbar;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 342
    .local v1, "states":[I
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsible:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsible:I

    neg-int v3, v3

    :goto_0
    aput v3, v0, v2

    .line 343
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    if-eqz v3, :cond_1

    .line 344
    sget v3, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsed:I

    neg-int v3, v3

    goto :goto_1

    :cond_1
    sget v3, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsed:I

    :goto_1
    aput v3, v0, v2

    .line 346
    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2

    .line 348
    .end local v0    # "extraStates":[I
    .end local v1    # "states":[I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1494
    invoke-super {p0}, Landroid/widget/Toolbar;->onDetachedFromWindow()V

    .line 1495
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1496
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 45
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 1796
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1797
    .local v1, "isRtl":Z
    :goto_0
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    .line 1798
    .local v4, "shouldLayoutNavIcon":Z
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v5

    .line 1799
    .local v5, "shouldLayoutCollapseButtonView":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1800
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1802
    .local v7, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v8

    .line 1803
    .local v8, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getWidth()I

    move-result v9

    .line 1804
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v10

    .line 1806
    .local v10, "height":I
    iget-boolean v11, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    if-eqz v11, :cond_1

    .line 1807
    iput-boolean v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    .line 1809
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v11

    iget v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v11, v12

    .line 1810
    .local v11, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v12

    .line 1811
    .local v12, "left":I
    sub-int v13, v9, v7

    .line 1813
    .local v13, "right":I
    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    .line 1814
    .local v14, "collapsingMargins":[I
    aput v3, v14, v2

    aput v3, v14, v3

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMinimumHeight()I

    move-result v15

    .line 1818
    .local v15, "minHeight":I
    if-ltz v15, :cond_2

    sub-int v2, p5, p3

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1820
    .local v2, "alignmentHeight":I
    :goto_1
    if-eqz v4, :cond_4

    .line 1821
    if-eqz v1, :cond_3

    .line 1822
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v13, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    .line 1825
    :cond_3
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v12, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    .line 1830
    :cond_4
    :goto_2
    if-eqz v5, :cond_6

    .line 1831
    if-eqz v1, :cond_5

    .line 1832
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v13, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_3

    .line 1835
    :cond_5
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v12, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    .line 1840
    :cond_6
    :goto_3
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1841
    if-eqz v1, :cond_7

    .line 1842
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v3, v12, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    goto :goto_4

    .line 1845
    :cond_7
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v3, v13, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    .line 1850
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetLeft()I

    move-result v3

    .line 1851
    .local v3, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetRight()I

    move-result v17

    .line 1852
    .local v17, "contentInsetRight":I
    move/from16 v18, v4

    sub-int v4, v3, v12

    .end local v4    # "shouldLayoutNavIcon":Z
    .local v18, "shouldLayoutNavIcon":Z
    move/from16 v19, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .end local v5    # "shouldLayoutCollapseButtonView":Z
    .local v19, "shouldLayoutCollapseButtonView":Z
    aput v4, v14, v5

    .line 1853
    sub-int v4, v9, v7

    sub-int/2addr v4, v13

    sub-int v4, v17, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v14, v5

    .line 1854
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1855
    .end local v12    # "left":I
    .local v4, "left":I
    sub-int v5, v9, v7

    sub-int v5, v5, v17

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1857
    .end local v13    # "right":I
    .local v5, "right":I
    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v12}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1858
    if-eqz v1, :cond_9

    .line 1859
    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v12, v5, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v5

    goto :goto_5

    .line 1862
    :cond_9
    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v12, v4, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    .line 1867
    :cond_a
    :goto_5
    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v12}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1868
    if-eqz v1, :cond_b

    .line 1869
    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v12, v5, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v5

    goto :goto_6

    .line 1872
    :cond_b
    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v12, v4, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    .line 1877
    :cond_c
    :goto_6
    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v12}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v12

    .line 1878
    .local v12, "layoutTitle":Z
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    .line 1879
    .local v13, "layoutSubtitle":Z
    const/16 v20, 0x0

    .line 1880
    .local v20, "titleHeight":I
    if-eqz v12, :cond_d

    .line 1881
    move/from16 v21, v3

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v3    # "contentInsetLeft":I
    .local v21, "contentInsetLeft":I
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1882
    .local v3, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    move/from16 v22, v15

    iget v15, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    .end local v15    # "minHeight":I
    .local v22, "minHeight":I
    move/from16 v23, v7

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v7    # "paddingRight":I
    .local v23, "paddingRight":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v15, v7

    iget v7, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v7

    add-int v20, v20, v15

    .end local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    goto :goto_7

    .line 1884
    .end local v21    # "contentInsetLeft":I
    .end local v22    # "minHeight":I
    .end local v23    # "paddingRight":I
    .local v3, "contentInsetLeft":I
    .restart local v7    # "paddingRight":I
    .restart local v15    # "minHeight":I
    :cond_d
    move/from16 v21, v3

    move/from16 v23, v7

    move/from16 v22, v15

    .end local v3    # "contentInsetLeft":I
    .end local v7    # "paddingRight":I
    .end local v15    # "minHeight":I
    .restart local v21    # "contentInsetLeft":I
    .restart local v22    # "minHeight":I
    .restart local v23    # "paddingRight":I
    :goto_7
    if-eqz v13, :cond_e

    .line 1885
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1886
    .local v3, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v7, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    iget-object v15, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    iget v15, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v15

    add-int v20, v20, v7

    .line 1889
    .end local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_e
    if-nez v12, :cond_10

    if-eqz v13, :cond_f

    goto :goto_8

    .line 1984
    :cond_f
    move/from16 v32, v1

    move/from16 v30, v2

    move/from16 v39, v5

    move/from16 v27, v6

    move/from16 v28, v9

    goto/16 :goto_14

    .line 1891
    :cond_10
    :goto_8
    if-eqz v12, :cond_11

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_9

    :cond_11
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1892
    .local v3, "topChild":Landroid/view/View;
    :goto_9
    if-eqz v13, :cond_12

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_a

    :cond_12
    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1893
    .local v7, "bottomChild":Landroid/view/View;
    :goto_a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1894
    .local v15, "toplp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v25, v3

    move-object/from16 v3, v24

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1895
    .local v3, "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v25, "topChild":Landroid/view/View;
    if-eqz v12, :cond_13

    move-object/from16 v26, v7

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v7    # "bottomChild":Landroid/view/View;
    .local v26, "bottomChild":Landroid/view/View;
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_14

    goto :goto_b

    .end local v26    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomChild":Landroid/view/View;
    :cond_13
    move-object/from16 v26, v7

    .end local v7    # "bottomChild":Landroid/view/View;
    .restart local v26    # "bottomChild":Landroid/view/View;
    :goto_b
    if-eqz v13, :cond_15

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1896
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_15

    :cond_14
    const/4 v7, 0x1

    goto :goto_c

    :cond_15
    const/4 v7, 0x0

    .line 1898
    .local v7, "titleHasWidth":Z
    :goto_c
    move/from16 v27, v6

    iget v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    .end local v6    # "paddingLeft":I
    .local v27, "paddingLeft":I
    and-int/lit8 v6, v6, 0x10

    move/from16 v28, v9

    .end local v9    # "width":I
    .local v28, "width":I
    const/16 v9, 0x30

    if-eq v6, v9, :cond_19

    const/16 v9, 0x50

    if-eq v6, v9, :cond_18

    .line 1904
    sub-int v6, v10, v11

    sub-int/2addr v6, v8

    .line 1905
    .local v6, "space":I
    sub-int v9, v6, v20

    div-int/lit8 v9, v9, 0x2

    .line 1906
    .local v9, "spaceAbove":I
    move/from16 v29, v6

    iget v6, v15, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    .end local v6    # "space":I
    .local v29, "space":I
    move/from16 v30, v2

    iget v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    .end local v2    # "alignmentHeight":I
    .local v30, "alignmentHeight":I
    add-int/2addr v6, v2

    if-ge v9, v6, :cond_16

    .line 1907
    iget v2, v15, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    iget v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    add-int v9, v2, v6

    .line 1916
    move/from16 v31, v4

    goto :goto_d

    .line 1909
    :cond_16
    sub-int v2, v10, v8

    sub-int v2, v2, v20

    sub-int/2addr v2, v9

    sub-int/2addr v2, v11

    .line 1911
    .local v2, "spaceBelow":I
    iget v6, v15, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v31, v4

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    .end local v4    # "left":I
    .local v31, "left":I
    add-int/2addr v6, v4

    if-ge v2, v6, :cond_17

    .line 1912
    iget v4, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    iget v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v4, v6

    sub-int/2addr v4, v2

    sub-int v4, v9, v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1916
    .end local v2    # "spaceBelow":I
    :cond_17
    :goto_d
    add-int v2, v11, v9

    .line 1917
    .local v2, "titleTop":I
    goto :goto_e

    .line 1919
    .end local v9    # "spaceAbove":I
    .end local v29    # "space":I
    .end local v30    # "alignmentHeight":I
    .end local v31    # "left":I
    .local v2, "alignmentHeight":I
    .restart local v4    # "left":I
    :cond_18
    move/from16 v30, v2

    move/from16 v31, v4

    .end local v2    # "alignmentHeight":I
    .end local v4    # "left":I
    .restart local v30    # "alignmentHeight":I
    .restart local v31    # "left":I
    sub-int v2, v10, v8

    iget v4, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v2, v4

    sub-int v2, v2, v20

    goto :goto_e

    .line 1900
    .end local v30    # "alignmentHeight":I
    .end local v31    # "left":I
    .restart local v2    # "alignmentHeight":I
    .restart local v4    # "left":I
    :cond_19
    move/from16 v30, v2

    move/from16 v31, v4

    .end local v2    # "alignmentHeight":I
    .end local v4    # "left":I
    .restart local v30    # "alignmentHeight":I
    .restart local v31    # "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v2

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v2, v4

    iget v4, v15, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    add-int/2addr v2, v4

    .line 1901
    .local v2, "titleTop":I
    nop

    .line 1919
    :goto_e
    nop

    .line 1924
    if-eqz v1, :cond_1e

    .line 1925
    if-eqz v7, :cond_1a

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    goto :goto_f

    :cond_1a
    const/4 v4, 0x0

    :goto_f
    const/4 v6, 0x1

    aget v9, v14, v6

    sub-int/2addr v4, v9

    .line 1926
    .local v4, "rd":I
    const/4 v9, 0x0

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    sub-int v5, v5, v16

    .line 1927
    move/from16 v32, v1

    neg-int v1, v4

    .end local v1    # "isRtl":Z
    .local v32, "isRtl":Z
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v6

    .line 1928
    move v1, v5

    .line 1929
    .local v1, "titleRight":I
    move v6, v5

    .line 1931
    .local v6, "subtitleRight":I
    if-eqz v12, :cond_1b

    .line 1932
    iget-object v9, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1933
    .local v9, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    move-object/from16 v33, v3

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v3    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v33, "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    .line 1934
    .local v3, "titleLeft":I
    move/from16 v34, v4

    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v4    # "rd":I
    .local v34, "rd":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1935
    .local v4, "titleBottom":I
    move/from16 v35, v5

    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v5    # "right":I
    .local v35, "right":I
    invoke-virtual {v5, v3, v2, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1936
    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    sub-int v1, v3, v5

    .line 1937
    iget v5, v9, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    .end local v3    # "titleLeft":I
    .end local v4    # "titleBottom":I
    .end local v9    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    goto :goto_10

    .line 1939
    .end local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v34    # "rd":I
    .end local v35    # "right":I
    .local v3, "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v4, "rd":I
    .restart local v5    # "right":I
    :cond_1b
    move-object/from16 v33, v3

    move/from16 v34, v4

    move/from16 v35, v5

    .end local v3    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v4    # "rd":I
    .end local v5    # "right":I
    .restart local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .restart local v34    # "rd":I
    .restart local v35    # "right":I
    :goto_10
    if-eqz v13, :cond_1c

    .line 1940
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1941
    .local v3, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v4, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 1942
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v6, v4

    .line 1943
    .local v4, "subtitleLeft":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 1944
    .local v5, "subtitleBottom":I
    iget-object v9, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4, v2, v6, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1945
    iget v9, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v6, v9

    .line 1946
    iget v9, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v5, v9

    .line 1948
    .end local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v4    # "subtitleLeft":I
    .end local v5    # "subtitleBottom":I
    :cond_1c
    if-eqz v7, :cond_1d

    .line 1949
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1951
    .end local v6    # "subtitleRight":I
    .end local v34    # "rd":I
    .end local v35    # "right":I
    .local v1, "right":I
    move v5, v1

    goto :goto_11

    .end local v1    # "right":I
    .restart local v35    # "right":I
    :cond_1d
    move/from16 v5, v35

    .line 1984
    .end local v35    # "right":I
    .local v5, "right":I
    :goto_11
    move/from16 v39, v5

    move/from16 v4, v31

    goto/16 :goto_14

    .line 1952
    .end local v32    # "isRtl":Z
    .end local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v1, "isRtl":Z
    .local v3, "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_1e
    move/from16 v32, v1

    move-object/from16 v33, v3

    .end local v1    # "isRtl":Z
    .end local v3    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .restart local v32    # "isRtl":Z
    .restart local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    if-eqz v7, :cond_1f

    iget v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    :goto_12
    const/4 v1, 0x0

    aget v4, v14, v1

    sub-int/2addr v3, v4

    .line 1953
    .local v3, "ld":I
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v4, v31, v4

    .line 1954
    .end local v31    # "left":I
    .local v4, "left":I
    neg-int v6, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v14, v1

    .line 1955
    move v6, v4

    .line 1956
    .local v6, "titleLeft":I
    move v9, v4

    .line 1958
    .local v9, "subtitleLeft":I
    if-eqz v12, :cond_20

    .line 1959
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1960
    .local v1, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    move/from16 v37, v3

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v3    # "ld":I
    .local v37, "ld":I
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v6

    .line 1961
    .local v3, "titleRight":I
    move/from16 v38, v4

    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v4    # "left":I
    .local v38, "left":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1962
    .local v4, "titleBottom":I
    move/from16 v39, v5

    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .end local v5    # "right":I
    .local v39, "right":I
    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1963
    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int v6, v3, v5

    .line 1964
    iget v5, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    .end local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v3    # "titleRight":I
    .end local v4    # "titleBottom":I
    goto :goto_13

    .line 1966
    .end local v37    # "ld":I
    .end local v38    # "left":I
    .end local v39    # "right":I
    .local v3, "ld":I
    .local v4, "left":I
    .restart local v5    # "right":I
    :cond_20
    move/from16 v37, v3

    move/from16 v38, v4

    move/from16 v39, v5

    .end local v3    # "ld":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .restart local v37    # "ld":I
    .restart local v38    # "left":I
    .restart local v39    # "right":I
    :goto_13
    if-eqz v13, :cond_21

    .line 1967
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1968
    .restart local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v3, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    .line 1969
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v9

    .line 1970
    .local v3, "subtitleRight":I
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1971
    .local v4, "subtitleBottom":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1972
    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int v9, v3, v5

    .line 1973
    iget v5, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    .line 1975
    .end local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v3    # "subtitleRight":I
    .end local v4    # "subtitleBottom":I
    :cond_21
    if-eqz v7, :cond_22

    .line 1976
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .end local v2    # "titleTop":I
    .end local v6    # "titleLeft":I
    .end local v7    # "titleHasWidth":Z
    .end local v9    # "subtitleLeft":I
    .end local v15    # "toplp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v25    # "topChild":Landroid/view/View;
    .end local v26    # "bottomChild":Landroid/view/View;
    .end local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v37    # "ld":I
    .end local v38    # "left":I
    .local v4, "left":I
    goto :goto_14

    .line 1984
    .end local v4    # "left":I
    .restart local v38    # "left":I
    :cond_22
    move/from16 v4, v38

    .end local v38    # "left":I
    .restart local v4    # "left":I
    :goto_14
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1985
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1986
    .local v1, "leftViewsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_23

    .line 1987
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move/from16 v5, v30

    invoke-direct {v0, v3, v4, v14, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    .line 1986
    .end local v30    # "alignmentHeight":I
    .local v5, "alignmentHeight":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1991
    .end local v2    # "i":I
    .end local v5    # "alignmentHeight":I
    .restart local v30    # "alignmentHeight":I
    :cond_23
    move/from16 v5, v30

    .end local v30    # "alignmentHeight":I
    .restart local v5    # "alignmentHeight":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1992
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1993
    .local v2, "rightViewsCount":I
    move/from16 v6, v39

    const/4 v3, 0x0

    .end local v39    # "right":I
    .local v3, "i":I
    .local v6, "right":I
    :goto_16
    if-ge v3, v2, :cond_24

    .line 1994
    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {v0, v7, v6, v14, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v6

    .line 1993
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2000
    .end local v3    # "i":I
    :cond_24
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v0, v3, v7}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2001
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v14}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v3

    .line 2002
    .local v3, "centerViewsWidth":I
    sub-int v9, v28, v27

    sub-int v9, v9, v23

    div-int/lit8 v9, v9, 0x2

    add-int v7, v27, v9

    .line 2003
    .local v7, "parentCenter":I
    div-int/lit8 v9, v3, 0x2

    .line 2004
    .local v9, "halfCenterViewsWidth":I
    sub-int v15, v7, v9

    .line 2005
    .local v15, "centerLeft":I
    move/from16 v40, v1

    add-int v1, v15, v3

    .line 2006
    .local v1, "centerRight":I
    .local v40, "leftViewsCount":I
    if-ge v15, v4, :cond_25

    .line 2007
    move v15, v4

    goto :goto_17

    .line 2008
    :cond_25
    if-le v1, v6, :cond_26

    .line 2009
    sub-int v16, v1, v6

    sub-int v15, v15, v16

    .line 2012
    :cond_26
    :goto_17
    move/from16 v41, v1

    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .end local v1    # "centerRight":I
    .local v41, "centerRight":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2013
    .local v1, "centerViewsCount":I
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_18
    move/from16 v42, v36

    .end local v36    # "i":I
    .local v42, "i":I
    move/from16 v43, v2

    move/from16 v2, v42

    if-ge v2, v1, :cond_27

    .line 2014
    .end local v42    # "i":I
    .local v2, "i":I
    .local v43, "rightViewsCount":I
    move/from16 v44, v1

    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .end local v1    # "centerViewsCount":I
    .local v44, "centerViewsCount":I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v0, v1, v15, v14, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v15

    .line 2013
    add-int/lit8 v36, v2, 0x1

    .end local v2    # "i":I
    .restart local v36    # "i":I
    move/from16 v2, v43

    move/from16 v1, v44

    goto :goto_18

    .line 2017
    .end local v36    # "i":I
    .end local v44    # "centerViewsCount":I
    .restart local v1    # "centerViewsCount":I
    :cond_27
    move/from16 v44, v1

    .end local v1    # "centerViewsCount":I
    .restart local v44    # "centerViewsCount":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2018
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v7, p0

    .line 1653
    const/4 v8, 0x0

    .line 1654
    .local v8, "width":I
    const/4 v9, 0x0

    .line 1655
    .local v9, "height":I
    const/4 v10, 0x0

    .line 1656
    .local v10, "childState":I
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    .line 1657
    .local v11, "shouldLayoutNavButtonView":Z
    iget-object v12, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    .line 1660
    .local v12, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    const/4 v0, 0x1

    .line 1662
    .local v0, "marginStartIndex":I
    const/4 v1, 0x0

    .line 1665
    .local v1, "marginEndIndex":I
    move v14, v0

    goto :goto_0

    .line 1664
    .end local v0    # "marginStartIndex":I
    .end local v1    # "marginEndIndex":I
    :cond_0
    const/4 v0, 0x0

    .line 1665
    .restart local v0    # "marginStartIndex":I
    move v14, v0

    const/4 v1, 0x1

    .end local v0    # "marginStartIndex":I
    .restart local v1    # "marginEndIndex":I
    .local v14, "marginStartIndex":I
    :goto_0
    move v15, v1

    .line 1670
    .end local v1    # "marginEndIndex":I
    .local v15, "marginEndIndex":I
    const/16 v16, 0x0

    .line 1671
    .local v16, "navWidth":I
    if-eqz v11, :cond_1

    .line 1672
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1674
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 1675
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    .line 1676
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1675
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1677
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    .line 1680
    :cond_1
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1681
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1683
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1684
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 1685
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1686
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1685
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1687
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    .line 1690
    .end local v16    # "navWidth":I
    .local v6, "childState":I
    .local v9, "navWidth":I
    .local v10, "height":I
    :cond_2
    move v6, v10

    move v10, v9

    move/from16 v9, v16

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result v5

    .line 1691
    .local v5, "contentInsetStart":I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1692
    sub-int v0, v5, v9

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v12, v14

    .line 1694
    const/16 v16, 0x0

    .line 1695
    .local v16, "menuWidth":I
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1696
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/16 v17, 0x0

    iget v3, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    move-object v0, v7

    move/from16 v2, p1

    move/from16 v18, v3

    move v3, v8

    move v13, v4

    move/from16 v4, p2

    move/from16 v20, v5

    move/from16 v5, v17

    .end local v5    # "contentInsetStart":I
    .local v20, "contentInsetStart":I
    move v13, v6

    move/from16 v6, v18

    .end local v6    # "childState":I
    .local v13, "childState":I
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1698
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 1699
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    .line 1700
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1701
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMeasuredState()I

    move-result v0

    invoke-static {v13, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v6

    .line 1704
    .end local v13    # "childState":I
    .restart local v6    # "childState":I
    move v13, v10

    move/from16 v10, v16

    goto :goto_1

    .end local v20    # "contentInsetStart":I
    .restart local v5    # "contentInsetStart":I
    :cond_3
    move/from16 v20, v5

    move v13, v6

    move v13, v10

    move/from16 v10, v16

    .end local v5    # "contentInsetStart":I
    .end local v16    # "menuWidth":I
    .local v10, "menuWidth":I
    .local v13, "height":I
    .restart local v20    # "contentInsetStart":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result v5

    .line 1705
    .local v5, "contentInsetEnd":I
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1706
    sub-int v0, v5, v10

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v12, v15

    .line 1708
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1709
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    .line 1710
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1711
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v17, v4

    move/from16 v4, p2

    move/from16 v18, v5

    move/from16 v5, v16

    .end local v5    # "contentInsetEnd":I
    .local v18, "contentInsetEnd":I
    move/from16 v22, v9

    move v9, v6

    move-object v6, v12

    .end local v6    # "childState":I
    .local v9, "childState":I
    .local v22, "navWidth":I
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureSearchChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_2

    .line 1714
    .end local v18    # "contentInsetEnd":I
    .end local v22    # "navWidth":I
    .restart local v5    # "contentInsetEnd":I
    .restart local v6    # "childState":I
    .local v9, "navWidth":I
    :cond_4
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v22, v9

    move v9, v6

    .end local v5    # "contentInsetEnd":I
    .end local v6    # "childState":I
    .local v9, "childState":I
    .restart local v18    # "contentInsetEnd":I
    .restart local v22    # "navWidth":I
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1717
    :goto_2
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1718
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1717
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1719
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v6

    .line 1722
    .end local v9    # "childState":I
    .restart local v6    # "childState":I
    move v9, v6

    goto :goto_3

    .end local v18    # "contentInsetEnd":I
    .end local v22    # "navWidth":I
    .restart local v5    # "contentInsetEnd":I
    .local v9, "navWidth":I
    :cond_5
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v22, v9

    move v9, v6

    .end local v5    # "contentInsetEnd":I
    .end local v6    # "childState":I
    .local v9, "childState":I
    .restart local v18    # "contentInsetEnd":I
    .restart local v22    # "navWidth":I
    :goto_3
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1723
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1725
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1726
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1725
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1727
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v9

    .line 1730
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildCount()I

    move-result v6

    .line 1731
    .local v6, "childCount":I
    move/from16 v0, v17

    .local v0, "i":I
    :goto_4
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v6, :cond_9

    .line 1732
    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1733
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1734
    .local v3, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v0, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_8

    invoke-direct {v7, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1736
    nop

    .line 1731
    move/from16 v21, v5

    move/from16 v16, v6

    move/from16 v23, v10

    goto :goto_5

    .line 1739
    :cond_7
    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v4

    move/from16 v2, p1

    move-object/from16 v19, v3

    move v3, v8

    .end local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v19, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    move/from16 v23, v10

    move-object v10, v4

    move/from16 v4, p2

    .end local v4    # "child":Landroid/view/View;
    .local v10, "child":Landroid/view/View;
    .local v23, "menuWidth":I
    move/from16 v21, v5

    move/from16 v5, v16

    .end local v5    # "i":I
    .local v21, "i":I
    move/from16 v16, v6

    move-object v6, v12

    .end local v6    # "childCount":I
    .local v16, "childCount":I
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1741
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v7, v10}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1742
    .end local v13    # "height":I
    .local v0, "height":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v1

    .line 1731
    .end local v9    # "childState":I
    .end local v10    # "child":Landroid/view/View;
    .end local v19    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v1, "childState":I
    move v13, v0

    move v9, v1

    goto :goto_5

    .end local v0    # "height":I
    .end local v1    # "childState":I
    .end local v16    # "childCount":I
    .end local v21    # "i":I
    .end local v23    # "menuWidth":I
    .restart local v5    # "i":I
    .restart local v6    # "childCount":I
    .restart local v9    # "childState":I
    .local v10, "menuWidth":I
    .restart local v13    # "height":I
    :cond_8
    move/from16 v21, v5

    move/from16 v16, v6

    move/from16 v23, v10

    .end local v5    # "i":I
    .end local v6    # "childCount":I
    .end local v10    # "menuWidth":I
    .restart local v16    # "childCount":I
    .restart local v21    # "i":I
    .restart local v23    # "menuWidth":I
    :goto_5
    add-int/lit8 v0, v21, 0x1

    .end local v21    # "i":I
    .local v0, "i":I
    move/from16 v6, v16

    move/from16 v10, v23

    goto :goto_4

    .line 1745
    .end local v0    # "i":I
    .end local v16    # "childCount":I
    .end local v23    # "menuWidth":I
    .restart local v6    # "childCount":I
    .restart local v10    # "menuWidth":I
    :cond_9
    move/from16 v16, v6

    move/from16 v23, v10

    .end local v6    # "childCount":I
    .end local v10    # "menuWidth":I
    .restart local v16    # "childCount":I
    .restart local v23    # "menuWidth":I
    const/4 v10, 0x0

    .line 1746
    .local v10, "titleWidth":I
    const/16 v19, 0x0

    .line 1747
    .local v19, "titleHeight":I
    iget v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    add-int v21, v0, v1

    .line 1748
    .local v21, "titleVertMargins":I
    iget v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    iget v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int v24, v0, v1

    .line 1749
    .local v24, "titleHorizMargins":I
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1750
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v8, v24

    move-object v0, v7

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v21

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    .line 1753
    .end local v10    # "titleWidth":I
    .local v0, "titleWidth":I
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v10, v1, v2

    .line 1754
    .end local v0    # "titleWidth":I
    .restart local v10    # "titleWidth":I
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v19, v0, v1

    .line 1755
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v9

    .line 1757
    :cond_a
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1758
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v8, v24

    add-int v5, v19, v21

    move-object v0, v7

    move/from16 v2, p1

    move/from16 v4, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1762
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1763
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 1764
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v9

    .line 1767
    .end local v19    # "titleHeight":I
    .local v0, "titleHeight":I
    :cond_b
    move/from16 v0, v19

    add-int/2addr v8, v10

    .line 1768
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1772
    .end local v13    # "height":I
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v8, v2

    .line 1773
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1775
    nop

    .line 1776
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v9

    .line 1775
    move/from16 v4, p1

    invoke-static {v2, v4, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->resolveSizeAndState(III)I

    move-result v2

    .line 1778
    .local v2, "measuredWidth":I
    nop

    .line 1779
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v9, 0x10

    .line 1778
    move/from16 v6, p2

    invoke-static {v3, v6, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->resolveSizeAndState(III)I

    move-result v3

    .line 1782
    .local v3, "measuredHeight":I
    iget-boolean v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    if-eqz v5, :cond_d

    .line 1783
    iget v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    .line 1784
    iget v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    iget v13, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    if-ge v5, v13, :cond_c

    .line 1785
    iget v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    iget v13, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    move/from16 v25, v0

    iget v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    .end local v0    # "titleHeight":I
    .local v25, "titleHeight":I
    sub-int/2addr v13, v0

    add-int/2addr v5, v13

    iput v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    goto :goto_6

    .line 1787
    .end local v25    # "titleHeight":I
    .restart local v0    # "titleHeight":I
    :cond_c
    move/from16 v25, v0

    .end local v0    # "titleHeight":I
    .restart local v25    # "titleHeight":I
    iget v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    iget v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    iget v13, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    sub-int/2addr v5, v13

    sub-int/2addr v0, v5

    iput v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    goto :goto_6

    .line 1790
    .end local v25    # "titleHeight":I
    .restart local v0    # "titleHeight":I
    :cond_d
    move/from16 v25, v0

    .end local v0    # "titleHeight":I
    .restart local v25    # "titleHeight":I
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1791
    nop

    .line 1790
    move/from16 v0, v17

    goto :goto_7

    :cond_e
    move v0, v3

    :goto_7
    invoke-virtual {v7, v2, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setMeasuredDimension(II)V

    .line 1792
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1471
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;

    .line 1472
    .local v0, "ss":Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1474
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1475
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1476
    iget v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1477
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 1478
    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1482
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    iget-boolean v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_2

    .line 1483
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->postShowOverflowMenu()V

    .line 1485
    :cond_2
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 510
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onRtlPropertiesChanged(I)V

    .line 511
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    .line 512
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setDirection(Z)V

    .line 513
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1458
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;

    invoke-super {p0}, Landroid/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1460
    .local v0, "state":Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1464
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1466
    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1533
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1506
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1507
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    .line 1510
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1511
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1512
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 1513
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    .line 1517
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1518
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    .line 1521
    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .line 2209
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildCount()I

    move-result v0

    .line 2211
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2212
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2213
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2214
    .local v3, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v4, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eq v2, v4, :cond_0

    .line 2215
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeViewAt(I)V

    .line 2216
    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2219
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resetedPadding()Z
    .locals 1

    .line 1634
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    return v0
.end method

.method public setCollapsedState(Z)Z
    .locals 7
    .param p1, "collapsed"    # Z

    .line 2247
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2248
    return v1

    .line 2250
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    if-eq v0, p1, :cond_3

    .line 2251
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    .line 2252
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2253
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2254
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 2255
    .local v2, "layerBackground":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2256
    .local v4, "dividerLayer":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    sget v6, Lcom/oneplus/commonctrl/R$id;->actionbar_divider:I

    if-ne v5, v6, :cond_2

    .line 2257
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionBarDividerColor:I

    nop

    .line 2258
    :cond_1
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 2257
    invoke-virtual {v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2261
    .end local v2    # "layerBackground":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "dividerLayer":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->refreshDrawableState()V

    .line 2262
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->jumpDrawablesToCurrentState()V

    .line 2263
    return v3

    .line 2265
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    return v1
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .line 2242
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    .line 2243
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 2244
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    .line 1335
    if-gez p1, :cond_0

    .line 1336
    const/high16 p1, -0x80000000

    .line 1338
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1339
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    .line 1340
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1341
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 1344
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    .line 1293
    if-gez p1, :cond_0

    .line 1294
    const/high16 p1, -0x80000000

    .line 1296
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1297
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1298
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1299
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 1302
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .line 1217
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    .line 1218
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setAbsolute(II)V

    .line 1219
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .line 1154
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    .line 1155
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setRelative(II)V

    .line 1156
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 525
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 526
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 641
    if-eqz p1, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureLogoView()V

    .line 643
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 650
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 675
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 676
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureLogoView()V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 693
    :cond_1
    return-void
.end method

.method public setMenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 568
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-nez v0, :cond_0

    .line 569
    return-void

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenuView()V

    .line 573
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    .line 574
    .local v0, "oldMenu":Lcom/oneplus/lib/menu/MenuBuilder;
    if-ne v0, p1, :cond_1

    .line 575
    return-void

    .line 578
    :cond_1
    if-eqz v0, :cond_2

    .line 579
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOuterActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 580
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 584
    new-instance v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Lcom/oneplus/lib/widget/actionbar/Toolbar$1;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    .line 587
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 588
    if-eqz p1, :cond_4

    .line 589
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 590
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 592
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v3, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 593
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 594
    invoke-virtual {p2, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 595
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 597
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->setPopupTheme(I)V

    .line 598
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/menu/ActionMenuView;->setPresenter(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    .line 599
    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOuterActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 600
    return-void
.end method

.method public setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 2273
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 2274
    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 2275
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2276
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/menu/ActionMenuView;->setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 2278
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 923
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 924
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 937
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 943
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 960
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 961
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 978
    if-eqz p1, :cond_0

    .line 979
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    .line 980
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 985
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 987
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 990
    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1032
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    .line 1033
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1131
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 1132
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1133
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1063
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    .line 1064
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 372
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 373
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    .line 374
    if-nez p1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 377
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 380
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 815
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 816
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 826
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 829
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 830
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 831
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 832
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 835
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 836
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 839
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 844
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 846
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 847
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    :cond_4
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 850
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 868
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    .line 869
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 872
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 892
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextColor:I

    .line 893
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 896
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 760
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 761
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 772
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 775
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 776
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 777
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 778
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 781
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 782
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 785
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 786
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 790
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 792
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 793
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    :cond_4
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 796
    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 405
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    .line 406
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    .line 407
    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    .line 408
    iput p4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    .line 410
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 411
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 504
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    .line 505
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 506
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 482
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    .line 484
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 485
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 430
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    .line 432
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 433
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 460
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    .line 462
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 463
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 857
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    .line 858
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 861
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 880
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextColor:I

    .line 881
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 884
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
