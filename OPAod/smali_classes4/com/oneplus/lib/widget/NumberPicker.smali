.class public Lcom/oneplus/lib/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$CustomEditText;,
        Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;,
        Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;,
        Lcom/oneplus/lib/widget/NumberPicker$Formatter;,
        Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;,
        Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;,
        Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

.field private mPaintColor:I

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectMiddleCount:I

.field private mSelectedValueColor:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectionDividerWidth:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_number_picker:I

    sput v0, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 194
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/NumberPicker;->sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    .line 2080
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 572
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 573
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 582
    sget v0, Lcom/oneplus/commonctrl/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 583
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 595
    move/from16 v3, p3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 153
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 296
    const-wide/16 v6, 0x12c

    iput-wide v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 301
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 306
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 326
    const/high16 v6, -0x80000000

    iput v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    .line 435
    iput v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    .line 486
    const/4 v6, -0x1

    iput v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 497
    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    .line 597
    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker:[I

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 599
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalLayout:I

    sget v9, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 602
    .local v8, "layoutResId":I
    sget v9, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    if-eq v8, v9, :cond_0

    move v9, v5

    goto :goto_0

    :cond_0
    move v9, v4

    :goto_0
    iput-boolean v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 604
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_hideWheelUntilFocused:I

    invoke-virtual {v7, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 607
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_opsolidColor:I

    invoke-virtual {v7, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSolidColor:I

    .line 609
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDivider:I

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 611
    .local v9, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 612
    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 613
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_1

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getLayoutDirection()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 616
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getDrawableState()[I

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 620
    :cond_2
    iput-object v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 622
    const/high16 v10, 0x40000000    # 2.0f

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 622
    invoke-static {v5, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 625
    .local v10, "defSelectionDividerHeight":I
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 628
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividerWidth:I

    invoke-virtual {v7, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    .line 631
    const/high16 v11, 0x42400000    # 48.0f

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 631
    invoke-static {v5, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    .line 634
    .local v11, "defSelectionDividerDistance":I
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividersDistance:I

    invoke-virtual {v7, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 637
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMinHeight:I

    invoke-virtual {v7, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    .line 640
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMaxHeight:I

    invoke-virtual {v7, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    .line 642
    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    if-eq v12, v6, :cond_4

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    if-eq v12, v6, :cond_4

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    iget v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    if-gt v12, v13, :cond_3

    goto :goto_1

    .line 644
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "minHeight > maxHeight"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 647
    :cond_4
    :goto_1
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMinWidth:I

    invoke-virtual {v7, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    .line 650
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMaxWidth:I

    invoke-virtual {v7, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    .line 652
    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    if-eq v12, v6, :cond_6

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-eq v12, v6, :cond_6

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    iget v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-gt v12, v13, :cond_5

    goto :goto_2

    .line 654
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "minWidth > maxWidth"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 657
    :cond_6
    :goto_2
    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-ne v12, v6, :cond_7

    move v6, v5

    goto :goto_3

    :cond_7
    move v6, v4

    :goto_3
    iput-boolean v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 659
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_virtualButtonPressedDrawable:I

    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 661
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionOtherNumberColor:I

    const/high16 v12, -0x1000000

    invoke-virtual {v7, v6, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 662
    .local v6, "paintColor":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 664
    new-instance v13, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-direct {v13, v0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    .line 671
    iget-boolean v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr v13, v5

    invoke-virtual {v0, v13}, Lcom/oneplus/lib/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 675
    .local v13, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v13, v8, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 677
    new-instance v14, Lcom/oneplus/lib/widget/NumberPicker$1;

    invoke-direct {v14, v0}, Lcom/oneplus/lib/widget/NumberPicker$1;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 689
    .local v14, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v15, Lcom/oneplus/lib/widget/NumberPicker$2;

    invoke-direct {v15, v0}, Lcom/oneplus/lib/widget/NumberPicker$2;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 703
    .local v15, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    iget-boolean v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v4, 0x0

    if-nez v12, :cond_8

    .line 704
    sget v12, Lcom/oneplus/commonctrl/R$id;->increment:I

    invoke-virtual {v0, v12}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 705
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v15}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 708
    :cond_8
    iput-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 712
    :goto_4
    iget-boolean v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v12, :cond_9

    .line 713
    sget v12, Lcom/oneplus/commonctrl/R$id;->decrement:I

    invoke-virtual {v0, v12}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 714
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v15}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    .line 717
    :cond_9
    iput-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 721
    :goto_5
    sget v12, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v0, v12}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 722
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 723
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v4, Lcom/oneplus/lib/widget/NumberPicker$3;

    invoke-direct {v4, v0}, Lcom/oneplus/lib/widget/NumberPicker$3;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 733
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array v12, v5, [Landroid/text/InputFilter;

    new-instance v5, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;

    invoke-direct {v5, v0}, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    const/16 v16, 0x0

    aput-object v5, v12, v16

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 737
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 738
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 741
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 742
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    .line 743
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 744
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 746
    iget-object v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    .line 749
    iget-object v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    sget-object v12, Lcom/oneplus/lib/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/high16 v1, -0x1000000

    invoke-virtual {v5, v12, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectedValueColor:I

    .line 750
    iput v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mPaintColor:I

    .line 751
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 752
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 753
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 754
    iget v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 755
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    iput-object v1, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 759
    new-instance v5, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v17, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v5, v12, v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .end local v1    # "paint":Landroid/graphics/Paint;
    .local v17, "paint":Landroid/graphics/Paint;
    iput-object v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 760
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x40200000    # 2.5f

    invoke-direct {v5, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v1, v2, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 766
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 768
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1280(Lcom/oneplus/lib/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I

    .line 97
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1480(Lcom/oneplus/lib/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I

    .line 97
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget-wide v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Z

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()[C
    .locals 1

    .line 97
    sget-object v0, Lcom/oneplus/lib/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/NumberPicker;)Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private changeValueByOne(Z)V
    .locals 13
    .param p1, "increment"    # Z

    .line 1767
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1768
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1769
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1772
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1773
    if-eqz p1, :cond_1

    .line 1774
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1776
    :cond_1
    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1778
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    goto :goto_1

    .line 1780
    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1781
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1783
    :cond_3
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1786
    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .line 1887
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1888
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1887
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1890
    .end local v0    # "i":I
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1891
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1892
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    .line 1894
    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1895
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1896
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .line 1903
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1904
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1905
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1906
    return-void

    .line 1908
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1911
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1912
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int v2, p1, v2

    .line 1913
    .local v2, "displayedValueIndex":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v3, v2

    .line 1914
    .end local v2    # "displayedValueIndex":I
    goto :goto_1

    .line 1915
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1909
    :cond_3
    :goto_0
    const-string v1, ""

    .line 1918
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1919
    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2180
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    .line 2181
    .local v0, "deltaY":I
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2182
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2183
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 2184
    if-lez v0, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    :goto_0
    add-int/2addr v0, v1

    .line 2186
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2187
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 2188
    const/4 v1, 0x1

    return v1

    .line 2190
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10
    .param p1, "velocityY"    # I

    .line 1843
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1845
    if-lez p1, :cond_0

    .line 1846
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1848
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1851
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1852
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 1922
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .line 2826
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 2037
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2039
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2040
    :catch_0
    move-exception v0

    .line 2042
    goto :goto_1

    .line 2044
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2046
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2047
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2048
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    .line 2044
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2057
    .end local v0    # "i":I
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 2058
    :catch_1
    move-exception v0

    .line 2063
    :goto_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public static final getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;
    .locals 1

    .line 200
    sget-object v0, Lcom/oneplus/lib/widget/NumberPicker;->sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .line 1858
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1859
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1860
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1861
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1863
    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1291
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 1292
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1293
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1295
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1299
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 2
    .param p1, "selectorIndices"    # [I

    .line 1871
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1872
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1874
    .end local v0    # "i":I
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1875
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1876
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    .line 1878
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1879
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1880
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .line 1806
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1807
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1808
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .line 1789
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1790
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1791
    .local v0, "selectorIndices":[I
    array-length v1, v0

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1792
    .local v1, "totalTextHeight":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    .line 1793
    .local v2, "totalTextGapHeight":F
    array-length v3, v0

    int-to-float v3, v3

    .line 1794
    .local v3, "textGapCount":F
    div-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1795
    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1798
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1799
    .local v4, "editTextTextPosition":I
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    iput v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1801
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1802
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1803
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1719
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1720
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1721
    .local v0, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    .line 1722
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1723
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1724
    .local v3, "selectorIndex":I
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1725
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1727
    :cond_0
    aput v3, v0, v2

    .line 1728
    aget v4, v0, v2

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1722
    .end local v3    # "selectorIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1730
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .line 1677
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1678
    return p1

    .line 1680
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1681
    .local v0, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1682
    .local v1, "mode":I
    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 1684
    return p1

    .line 1690
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1688
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1686
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 837
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 838
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 839
    .local v1, "amountToScroll":I
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 840
    .local v2, "futureScrollOffset":I
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    .line 841
    .local v3, "overshootAdjustment":I
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 842
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_1

    .line 843
    if-lez v3, :cond_0

    .line 844
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v5

    goto :goto_0

    .line 846
    :cond_0
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v5

    .line 849
    :cond_1
    :goto_0
    add-int/2addr v1, v3

    .line 850
    invoke-virtual {p0, v4, v1}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    .line 851
    return v0

    .line 853
    :cond_2
    return v4
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .line 1966
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/oneplus/lib/widget/NumberPicker;II)V

    .line 1969
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .line 1830
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 1831
    return-void

    .line 1833
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    .line 1834
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/oneplus/lib/widget/NumberPicker;I)V

    .line 1837
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 1814
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1815
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1816
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1818
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1820
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1821
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1824
    :cond_2
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2000
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2001
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2005
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2006
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .line 1977
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1978
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1982
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1983
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1984
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 2
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 2071
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2072
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    .line 2074
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->post(II)V

    .line 2075
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2027
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2028
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2030
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2031
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2015
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1990
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1993
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .line 1706
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1707
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1708
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/oneplus/lib/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1710
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .line 1739
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1740
    return-void

    .line 1743
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1744
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1746
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1747
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1749
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1750
    .local v0, "previous":I
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1751
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1752
    if-eqz p2, :cond_2

    .line 1753
    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->notifyChange(II)V

    .line 1755
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1756
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1757
    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1276
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 1277
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1278
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1279
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1282
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1283
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1285
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1305
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    .line 1306
    return-void

    .line 1308
    :cond_0
    const/4 v0, 0x0

    .line 1309
    .local v0, "maxTextWidth":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 1310
    const/4 v1, 0x0

    .line 1311
    .local v1, "maxDigitWidth":F
    nop

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1312
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1313
    .local v3, "digitWidth":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 1314
    move v1, v3

    .line 1311
    .end local v3    # "digitWidth":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1317
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .line 1318
    .local v2, "numberOfDigits":I
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    .line 1319
    .local v3, "current":I
    :goto_1
    if-lez v3, :cond_3

    .line 1320
    add-int/lit8 v2, v2, 0x1

    .line 1321
    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 1323
    :cond_3
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 1324
    .end local v1    # "maxDigitWidth":F
    .end local v2    # "numberOfDigits":I
    .end local v3    # "current":I
    goto :goto_3

    .line 1325
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    .line 1326
    .local v1, "valueCount":I
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 1327
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1328
    .local v3, "textWidth":F
    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    .line 1329
    float-to-int v0, v3

    .line 1326
    .end local v3    # "textWidth":F
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1333
    .end local v1    # "valueCount":I
    .end local v2    # "i":I
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1334
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1335
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1336
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1338
    :cond_7
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    .line 1340
    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1342
    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 1951
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1953
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1954
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1955
    const/4 v1, 0x1

    return v1

    .line 1958
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1386
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1387
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1388
    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1926
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1927
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1929
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 1932
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    .line 1933
    .local v1, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1935
    .end local v1    # "current":I
    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1096
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1097
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1099
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1100
    return-void

    .line 1103
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1104
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1105
    .local v1, "currentScrollerY":I
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1106
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1108
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    .line 1109
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1110
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1111
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1113
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1115
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1173
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 1163
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1168
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1046
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1047
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1050
    .local v0, "assm":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1051
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1053
    .local v1, "eventY":I
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v2, :cond_1

    .line 1054
    const/4 v2, 0x3

    .local v2, "hoveredVirtualViewId":I
    :goto_0
    goto :goto_1

    .line 1055
    .end local v2    # "hoveredVirtualViewId":I
    :cond_1
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v2, :cond_2

    .line 1056
    const/4 v2, 0x1

    goto :goto_0

    .line 1058
    :cond_2
    const/4 v2, 0x2

    .line 1060
    .restart local v2    # "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1061
    .local v3, "action":I
    nop

    .line 1062
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1063
    .local v4, "provider":Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/16 v8, 0x80

    const/4 v9, -0x1

    const/16 v10, 0x100

    if-eq v3, v5, :cond_3

    packed-switch v3, :pswitch_data_0

    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "action":I
    .end local v4    # "provider":Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
    goto :goto_2

    .line 1085
    .restart local v1    # "eventY":I
    .restart local v2    # "hoveredVirtualViewId":I
    .restart local v3    # "action":I
    .restart local v4    # "provider":Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_0
    invoke-virtual {v4, v2, v10}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1087
    iput v9, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "action":I
    .end local v4    # "provider":Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
    goto :goto_2

    .line 1065
    .restart local v1    # "eventY":I
    .restart local v2    # "hoveredVirtualViewId":I
    .restart local v3    # "action":I
    .restart local v4    # "provider":Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v4, v2, v8}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1067
    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1068
    invoke-virtual {v4, v2, v7, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1070
    goto :goto_2

    .line 1072
    :cond_3
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v5, v2, :cond_4

    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v5, v9, :cond_4

    .line 1074
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v4, v5, v10}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1077
    invoke-virtual {v4, v2, v8}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1079
    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1080
    invoke-virtual {v4, v2, v7, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1091
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "action":I
    .end local v4    # "provider":Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 997
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 998
    .local v0, "keyCode":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1005
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    .line 1006
    goto :goto_2

    .line 1008
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 1022
    :pswitch_1
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    .line 1023
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1024
    return v2

    .line 1010
    :pswitch_2
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_2

    if-ne v0, v3, :cond_1

    .line 1011
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    .line 1012
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->requestFocus()Z

    .line 1013
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1014
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1015
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1016
    if-ne v0, v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1018
    :cond_4
    return v2

    .line 1001
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1002
    nop

    .line 1029
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 986
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 992
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1035
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1038
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1041
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1555
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1557
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 1558
    .local v0, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1559
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1560
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1562
    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1660
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1661
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1664
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1666
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1544
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    .line 1534
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1456
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1419
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1178
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1539
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1410
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1352
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1567
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1569
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1572
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1549
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1550
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1551
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 1577
    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v2, :cond_0

    .line 1578
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1579
    return-void

    .line 1581
    :cond_0
    iget-boolean v2, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->hasFocus()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1582
    .local v2, "showSelectorWheel":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 1583
    .local v4, "x":F
    iget v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v5, v5

    .line 1586
    .local v5, "y":F
    const/4 v6, 0x0

    if-eqz v2, :cond_3

    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez v7, :cond_3

    .line 1588
    iget-boolean v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v7, :cond_2

    .line 1589
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lcom/oneplus/lib/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1590
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v8

    iget v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v7, v6, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1591
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1593
    :cond_2
    iget-boolean v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v7, :cond_3

    .line 1594
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lcom/oneplus/lib/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1595
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v9

    .line 1596
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v10

    .line 1595
    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1597
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1602
    :cond_3
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1603
    .local v7, "selectorIndices":[I
    move v8, v5

    move v5, v6

    .local v5, "i":I
    .local v8, "y":F
    :goto_1
    array-length v9, v7

    if-ge v5, v9, :cond_8

    .line 1604
    aget v9, v7, v5

    .line 1605
    .local v9, "selectorIndex":I
    iget-object v10, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1611
    .local v10, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_4

    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v5, v11, :cond_5

    :cond_4
    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v5, v11, :cond_7

    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1612
    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_7

    .line 1613
    :cond_5
    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v5, v11, :cond_6

    .line 1614
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectedValueColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1615
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 1617
    :cond_6
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mPaintColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1618
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1620
    :goto_2
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v4, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1622
    :cond_7
    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    add-float/2addr v8, v11

    .line 1603
    .end local v9    # "selectorIndex":I
    .end local v10    # "scrollSelectorValue":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1626
    .end local v5    # "i":I
    :cond_8
    if-eqz v2, :cond_b

    iget-object v3, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_b

    .line 1628
    iget v3, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1629
    .local v3, "topOfTopDivider":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 1630
    .local v5, "halfWidth":I
    iget v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    div-int/lit8 v9, v9, 0x2

    .line 1631
    .local v9, "halfDividerWidth":I
    sub-int v10, v5, v9

    .line 1632
    .local v10, "dividerLeft":I
    add-int v11, v5, v9

    .line 1636
    .local v11, "dividerRight":I
    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v12, v3

    .line 1637
    .local v12, "bottomOfTopDivider":I
    iget v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    if-nez v13, :cond_9

    .line 1638
    iget-object v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v14

    invoke-virtual {v13, v6, v3, v14, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 1640
    :cond_9
    iget-object v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10, v3, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1643
    :goto_3
    iget-object v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1646
    iget v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1647
    .local v13, "bottomOfBottomDivider":I
    iget v14, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v14, v13, v14

    .line 1648
    .local v14, "topOfBottomDivider":I
    iget v15, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    if-nez v15, :cond_a

    .line 1649
    iget-object v15, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move/from16 v16, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v2

    .end local v2    # "showSelectorWheel":Z
    .local v16, "showSelectorWheel":Z
    invoke-virtual {v15, v6, v14, v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 1651
    .end local v16    # "showSelectorWheel":Z
    .restart local v2    # "showSelectorWheel":Z
    :cond_a
    move/from16 v16, v2

    .end local v2    # "showSelectorWheel":Z
    .restart local v16    # "showSelectorWheel":Z
    iget-object v2, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10, v14, v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1653
    :goto_4
    iget-object v2, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v3    # "topOfTopDivider":I
    .end local v5    # "halfWidth":I
    .end local v9    # "halfDividerWidth":I
    .end local v10    # "dividerLeft":I
    .end local v11    # "dividerRight":I
    .end local v12    # "bottomOfTopDivider":I
    .end local v13    # "bottomOfBottomDivider":I
    .end local v14    # "topOfBottomDivider":I
    goto :goto_5

    .line 1655
    .end local v16    # "showSelectorWheel":Z
    .restart local v2    # "showSelectorWheel":Z
    :cond_b
    move/from16 v16, v2

    .end local v2    # "showSelectorWheel":Z
    .restart local v16    # "showSelectorWheel":Z
    :goto_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 858
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 861
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 862
    .local v0, "action":I
    if-eqz v0, :cond_1

    .line 906
    return v1

    .line 864
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 865
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventTime:J

    .line 868
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 869
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 871
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-gez v2, :cond_2

    .line 872
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_3

    .line 873
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 876
    :cond_2
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 877
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_3

    .line 878
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 883
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 884
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 885
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 886
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 887
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 888
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 889
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 890
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 891
    :cond_5
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    .line 892
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    .line 893
    nop

    .line 894
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v4, v2

    .line 893
    invoke-direct {p0, v1, v4, v5}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 895
    :cond_6
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 896
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    .line 897
    nop

    .line 898
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 897
    invoke-direct {p0, v3, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 900
    :cond_7
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 901
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 903
    :goto_1
    return v3

    .line 859
    .end local v0    # "action":I
    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 783
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    .line 784
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 785
    return-void

    .line 787
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    .line 788
    .local v1, "msrdWdth":I
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getMeasuredHeight()I

    move-result v2

    .line 791
    .local v2, "msrdHght":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 792
    .local v3, "inptTxtMsrdWdth":I
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    .line 793
    .local v4, "inptTxtMsrdHght":I
    sub-int v5, v1, v3

    const/4 v6, 0x2

    div-int/2addr v5, v6

    .line 794
    .local v5, "inptTxtLeft":I
    sub-int v7, v2, v4

    div-int/2addr v7, v6

    .line 795
    .local v7, "inptTxtTop":I
    add-int v8, v5, v3

    .line 796
    .local v8, "inptTxtRight":I
    add-int v9, v7, v4

    .line 797
    .local v9, "inptTxtBottom":I
    iget-object v10, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10, v5, v7, v8, v9}, Landroid/widget/EditText;->layout(IIII)V

    .line 799
    if-eqz p1, :cond_1

    .line 801
    invoke-direct {v0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheel()V

    .line 802
    invoke-direct {v0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeFadingEdges()V

    .line 803
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getHeight()I

    move-result v11

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v11, v12

    div-int/2addr v11, v6

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 805
    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/2addr v6, v12

    add-int/2addr v11, v6

    iget v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v11, v6

    iput v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 808
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 812
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 813
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 814
    return-void

    .line 817
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 818
    .local v0, "newWidthMeasureSpec":I
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/oneplus/lib/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 819
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 821
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lcom/oneplus/lib/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    .line 823
    .local v2, "widthSize":I
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/oneplus/lib/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 825
    .local v3, "heightSize":I
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 826
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 911
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 915
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 919
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 921
    :pswitch_0
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v3, :cond_2

    .line 922
    goto/16 :goto_4

    .line 924
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 925
    .local v3, "currentMoveY":F
    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-eq v4, v2, :cond_4

    .line 926
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 927
    .local v1, "deltaDownY":I
    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_3

    .line 928
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 929
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    .line 931
    .end local v1    # "deltaDownY":I
    :cond_3
    goto :goto_0

    .line 932
    :cond_4
    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    .line 933
    .local v4, "deltaMoveY":I
    invoke-virtual {p0, v1, v4}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    .line 934
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 936
    .end local v4    # "deltaMoveY":I
    :goto_0
    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 938
    .end local v3    # "currentMoveY":F
    goto/16 :goto_4

    .line 940
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 941
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 942
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 943
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 944
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 945
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 946
    .local v4, "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinimumFlingVelocity:I

    const/4 v7, 0x2

    if-le v5, v6, :cond_5

    .line 947
    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/NumberPicker;->fling(I)V

    .line 948
    invoke-direct {p0, v7}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 950
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 951
    .local v5, "eventY":I
    int-to-float v6, v5

    iget v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    .line 952
    .local v6, "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    .line 953
    .local v8, "deltaTime":J
    iget v10, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    if-gt v6, v10, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    .line 954
    iget-boolean v10, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_6

    .line 955
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 956
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->performClick()Z

    goto :goto_2

    .line 958
    :cond_6
    iget v10, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v5, v10

    iget v11, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    sub-int/2addr v10, v11

    .line 960
    .local v10, "selectorIndexOffset":I
    if-lez v10, :cond_7

    .line 961
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    .line 962
    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v7, v2}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 964
    :cond_7
    if-gez v10, :cond_8

    .line 965
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    .line 966
    iget-object v11, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v11, v7}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 969
    .end local v10    # "selectorIndexOffset":I
    :cond_8
    :goto_1
    goto :goto_2

    .line 971
    :cond_9
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 973
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    .line 975
    .end local v5    # "eventY":I
    .end local v6    # "deltaMoveY":I
    .end local v8    # "deltaTime":J
    :goto_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 976
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 980
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :goto_4
    return v2

    .line 912
    .end local v0    # "action":I
    :cond_a
    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 1253
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1254
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 1255
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1256
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->showSoftInput()V

    .line 1258
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .line 1263
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1264
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 1265
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1266
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->showSoftInput()V

    .line 1267
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 1269
    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1131
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1132
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 1134
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1135
    return-void

    .line 1137
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 1139
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1140
    return-void

    .line 1142
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1143
    :cond_2
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    .line 1144
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1145
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1146
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1147
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1148
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1151
    :cond_3
    :goto_1
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_4

    .line 1152
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1153
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1154
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1155
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1156
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1159
    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .line 1506
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1507
    return-void

    .line 1509
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1517
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1518
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1519
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1520
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "dividerWidth"    # I

    .line 777
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    .line 778
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 779
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1119
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1120
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1123
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1127
    return-void
.end method

.method public setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    .line 1211
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1212
    return-void

    .line 1214
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    .line 1215
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1216
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1217
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .line 1470
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    .line 1471
    return-void

    .line 1473
    :cond_0
    if-ltz p1, :cond_2

    .line 1476
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    .line 1477
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-ge v0, v1, :cond_1

    .line 1478
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1480
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1481
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1482
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1483
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1484
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1485
    return-void

    .line 1474
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    .line 1433
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    .line 1434
    return-void

    .line 1436
    :cond_0
    if-ltz p1, :cond_2

    .line 1439
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    .line 1440
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-le v0, v1, :cond_1

    .line 1441
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1443
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1444
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1445
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1446
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1447
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1448
    return-void

    .line 1437
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .line 1401
    iput-wide p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1402
    return-void
.end method

.method public setOnScrollListener(Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

    .line 1196
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

    .line 1197
    return-void
.end method

.method public setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    .line 1187
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    .line 1188
    return-void
.end method

.method public setSelectNumberCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 774
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1249
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0
    .param p1, "wrapSelectorWheel"    # Z

    .line 1373
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1374
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1376
    return-void
.end method
