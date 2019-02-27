.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$TextAppearanceAttributes;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$AutoSizeTextType;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$XMLTypefaceAttr;
    }
.end annotation


# static fields
.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final DEFAULT_TYPEFACE:I = -0x1

.field private static final DEVICE_PROVISIONED_NO:I = 0x1

.field private static final DEVICE_PROVISIONED_UNKNOWN:I = 0x0

.field private static final DEVICE_PROVISIONED_YES:I = 0x2

.field private static final ELLIPSIZE_END:I = 0x3

.field private static final ELLIPSIZE_MARQUEE:I = 0x4

.field private static final ELLIPSIZE_MIDDLE:I = 0x2

.field private static final ELLIPSIZE_NONE:I = 0x0

.field private static final ELLIPSIZE_NOT_SET:I = -0x1

.field private static final ELLIPSIZE_START:I = 0x1

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field private static final FLOATING_TOOLBAR_SELECT_ALL_REFRESH_DELAY:I = 0x1f4

.field static final ID_ASSIST:I = 0x1020041

.field static final ID_AUTOFILL:I = 0x1020043

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field private static final KEY_DOWN_HANDLED_BY_KEY_LISTENER:I = 0x1

.field private static final KEY_DOWN_HANDLED_BY_MOVEMENT_METHOD:I = 0x2

.field private static final KEY_EVENT_HANDLED:I = -0x1

.field private static final KEY_EVENT_NOT_HANDLED:I = 0x0

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final TEMP_POSITION:[F

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field public static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field static final VERY_WIDE:I = 0x100000

.field private static final sAppearanceValues:Landroid/util/SparseIntArray;

.field static sLastCutCopyOrTextChangedTime:J


# instance fields
.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDeviceProvisionedState:I

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFontFamily:Ljava/lang/String;

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mHasPresetAutoSizeValues:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mJustificationMode:I

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLastValueSentToAutofillManager:Ljava/lang/CharSequence;

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListenerChanged:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalesChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mNeedsAutoSizeText:Z

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mOneplusfont:I

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPrecomputed:Landroid/text/PrecomputedText;

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannable:Landroid/text/Spannable;

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionContainerLayout:I

.field mTextEditSuggestionHighlightStyle:I

.field mTextEditSuggestionItemLayout:I

.field private mTextId:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTextSetFromXmlOrResourceId:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field mUseFallbackLineSpacing:Z

.field private final mUseInternationalizedInput:Z

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/TextView;->TEMP_POSITION:[F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/text/InputFilter;

    sput-object v2, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    new-instance v2, Landroid/text/SpannedString;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v2, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x101034d

    aput v4, v3, v1

    sput-object v3, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/4 v8, 0x7

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v7, 0x8

    invoke-virtual {v3, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v2, 0x4b

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x26

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 127

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    const/4 v6, 0x3

    iput v6, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    iput-boolean v8, v1, Landroid/widget/TextView;->mLocalesChanged:Z

    iput-boolean v8, v1, Landroid/widget/TextView;->mListenerChanged:Z

    const v0, 0x800033

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    const/4 v9, 0x1

    iput-boolean v9, v1, Landroid/widget/TextView;->mLinksClickable:Z

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v1, Landroid/widget/TextView;->mSpacingMult:F

    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    const v0, 0x7fffffff

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    iput v9, v1, Landroid/widget/TextView;->mMaxMode:I

    iput v8, v1, Landroid/widget/TextView;->mMinimum:I

    iput v9, v1, Landroid/widget/TextView;->mMinMode:I

    iget v11, v1, Landroid/widget/TextView;->mMaximum:I

    iput v11, v1, Landroid/widget/TextView;->mOldMaximum:I

    iget v11, v1, Landroid/widget/TextView;->mMaxMode:I

    iput v11, v1, Landroid/widget/TextView;->mOldMaxMode:I

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v11, 0x2

    iput v11, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    iput v8, v1, Landroid/widget/TextView;->mMinWidth:I

    iput v11, v1, Landroid/widget/TextView;->mMinWidthMode:I

    iput v7, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    iput-boolean v9, v1, Landroid/widget/TextView;->mIncludePad:Z

    iput v7, v1, Landroid/widget/TextView;->mDeferScroll:I

    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    const v0, 0x6633b5e5

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    iput-boolean v9, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iput v8, v1, Landroid/widget/TextView;->mOneplusfont:I

    iput v8, v1, Landroid/widget/TextView;->mDeviceProvisionedState:I

    iput v8, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    iput-boolean v8, v1, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    const/high16 v12, -0x40800000    # -1.0f

    iput v12, v1, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    iput v12, v1, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    iput v12, v1, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v1, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    iput-boolean v8, v1, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    iput-boolean v8, v1, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    iput v8, v1, Landroid/widget/TextView;->mTextId:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    :cond_0
    const-string v0, ""

    invoke-direct {v1, v0}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    iput v15, v0, Landroid/text/TextPaint;->density:F

    iget-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v15, v14, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v15}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    iget-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    iget v15, v14, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v15, 0x0

    iput-object v15, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    new-instance v0, Landroid/widget/TextView$TextAppearanceAttributes;

    invoke-direct {v0, v15}, Landroid/widget/TextView$TextAppearanceAttributes;-><init>(Landroid/widget/TextView$1;)V

    move-object/from16 v16, v0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v11, v16

    iput-object v0, v11, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    const/16 v0, 0xf

    iput v0, v11, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    iput v8, v1, Landroid/widget/TextView;->mBreakStrategy:I

    iput v8, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    iput v8, v1, Landroid/widget/TextView;->mJustificationMode:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    sget-object v0, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    invoke-virtual {v15, v3, v0, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v16, 0x0

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v6, v7, :cond_1

    sget-object v10, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v15, v6, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v16

    :cond_1
    move-object/from16 v10, v16

    if-eqz v10, :cond_2

    invoke-direct {v1, v2, v10, v11, v8}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    iput-boolean v8, v11, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v37, 0x0

    const/16 v38, -0x1

    const-string v39, ""

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/high16 v42, -0x40800000    # -1.0f

    const/high16 v43, -0x40800000    # -1.0f

    const/high16 v44, -0x40800000    # -1.0f

    const/16 v45, 0x0

    sget-object v12, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {v15, v3, v12, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    const/4 v0, -0x1

    const/16 v46, -0x1

    const/16 v47, -0x1

    invoke-direct {v1, v2, v12, v11, v9}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    const/16 v48, 0x0

    move/from16 v74, v0

    move v0, v8

    move/from16 v64, v16

    move-object/from16 v61, v19

    move/from16 v58, v20

    move-object/from16 v59, v21

    move/from16 v60, v22

    move/from16 v63, v23

    move/from16 v62, v24

    move/from16 v51, v25

    move/from16 v56, v26

    move-object/from16 v67, v27

    move-object/from16 v65, v28

    move-object/from16 v68, v29

    move-object/from16 v66, v30

    move-object/from16 v70, v31

    move-object/from16 v71, v32

    move-object/from16 v72, v33

    move-object/from16 v73, v34

    move/from16 v69, v35

    move/from16 v50, v36

    move/from16 v55, v37

    move/from16 v57, v38

    move-object/from16 v52, v39

    move-object/from16 v53, v40

    move/from16 v54, v41

    move/from16 v49, v45

    move/from16 v75, v46

    move/from16 v76, v47

    :goto_0
    move/from16 v77, v0

    move/from16 v7, v77

    if-ge v7, v9, :cond_8

    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    if-eqz v8, :cond_7

    const/16 v0, 0x43

    if-eq v8, v0, :cond_6

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    packed-switch v8, :pswitch_data_3

    packed-switch v8, :pswitch_data_4

    packed-switch v8, :pswitch_data_5

    packed-switch v8, :pswitch_data_6

    move/from16 v78, v6

    :cond_3
    :goto_1
    move/from16 v79, v9

    :goto_2
    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v88, v50

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    goto/16 :goto_f

    :pswitch_0
    move/from16 v78, v6

    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    goto :goto_1

    :pswitch_1
    move/from16 v78, v6

    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    goto :goto_1

    :pswitch_2
    move/from16 v78, v6

    const/4 v6, -0x1

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move/from16 v76, v0

    goto :goto_3

    :pswitch_3
    move/from16 v78, v6

    const/4 v6, -0x1

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    nop

    move/from16 v75, v0

    goto :goto_3

    :pswitch_4
    move/from16 v78, v6

    const/4 v6, -0x1

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    nop

    move/from16 v74, v0

    goto :goto_3

    :pswitch_5
    move/from16 v78, v6

    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mJustificationMode:I

    goto :goto_1

    :pswitch_6
    move/from16 v78, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    move/from16 v43, v0

    goto :goto_3

    :pswitch_7
    move/from16 v78, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    move/from16 v42, v0

    goto :goto_3

    :pswitch_8
    move/from16 v78, v6

    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :pswitch_9
    move/from16 v78, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    move/from16 v44, v0

    :goto_3
    move/from16 v79, v9

    goto/16 :goto_4

    :pswitch_a
    move/from16 v78, v6

    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    goto/16 :goto_1

    :pswitch_b
    move/from16 v78, v6

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v79, v9

    const/4 v6, 0x1

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Landroid/widget/Editor;->mAllowUndo:Z

    goto/16 :goto_2

    :pswitch_c
    move/from16 v78, v6

    move/from16 v79, v9

    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    goto/16 :goto_2

    :pswitch_d
    move/from16 v78, v6

    move/from16 v79, v9

    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    goto/16 :goto_2

    :pswitch_e
    move/from16 v78, v6

    move/from16 v79, v9

    const/4 v6, -0x1

    invoke-virtual {v12, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move-object/from16 v6, v73

    invoke-static {v0, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    nop

    move-object/from16 v73, v0

    goto :goto_4

    :pswitch_f
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    move-object/from16 v72, v0

    goto :goto_4

    :pswitch_10
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    move-object/from16 v71, v0

    goto :goto_4

    :pswitch_11
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    move-object/from16 v70, v0

    :goto_4
    move-object/from16 v80, v10

    goto/16 :goto_8

    :pswitch_12
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_5

    :pswitch_13
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_5

    :pswitch_14
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_5

    :pswitch_15
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto :goto_5

    :pswitch_16
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto :goto_5

    :pswitch_17
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v9, v9, Landroid/widget/Editor$InputContentType;->imeActionId:I

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto :goto_5

    :pswitch_18
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :pswitch_19
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v9, v9, Landroid/widget/Editor$InputContentType;->imeOptions:I

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    nop

    :goto_5
    move-object/from16 v80, v10

    goto/16 :goto_7

    :pswitch_1a
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v6, v73

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v80, v10

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v9, "TextView"

    move-object/from16 v80, v10

    const-string v10, "Failure reading input extras"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v80, v10

    :goto_6
    const-string v9, "TextView"

    const-string v10, "Failure reading input extras"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :pswitch_1b
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_1c
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v6, v73

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v49

    goto/16 :goto_8

    :pswitch_1d
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v6, v73

    iget v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v12, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto :goto_7

    :pswitch_1e
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v6, v73

    iget v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v12, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto :goto_7

    :pswitch_1f
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v6, v73

    iget v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    float-to-int v0, v0

    invoke-virtual {v12, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    nop

    :goto_7
    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v88, v50

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    goto/16 :goto_f

    :pswitch_20
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v6, v73

    move/from16 v9, v69

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    nop

    move/from16 v69, v0

    goto/16 :goto_8

    :pswitch_21
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move/from16 v9, v69

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    move-object/from16 v68, v0

    goto/16 :goto_8

    :pswitch_22
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move/from16 v9, v69

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    move-object/from16 v67, v0

    goto/16 :goto_8

    :pswitch_23
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move/from16 v9, v69

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    move-object/from16 v66, v0

    goto :goto_8

    :pswitch_24
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move/from16 v9, v69

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    move-object/from16 v65, v0

    goto :goto_8

    :pswitch_25
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v10, 0x0

    invoke-virtual {v12, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    nop

    move/from16 v87, v9

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v88, v50

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    goto/16 :goto_f

    :pswitch_26
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move/from16 v9, v69

    move-object/from16 v6, v73

    move/from16 v10, v64

    invoke-virtual {v12, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    move/from16 v64, v0

    :goto_8
    move-object/from16 v85, v11

    move-object/from16 v81, v13

    goto :goto_9

    :pswitch_27
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move-object/from16 v81, v13

    move/from16 v13, v63

    invoke-virtual {v12, v8, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    move/from16 v63, v0

    move-object/from16 v85, v11

    :goto_9
    move-object/from16 v82, v14

    goto :goto_b

    :pswitch_28
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move-object/from16 v82, v14

    move/from16 v14, v62

    invoke-virtual {v12, v8, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    move/from16 v62, v0

    goto :goto_a

    :pswitch_29
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    move-object/from16 v61, v0

    :goto_a
    move-object/from16 v85, v11

    :goto_b
    move-object/from16 v83, v15

    goto/16 :goto_10

    :pswitch_2a
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move-object/from16 v83, v15

    move/from16 v15, v60

    invoke-virtual {v12, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    move/from16 v60, v0

    goto/16 :goto_c

    :pswitch_2b
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    move-object/from16 v59, v0

    goto/16 :goto_c

    :pswitch_2c
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move/from16 v3, v58

    invoke-virtual {v12, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    move/from16 v58, v0

    goto/16 :goto_c

    :pswitch_2d
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v4, -0x1

    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    move/from16 v57, v0

    goto/16 :goto_c

    :pswitch_2e
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v4, 0x1

    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :cond_4
    move/from16 v87, v9

    move-object/from16 v85, v11

    move/from16 v88, v50

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    goto/16 :goto_f

    :pswitch_2f
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move/from16 v4, v56

    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    move/from16 v56, v0

    goto :goto_c

    :pswitch_30
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move/from16 v5, v55

    invoke-virtual {v12, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    move/from16 v55, v0

    :goto_c
    move-object/from16 v85, v11

    goto/16 :goto_10

    :pswitch_31
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move/from16 v84, v5

    move/from16 v5, v54

    invoke-virtual {v12, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    move/from16 v54, v0

    move-object/from16 v85, v11

    move/from16 v55, v84

    goto/16 :goto_10

    :pswitch_32
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move-object/from16 v85, v11

    const/4 v11, 0x0

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_d

    :pswitch_33
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, -0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_d

    :pswitch_34
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, -0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_d

    :pswitch_35
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, -0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_d

    :pswitch_36
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, -0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_d

    :pswitch_37
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, -0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_d

    :pswitch_38
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, -0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_d

    :pswitch_39
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, -0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_d

    :pswitch_3a
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, -0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_d

    :pswitch_3b
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/4 v11, 0x1

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_d

    :pswitch_3c
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    nop

    :cond_5
    :goto_d
    move/from16 v87, v9

    move/from16 v88, v50

    move/from16 v11, v51

    goto/16 :goto_f

    :pswitch_3d
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    move-object/from16 v53, v0

    goto/16 :goto_10

    :pswitch_3e
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    move/from16 v86, v0

    const/4 v11, 0x0

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextId:I

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    move-object/from16 v52, v0

    move/from16 v48, v86

    goto/16 :goto_10

    :pswitch_3f
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move/from16 v11, v51

    invoke-virtual {v12, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    move/from16 v51, v0

    goto/16 :goto_10

    :pswitch_40
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v9, v69

    move-object/from16 v6, v73

    move/from16 v87, v9

    const/4 v9, -0x1

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_e

    :pswitch_41
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    const/4 v9, -0x1

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_e

    :pswitch_42
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    const/4 v9, -0x1

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_e

    :pswitch_43
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    const/4 v9, -0x1

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_e

    :pswitch_44
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    const/4 v9, 0x1

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto/16 :goto_e

    :pswitch_45
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_e

    :pswitch_46
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    const/4 v9, -0x1

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    nop

    :goto_e
    move/from16 v88, v50

    goto/16 :goto_f

    :pswitch_47
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    move/from16 v9, v50

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    move/from16 v50, v0

    goto/16 :goto_10

    :cond_6
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v9, v50

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    move/from16 v88, v9

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto :goto_f

    :cond_7
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v88, v50

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    invoke-virtual {v12, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    nop

    :goto_f
    move/from16 v58, v3

    move/from16 v56, v4

    move/from16 v54, v5

    move-object/from16 v73, v6

    move/from16 v64, v10

    move/from16 v51, v11

    move/from16 v63, v13

    move/from16 v62, v14

    move/from16 v60, v15

    move/from16 v55, v84

    move/from16 v69, v87

    move/from16 v50, v88

    :goto_10
    add-int/lit8 v0, v7, 0x1

    move/from16 v6, v78

    move/from16 v9, v79

    move-object/from16 v10, v80

    move-object/from16 v13, v81

    move-object/from16 v14, v82

    move-object/from16 v15, v83

    move-object/from16 v11, v85

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const/4 v7, -0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    move/from16 v78, v6

    move/from16 v79, v9

    move-object/from16 v80, v10

    move-object/from16 v85, v11

    move-object/from16 v81, v13

    move-object/from16 v82, v14

    move-object/from16 v83, v15

    move/from16 v88, v50

    move/from16 v11, v51

    move/from16 v5, v54

    move/from16 v84, v55

    move/from16 v4, v56

    move/from16 v3, v58

    move/from16 v15, v60

    move/from16 v14, v62

    move/from16 v13, v63

    move/from16 v10, v64

    move/from16 v87, v69

    move-object/from16 v6, v73

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v7, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move/from16 v8, v49

    and-int/lit16 v9, v8, 0xfff

    move-object/from16 v89, v7

    const/16 v7, 0x81

    if-ne v9, v7, :cond_9

    const/4 v0, 0x1

    goto :goto_11

    :cond_9
    const/4 v0, 0x0

    :goto_11
    move/from16 v90, v0

    const/16 v0, 0xe1

    if-ne v9, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_12

    :cond_a
    const/4 v0, 0x0

    :goto_12
    move/from16 v91, v0

    const/16 v7, 0x12

    if-ne v9, v7, :cond_b

    const/4 v0, 0x1

    goto :goto_13

    :cond_b
    const/4 v0, 0x0

    :goto_13
    move/from16 v92, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-lt v7, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_14

    :cond_c
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, v1, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    const/16 v0, 0x1c

    if-lt v7, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_15

    :cond_d
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, v1, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    move/from16 v93, v7

    move-object/from16 v7, v61

    if-eqz v7, :cond_f

    :try_start_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_a

    move-object/from16 v94, v0

    nop

    nop

    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_8

    move-object/from16 v95, v7

    move-object/from16 v7, v94

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v16
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v96, v7

    :try_start_5
    move-object/from16 v7, v16

    check-cast v7, Landroid/text/method/KeyListener;

    iput-object v7, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    nop

    :try_start_6
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v8, :cond_e

    nop

    move v7, v8

    goto :goto_16

    :cond_e
    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v7}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v49

    move/from16 v7, v49

    :goto_16
    iput v7, v0, Landroid/widget/Editor;->mInputType:I
    :try_end_6
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_6 .. :try_end_6} :catch_3

    nop

    move/from16 v97, v9

    goto :goto_17

    :catch_3
    move-exception v0

    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v97, v9

    const/4 v9, 0x1

    iput v9, v7, Landroid/widget/Editor;->mInputType:I

    :goto_17
    nop

    move/from16 v98, v3

    move-object/from16 v99, v59

    goto/16 :goto_20

    :catch_4
    move-exception v0

    move/from16 v97, v9

    goto :goto_18

    :catch_5
    move-exception v0

    move/from16 v97, v9

    goto :goto_19

    :catch_6
    move-exception v0

    move-object/from16 v96, v7

    move/from16 v97, v9

    goto :goto_18

    :catch_7
    move-exception v0

    move-object/from16 v96, v7

    move/from16 v97, v9

    goto :goto_19

    :catch_8
    move-exception v0

    move-object/from16 v95, v7

    move/from16 v97, v9

    move-object/from16 v96, v94

    :goto_18
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_9
    move-exception v0

    move-object/from16 v95, v7

    move/from16 v97, v9

    move-object/from16 v96, v94

    :goto_19
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_a
    move-exception v0

    move-object/from16 v95, v7

    move/from16 v97, v9

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_f
    move-object/from16 v95, v7

    move/from16 v97, v9

    move-object/from16 v7, v59

    if-eqz v7, :cond_11

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v8, :cond_10

    move v9, v8

    goto :goto_1a

    :cond_10
    const/4 v9, 0x1

    :goto_1a
    iput v9, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v98, v3

    move-object/from16 v99, v7

    goto/16 :goto_20

    :cond_11
    if-eqz v8, :cond_12

    const/4 v9, 0x1

    invoke-direct {v1, v8, v9}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static {v8}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    xor-int/2addr v0, v9

    move/from16 v55, v0

    move/from16 v98, v3

    move-object/from16 v99, v7

    goto :goto_1c

    :cond_12
    if-eqz v15, :cond_13

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v9, 0x3

    move/from16 v49, v9

    iput v9, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v98, v3

    move-object/from16 v99, v7

    move/from16 v8, v49

    :goto_1b
    move/from16 v0, v84

    :goto_1c
    move-object/from16 v7, v89

    goto/16 :goto_24

    :cond_13
    if-eqz v3, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    goto :goto_1d

    :cond_14
    const/4 v9, 0x0

    :goto_1d
    and-int/lit8 v16, v3, 0x4

    if-eqz v16, :cond_15

    move/from16 v98, v3

    const/4 v3, 0x1

    goto :goto_1e

    :cond_15
    move/from16 v98, v3

    const/4 v3, 0x0

    :goto_1e
    move-object/from16 v99, v7

    const/4 v7, 0x0

    invoke-static {v7, v9, v3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v0, v3, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_23

    :cond_16
    move/from16 v98, v3

    move-object/from16 v99, v7

    if-nez v13, :cond_1c

    const/4 v3, -0x1

    if-eq v14, v3, :cond_17

    goto :goto_21

    :cond_17
    if-eqz v10, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_20

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_19

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/Editor;->mInputType:I

    :cond_19
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_1f
    move/from16 v0, v84

    goto :goto_24

    :cond_1a
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :cond_1b
    packed-switch v11, :pswitch_data_7

    goto :goto_20

    :pswitch_48
    sget-object v7, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_1f

    :pswitch_49
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_1f

    :pswitch_4a
    sget-object v7, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_1f

    :goto_20
    move/from16 v0, v84

    move-object/from16 v7, v89

    goto :goto_24

    :cond_1c
    :goto_21
    const/4 v0, 0x1

    packed-switch v14, :pswitch_data_8

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_22

    :pswitch_4b
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    or-int/lit16 v0, v0, 0x1000

    goto :goto_22

    :pswitch_4c
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    or-int/lit16 v0, v0, 0x2000

    goto :goto_22

    :pswitch_4d
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    or-int/lit16 v0, v0, 0x4000

    nop

    :goto_22
    nop

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {v13, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v8

    iput-object v8, v7, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v0, v7, Landroid/widget/Editor;->mInputType:I

    nop

    :goto_23
    move v8, v0

    goto/16 :goto_1b

    :goto_24
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1d

    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v100, v8

    move/from16 v101, v10

    move/from16 v9, v90

    move/from16 v8, v91

    move/from16 v10, v92

    invoke-virtual {v3, v5, v9, v8, v10}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    goto :goto_25

    :cond_1d
    move/from16 v100, v8

    move/from16 v101, v10

    move/from16 v9, v90

    move/from16 v8, v91

    move/from16 v10, v92

    :goto_25
    if-eqz v4, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v102, v4

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    if-ne v7, v3, :cond_1f

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_26

    :cond_1e
    move/from16 v102, v4

    :cond_1f
    :goto_26
    move-object/from16 v3, v72

    if-nez v3, :cond_21

    if-eqz v6, :cond_20

    goto :goto_27

    :cond_20
    move-object/from16 v103, v3

    goto :goto_29

    :cond_21
    :goto_27
    iget-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v4, :cond_22

    new-instance v4, Landroid/widget/TextView$Drawables;

    invoke-direct {v4, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_22
    if-eqz v3, :cond_23

    iget-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object v3, v4, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v103, v3

    const/4 v3, 0x1

    iput-boolean v3, v4, Landroid/widget/TextView$Drawables;->mHasTint:Z

    goto :goto_28

    :cond_23
    move-object/from16 v103, v3

    const/4 v3, 0x1

    :goto_28
    if-eqz v6, :cond_24

    iget-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object v6, v4, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v3, v4, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    :cond_24
    :goto_29
    move-object/from16 v104, v6

    move/from16 v105, v11

    move-object/from16 v3, v65

    move-object/from16 v4, v66

    move-object/from16 v6, v67

    move-object/from16 v11, v68

    invoke-virtual {v1, v6, v3, v11, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v106, v3

    move-object/from16 v107, v4

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    invoke-direct {v1, v3, v4}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v108, v3

    move/from16 v3, v87

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-direct {v1, v0}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    invoke-direct {v1, v0, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    if-eqz v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v16

    if-nez v16, :cond_25

    move/from16 v109, v3

    move-object/from16 v110, v4

    move/from16 v3, v88

    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    const/16 v50, 0x3

    move/from16 v3, v50

    goto :goto_2a

    :cond_25
    move/from16 v109, v3

    move-object/from16 v110, v4

    move/from16 v3, v88

    :cond_26
    :goto_2a
    packed-switch v3, :pswitch_data_9

    goto :goto_2c

    :pswitch_4e
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_2b

    :cond_27
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v4, 0x1

    iput v4, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_2b
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2c

    :pswitch_4f
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2c

    :pswitch_50
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2c

    :pswitch_51
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    nop

    :goto_2c
    if-nez v5, :cond_29

    if-nez v9, :cond_29

    if-nez v8, :cond_29

    if-eqz v10, :cond_28

    goto :goto_2d

    :cond_28
    const/4 v4, 0x0

    goto :goto_2e

    :cond_29
    :goto_2d
    const/4 v4, 0x1

    :goto_2e
    if-nez v4, :cond_2c

    move/from16 v111, v0

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2a

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, 0xfff

    move/from16 v112, v3

    const/16 v3, 0x81

    if-ne v0, v3, :cond_2b

    goto :goto_2f

    :cond_2a
    move/from16 v112, v3

    :cond_2b
    const/4 v0, 0x0

    goto :goto_30

    :cond_2c
    move/from16 v111, v0

    move/from16 v112, v3

    :goto_2f
    const/4 v0, 0x1

    :goto_30
    if-eqz v0, :cond_2d

    move/from16 v113, v5

    move-object/from16 v3, v85

    const/4 v5, 0x3

    iput v5, v3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    goto :goto_31

    :cond_2d
    move/from16 v113, v5

    move-object/from16 v3, v85

    :goto_31
    invoke-direct {v1, v3}, Landroid/widget/TextView;->applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V

    if-eqz v4, :cond_2e

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2e
    move/from16 v5, v57

    if-ltz v5, :cond_2f

    move/from16 v115, v0

    move-object/from16 v114, v3

    const/4 v3, 0x1

    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/16 v16, 0x0

    aput-object v3, v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_32

    :cond_2f
    move/from16 v115, v0

    move-object/from16 v114, v3

    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_32
    move-object/from16 v3, v52

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz v48, :cond_30

    move-object/from16 v116, v3

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    goto :goto_33

    :cond_30
    move-object/from16 v116, v3

    :goto_33
    move-object/from16 v3, v53

    if-eqz v3, :cond_31

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_31
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v117, v3

    move/from16 v118, v4

    move/from16 v119, v5

    move/from16 v58, v98

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v12, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v12, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v12

    if-eqz v12, :cond_32

    goto :goto_34

    :cond_32
    const/4 v12, 0x0

    goto :goto_35

    :cond_33
    :goto_34
    const/4 v12, 0x1

    :goto_35
    if-nez v12, :cond_35

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v16

    if-eqz v16, :cond_34

    goto :goto_36

    :cond_34
    const/16 v16, 0x0

    goto :goto_37

    :cond_35
    :goto_36
    const/16 v16, 0x1

    :goto_37
    if-nez v12, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v17

    if-eqz v17, :cond_36

    goto :goto_38

    :cond_36
    const/16 v17, 0x0

    goto :goto_39

    :cond_37
    :goto_38
    const/16 v17, 0x1

    :goto_39
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getFocusable()I

    move-result v18

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v3, v18

    const/16 v16, 0x0

    :goto_3a
    move/from16 v120, v16

    move-object/from16 v121, v6

    move/from16 v6, v120

    if-ge v6, v2, :cond_3c

    move/from16 v122, v2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    move-object/from16 v123, v7

    const/16 v7, 0x13

    if-eq v2, v7, :cond_38

    packed-switch v2, :pswitch_data_a

    goto :goto_3b

    :pswitch_52
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move v5, v2

    goto :goto_3b

    :pswitch_53
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    nop

    :goto_3b
    move/from16 v125, v8

    const/16 v8, 0x12

    goto :goto_3d

    :cond_38
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v16

    if-eqz v16, :cond_3b

    move/from16 v124, v2

    iget v2, v7, Landroid/util/TypedValue;->type:I

    move/from16 v125, v8

    const/16 v8, 0x12

    if-ne v2, v8, :cond_3a

    iget v2, v7, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_39

    const/4 v2, 0x0

    goto :goto_3c

    :cond_39
    nop

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3a
    iget v2, v7, Landroid/util/TypedValue;->data:I

    :goto_3c
    move v3, v2

    goto :goto_3d

    :cond_3b
    move/from16 v125, v8

    const/16 v8, 0x12

    :goto_3d
    add-int/lit8 v16, v6, 0x1

    move-object/from16 v6, v121

    move/from16 v2, v122

    move-object/from16 v7, v123

    move/from16 v8, v125

    goto :goto_3a

    :cond_3c
    move/from16 v122, v2

    move-object/from16 v123, v7

    move/from16 v125, v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getFocusable()I

    move-result v2

    if-eq v3, v2, :cond_3d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(I)V

    :cond_3d
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLongClickable(Z)V

    iget-object v2, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3e

    iget-object v2, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_3f

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto :goto_3e

    :cond_3f
    const/4 v2, 0x1

    :goto_3e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v6

    if-eqz v6, :cond_44

    iget v6, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    if-ne v6, v2, :cond_45

    iget-boolean v2, v1, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-nez v2, :cond_43

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v7, v42, v6

    if-nez v7, :cond_40

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v8, 0x2

    invoke-static {v8, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v42

    goto :goto_3f

    :cond_40
    const/4 v8, 0x2

    :goto_3f
    move/from16 v7, v42

    cmpl-float v16, v43, v6

    if-nez v16, :cond_41

    const/high16 v6, 0x42e00000    # 112.0f

    invoke-static {v8, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v43

    :cond_41
    move/from16 v6, v43

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v8, v44, v8

    if-nez v8, :cond_42

    const/high16 v44, 0x3f800000    # 1.0f

    :cond_42
    move/from16 v8, v44

    invoke-direct {v1, v7, v6, v8}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    move/from16 v43, v6

    move/from16 v42, v7

    move/from16 v44, v8

    :cond_43
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    goto :goto_40

    :cond_44
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    :cond_45
    :goto_40
    move/from16 v2, v74

    if-ltz v2, :cond_46

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    :cond_46
    move/from16 v6, v75

    if-ltz v6, :cond_47

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    :cond_47
    move/from16 v7, v76

    if-ltz v7, :cond_48

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLineHeight(I)V

    :cond_48
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x49
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_49
        :pswitch_48
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1e
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v0, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v0, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v2, v2, Landroid/widget/TextView$Drawables;->mHasTint:Z

    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v3, v3, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v5, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_5
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private applySingleLine(ZZZ)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V
    .locals 7

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_3
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    :cond_4
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/TextView;->mFontFamily:Ljava/lang/String;

    :cond_5
    iget-object v2, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    iget-object v3, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iget v4, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    iget v5, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mStyleIndex:I

    iget v6, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    iget v1, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    iget v2, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    iget v3, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_6
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    if-eqz v0, :cond_7

    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_7
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_8
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    :cond_9
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    if-eqz v0, :cond_a

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_a
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private assumeLayout()V
    .locals 8

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v1, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v3, v0

    iget-boolean v1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v1, :cond_1

    const/high16 v0, 0x100000

    :cond_1
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v0

    move v6, v3

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    return-void
.end method

.method private autoSizeText()V
    .locals 11

    invoke-direct {p0}, Landroid/widget/TextView;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x100000

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    sub-int v8, v1, v2

    if-lez v0, :cond_5

    if-gtz v8, :cond_3

    goto :goto_1

    :cond_3
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v9

    :try_start_0
    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v2, v8

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Landroid/widget/TextView;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v1

    int-to-float v10, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-direct {p0, v1, v10, v1}, Landroid/widget/TextView;->setTextSizeInternal(IFZ)V

    const/4 v3, 0x0

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v1, p0, Landroid/widget/TextView;->mRight:I

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v6, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_4
    monitor-exit v9

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return-void
.end method

.method private bringTextIntoView()Z
    .locals 13

    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    :goto_0
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x50

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView;->mBottom:I

    iget v8, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v9, :cond_3

    if-ne v5, v4, :cond_2

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v2, v9

    goto :goto_3

    :cond_3
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v9, :cond_5

    if-ne v5, v4, :cond_4

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_2
    move-object v2, v9

    :cond_5
    :goto_3
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v2, v9, :cond_8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    sub-int v11, v10, v9

    if-ge v11, v6, :cond_6

    add-int v11, v10, v9

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v6, 0x2

    sub-int/2addr v11, v12

    :goto_4
    goto :goto_5

    :cond_6
    if-gez v5, :cond_7

    sub-int v11, v10, v6

    goto :goto_4

    :cond_7
    nop

    move v11, v9

    :goto_5
    move v9, v11

    goto :goto_6

    :cond_8
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v9, :cond_9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v9, v6

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    :goto_6
    const/4 v10, 0x0

    if-ge v8, v7, :cond_a

    const/4 v3, 0x0

    :goto_7
    goto :goto_8

    :cond_a
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v3, :cond_b

    sub-int v3, v8, v7

    goto :goto_7

    :cond_b
    move v3, v10

    :goto_8
    iget v11, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v9, v11, :cond_d

    iget v11, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v3, v11, :cond_c

    goto :goto_9

    :cond_c
    return v10

    :cond_d
    :goto_9
    invoke-virtual {p0, v9, v3}, Landroid/widget/TextView;->scrollTo(II)V

    return v4
.end method

.method private canMarquee()Z
    .locals 4

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v1, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private changeListenerLocaleTo(Ljava/util/Locale;)V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/TextView;->mListenerChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v1, v0, Landroid/text/method/DigitsKeyListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/text/method/DigitsKeyListener;

    invoke-static {p1, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/text/method/DateKeyListener;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Landroid/text/method/TimeKeyListener;

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v1, v0, Landroid/text/method/DateTimeKeyListener;

    if-eqz v1, :cond_5

    invoke-static {p1}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    invoke-direct {p0}, Landroid/widget/TextView;->setInputTypeFromEditor()V

    if-eqz v1, :cond_6

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v3, Landroid/widget/Editor;->mInputType:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/widget/Editor;->mInputType:I

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v3, Landroid/widget/Editor;->mInputType:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/widget/Editor;->mInputType:I

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private checkForRelayout()V
    .locals 10

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v2, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v2, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v2, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    goto :goto_0

    :goto_1
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v3, p0, Landroid/widget/TextView;->mRight:I

    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v8, v3, v4

    const/4 v9, 0x0

    move-object v3, p0

    move v4, v2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_5

    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :goto_2
    return-void
.end method

.method private checkForResize()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v1, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_4
    return-void
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .locals 5

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    if-lez v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    if-gez v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    nop

    move-object v2, p1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method private clearAutoSizeConfiguration()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return-void
.end method

.method private compressText(F)Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    add-float v5, v2, v4

    sub-float/2addr v5, p1

    div-float/2addr v5, p1

    cmpl-float v0, v5, v0

    if-lez v0, :cond_1

    const v0, 0x3d8f5c29    # 0.07f

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v4, v5

    const v1, 0x3ba3d70a    # 0.005f

    sub-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    new-instance v0, Landroid/widget/TextView$2;

    invoke-direct {v0, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_1
    return v1
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 7

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    return v3
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x17

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v0, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v2, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    return v3

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    return v3

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v3

    :cond_a
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    if-eqz p3, :cond_c

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v4, p0, v5, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v4, :cond_b

    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    return v3

    :cond_b
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v1

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_c
    :goto_2
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v4, p0, v5, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    if-eqz v4, :cond_d

    return v2

    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    if-eqz p3, :cond_f

    :try_start_1
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v4, p0, v5, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    if-eqz v4, :cond_e

    return v3

    :cond_e
    goto :goto_3

    :catch_1
    move-exception v4

    :cond_f
    :goto_3
    if-eqz v0, :cond_11

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v4, p0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-nez v1, :cond_10

    iput-boolean v2, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_10
    const/4 v1, 0x2

    return v1

    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    const/16 v4, 0x101

    if-ne v2, v4, :cond_12

    invoke-direct {p0, p1}, Landroid/widget/TextView;->isDirectionalNavigationKey(I)Z

    move-result v2

    if-eqz v2, :cond_12

    return v3

    :cond_12
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v0, :cond_13

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_13

    nop

    move v1, v3

    goto :goto_4

    :cond_13
    nop

    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x115
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .locals 6

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-gt v2, v3, :cond_1

    add-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    aget v5, v5, v4

    invoke-direct {p0, v5, p1}, Landroid/widget/TextView;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v4, -0x1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    aget v4, v4, v1

    return v4

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No available text sizes to choose from."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    :goto_1
    return-void
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v3, 0x50

    if-eq v1, v3, :cond_2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v3

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v4

    if-ge v4, v3, :cond_2

    const/16 v5, 0x30

    if-ne v1, v5, :cond_1

    sub-int v0, v3, v4

    goto :goto_0

    :cond_1
    sub-int v5, v3, v4

    shr-int/lit8 v0, v5, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v0}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2
.end method

.method private getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeHintLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private getDesiredHeight()I
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v2, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getHeight(Z)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_5

    instance-of v4, p1, Landroid/text/DynamicLayout;

    if-nez v4, :cond_3

    instance-of v4, p1, Landroid/text/BoringLayout;

    if-eqz v4, :cond_5

    :cond_3
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    if-eqz v1, :cond_4

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_4
    add-int/2addr v0, v3

    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    :cond_5
    :goto_0
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v5, :cond_6

    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_1

    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getHorizontalFadingEdgeStrength(FF)F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    sub-float v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    :cond_1
    int-to-float v2, v0

    div-float v2, v1, v2

    return v2
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_0
    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_1
    goto :goto_2

    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_5
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const v1, 0x800003

    if-eq v0, v1, :cond_3

    const v1, 0x800005

    if-eq v0, v1, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    nop

    :goto_2
    nop

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 2

    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    return v1
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 5

    if-eqz p1, :cond_1

    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    :goto_0
    return-object v0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_0
    if-ltz v2, :cond_6

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->shouldRenderCursor()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v5, :cond_1

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v2, v6, v7}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->updateCursorPosition()V

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_2
    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v5, :cond_4

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v3, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_6
    :goto_0
    return-object v0
.end method

.method private hasSpannableText()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private invalidateCursor(III)V
    .locals 3

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    :cond_1
    return-void
.end method

.method private isAutoSizeEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAutofillable()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutofillType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDirectionalNavigationKey(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isMarqueeFadeEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isMultilineInputType(I)Z
    .locals 2

    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isPasswordInputType(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isShowingHint()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$handleClick$0(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleClick$1(Landroid/view/textclassifier/TextClassification;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextView"

    const-string v2, "Error sending PendingIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_0
    const-string v0, "TextView"

    const-string v1, "No link action to perform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "TextView"

    const-string v1, "Timeout while classifying text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private notifyAutoFillManagerAfterTextChangedIfNeeded()V
    .locals 3

    invoke-direct {p0}, Landroid/widget/TextView;->isAutofillable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mLastValueSentToAutofillManager:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mLastValueSentToAutofillManager:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_5

    const-string v1, "TextView"

    const-string/jumbo v2, "not notifying AFM on unchanged text"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_4

    const-string v1, "TextView"

    const-string/jumbo v2, "notifying AFM after text changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/widget/TextView;->mLastValueSentToAutofillManager:Ljava/lang/CharSequence;

    :cond_5
    :goto_1
    return-void
.end method

.method private onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    move v5, v0

    if-eqz p2, :cond_2

    iget-boolean v0, v1, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    xor-int/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    iget v0, v1, Landroid/widget/TextView;->mTextId:I

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v6, v1, Landroid/widget/TextView;->mTextId:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setTextIdEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v6, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_2

    const-string v6, "TextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onProvideAutofillStructure(): cannot set name for text id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/widget/TextView;->mTextId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v17, v5

    goto/16 :goto_c

    :cond_4
    :goto_3
    iget-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_5
    iget-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-gt v6, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz p2, :cond_6

    invoke-virtual {v2, v7}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    :goto_4
    nop

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_9

    :cond_7
    const/4 v7, 0x2

    new-array v8, v7, [I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->getLocationInWindow([I)V

    aget v9, v8, v4

    move-object v10, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    :goto_5
    instance-of v12, v11, Landroid/view/View;

    if-eqz v12, :cond_8

    move-object v10, v11

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto :goto_5

    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    if-ltz v9, :cond_9

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v13

    add-int/lit8 v14, v12, -0x1

    int-to-float v14, v14

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v14

    goto :goto_6

    :cond_9
    neg-int v13, v9

    int-to-float v13, v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v13

    add-int/lit8 v14, v12, -0x1

    sub-int/2addr v14, v9

    int-to-float v14, v14

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v14

    :goto_6
    sub-int v15, v14, v13

    div-int/2addr v15, v7

    sub-int v15, v13, v15

    if-gez v15, :cond_a

    const/4 v15, 0x0

    :cond_a
    move v3, v15

    sub-int v15, v14, v13

    div-int/2addr v15, v7

    add-int v7, v14, v15

    if-lt v7, v6, :cond_b

    add-int/lit8 v7, v6, -0x1

    :cond_b
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    move/from16 v16, v3

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    move/from16 v17, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    move/from16 v18, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-ge v5, v6, :cond_d

    if-ge v5, v4, :cond_c

    move v4, v5

    :cond_c
    if-le v6, v3, :cond_d

    move v3, v6

    :cond_d
    move/from16 v19, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-gtz v4, :cond_e

    move-object/from16 v20, v8

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_f

    goto :goto_7

    :cond_e
    move-object/from16 v20, v8

    :goto_7
    invoke-interface {v7, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_f
    if-eqz p2, :cond_10

    invoke-virtual {v2, v7}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_10
    sub-int v8, v5, v4

    move/from16 v21, v3

    sub-int v3, v6, v4

    invoke-virtual {v2, v7, v8, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    sub-int v3, v14, v13

    const/4 v8, 0x1

    add-int/2addr v3, v8

    new-array v3, v3, [I

    sub-int v15, v14, v13

    move/from16 v22, v4

    add-int/lit8 v4, v15, 0x1

    new-array v4, v4, [I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v8

    move v15, v13

    :goto_8
    move/from16 v23, v15

    move/from16 v24, v5

    move/from16 v5, v23

    if-gt v5, v14, :cond_11

    sub-int v23, v5, v13

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    aput v15, v3, v23

    sub-int v23, v5, v13

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v15

    add-int/2addr v15, v8

    aput v15, v4, v23

    add-int/lit8 v15, v5, 0x1

    move/from16 v5, v24

    goto :goto_8

    :cond_11
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    :goto_9
    if-nez p2, :cond_17

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_12

    or-int/lit8 v3, v3, 0x1

    :cond_12
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_13

    or-int/lit8 v3, v3, 0x2

    :cond_13
    iget-object v5, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFlags()I

    move-result v5

    and-int/lit8 v6, v5, 0x20

    if-eqz v6, :cond_14

    or-int/lit8 v3, v3, 0x1

    :cond_14
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_15

    or-int/lit8 v3, v3, 0x4

    :cond_15
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_16

    or-int/lit8 v3, v3, 0x8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8, v3}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    goto :goto_c

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMinEms()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewStructure;->setMinTextEms(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMaxEms()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewStructure;->setMaxTextEms(I)V

    const/4 v3, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_19

    aget-object v7, v4, v6

    instance-of v8, v7, Landroid/text/InputFilter$LengthFilter;

    if-eqz v8, :cond_18

    move-object v4, v7

    check-cast v4, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v4}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v3

    goto :goto_b

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_19
    :goto_b
    invoke-virtual {v2, v3}, Landroid/view/ViewStructure;->setMaxTextLength(I)V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private paste(IIZ)V
    .locals 8

    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-eqz p3, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v5, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v5, p1, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    const-string v7, "\n"

    invoke-interface {v5, v6, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    invoke-interface {v5, v6, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0x0

    sput-wide v3, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    :cond_5
    return-void
.end method

.method private performAccessibilityActionClick(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->hasSpannableText()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_6
    return v0
.end method

.method public static preloadFontCache()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    return-void
.end method

.method private prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method private readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    move v3, v2

    const/4 v4, -0x1

    if-eqz p4, :cond_0

    sget-object v5, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    goto/16 :goto_2

    :pswitch_1
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    iget-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_3
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    goto/16 :goto_2

    :pswitch_4
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    iget-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :cond_1
    :goto_1
    iget-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v4, :cond_2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iget-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/TextView;->mFontFamily:Ljava/lang/String;

    :cond_2
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    goto/16 :goto_2

    :pswitch_6
    iget-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    goto/16 :goto_2

    :pswitch_7
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    goto :goto_2

    :pswitch_8
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    goto :goto_2

    :pswitch_9
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    goto :goto_2

    :pswitch_a
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    goto :goto_2

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_2

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    goto :goto_2

    :pswitch_d
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    goto :goto_2

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_2

    :pswitch_f
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mStyleIndex:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mStyleIndex:I

    goto :goto_2

    :pswitch_10
    iget v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    iget v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    if-eq v5, v4, :cond_3

    iget-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    if-nez v4, :cond_3

    const/4 v4, 0x0

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iget-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/TextView;->mFontFamily:Ljava/lang/String;

    goto :goto_2

    :pswitch_11
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    nop

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method private registerForPreDraw()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    :cond_0
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v1, v3

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, p1, :cond_2

    if-ne v4, p2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v1, v3

    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3

    const-class v0, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestAutofill()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V
    .locals 2

    if-ltz p3, :cond_1

    const/16 v0, 0x3e8

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    const-class v1, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    add-int v0, p2, p3

    const-class v1, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v2, v2, Landroid/text/InputFilter;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-lez v3, :cond_5

    array-length v4, p2

    add-int/2addr v4, v3

    new-array v4, v4, [Landroid/text/InputFilter;

    array-length v5, p2

    invoke-static {p2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v3, p2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-eqz v2, :cond_4

    array-length v3, p2

    add-int/2addr v3, v1

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v5, Landroid/text/InputFilter;

    aput-object v5, v4, v3

    :cond_4
    invoke-interface {p1, v4}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_2
    return-void
.end method

.method private setInputType(IZ)V
    .locals 7

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const v3, 0x8000

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit16 v3, p1, 0x1000

    if-eqz v3, :cond_1

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_1
    goto :goto_2

    :cond_1
    and-int/lit16 v3, p1, 0x2000

    if-eqz v3, :cond_2

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_2
    and-int/lit16 v3, p1, 0x4000

    if-eqz v3, :cond_3

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_2
    invoke-static {v2, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v2

    goto/16 :goto_6

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    invoke-direct {p0}, Landroid/widget/TextView;->getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;

    move-result-object v4

    and-int/lit16 v5, p1, 0x1000

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    and-int/lit16 v6, p1, 0x2000

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    if-eqz v4, :cond_8

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v5

    and-int/lit8 v6, v5, 0xf

    if-eq v6, v3, :cond_8

    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_7

    or-int/lit16 v5, v5, 0x80

    :cond_7
    move p1, v5

    :cond_8
    goto :goto_6

    :cond_9
    const/4 v2, 0x4

    if-ne v0, v2, :cond_d

    invoke-direct {p0}, Landroid/widget/TextView;->getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;

    move-result-object v2

    and-int/lit16 v3, p1, 0xff0

    const/16 v4, 0x10

    if-eq v3, v4, :cond_b

    const/16 v4, 0x20

    if-eq v3, v4, :cond_a

    invoke-static {v2}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    goto :goto_5

    :cond_a
    invoke-static {v2}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object v3

    goto :goto_5

    :cond_b
    invoke-static {v2}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v3

    nop

    :goto_5
    nop

    iget-boolean v4, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    if-eqz v4, :cond_c

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result p1

    :cond_c
    nop

    move-object v2, v3

    goto :goto_6

    :cond_d
    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    goto :goto_6

    :cond_e
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    iput-boolean v1, p0, Landroid/widget/TextView;->mListenerChanged:Z

    if-eqz p2, :cond_f

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v2, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_7

    :cond_f
    invoke-direct {p0, v2}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    :goto_7
    return-void
.end method

.method private setInputTypeFromEditor()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v1}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v1

    iput v1, v0, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/Editor;->mInputType:I

    :goto_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    return-void
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_2
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)Z
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private setRawTextSize(FZ)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v3, :cond_2

    new-instance v4, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    iput-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v0, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v0, v3, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, v3, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    goto :goto_2

    :cond_3
    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p2, v3, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    goto :goto_3

    :cond_4
    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    :cond_5
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextScaleX(F)V

    :cond_2
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iput v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v1, v1

    move-object v9, p1

    move p1, v0

    :goto_1
    if-ge p1, v1, :cond_6

    iget-object v2, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v2, v2, p1

    const/4 v4, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sget-object v6, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-interface/range {v2 .. v8}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    nop

    move-object v9, v2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_8

    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, p1, v0, p4, v2}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_2

    :cond_7
    const-string p1, ""

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, p1, v0, v0, v2}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_8
    :goto_2
    const/4 p1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 p1, 0x1

    :cond_9
    instance-of v2, v9, Landroid/text/PrecomputedText;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    move-object v2, v9

    check-cast v2, Landroid/text/PrecomputedText;

    goto :goto_3

    :cond_a
    move-object v2, v3

    :goto_3
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq p2, v4, :cond_11

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-nez v4, :cond_11

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_e

    iget-object v4, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v4, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_c
    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mBreakStrategy:I

    iget v8, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/PrecomputedText$Params;->isSameTextMetricsInternal(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PrecomputedText\'s Parameters don\'t match the parameters of this TextView.Consider using setTextMetricsParams(precomputedText.getParams()) to override the settings of this TextView: PrecomputedText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "TextView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    if-eq p2, v4, :cond_10

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_f

    goto :goto_4

    :cond_f
    instance-of v4, v9, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_13

    invoke-static {v9}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_6

    :cond_10
    :goto_4
    iget-object v4, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v4, v9}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v9

    goto :goto_6

    :cond_11
    :goto_5
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->forgetUndoRedo()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    invoke-virtual {v4, v9}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v4

    move-object v9, v4

    iget-object v5, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v4, v5}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_12
    nop

    :cond_13
    :goto_6
    iget v4, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_17

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq p2, v4, :cond_15

    instance-of v4, v9, Landroid/text/Spannable;

    if-eqz v4, :cond_14

    goto :goto_7

    :cond_14
    iget-object v4, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v4, v9}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    goto :goto_8

    :cond_15
    :goto_7
    move-object v4, v9

    check-cast v4, Landroid/text/Spannable;

    :goto_8
    nop

    iget v5, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    invoke-static {v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v9, v4

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne p2, v5, :cond_16

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_9

    :cond_16
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_9
    move-object p2, v5

    invoke-direct {p0, v9}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    iget-boolean v5, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v5, :cond_17

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_17
    iput-object p2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v9}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_18

    iput-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_18
    iget-object v4, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v4, v9, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    :goto_a
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    instance-of v5, v9, Landroid/text/Spannable;

    if-eqz v5, :cond_1d

    iget-boolean v5, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v5, :cond_1d

    move-object v5, v9

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v5, v0, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/widget/TextView$ChangeWatcher;

    array-length v7, v6

    move v8, v0

    :goto_b
    if-ge v8, v7, :cond_19

    aget-object v10, v6, v8

    invoke-interface {v5, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_19
    iget-object v8, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v8, :cond_1a

    new-instance v8, Landroid/widget/TextView$ChangeWatcher;

    invoke-direct {v8, p0, v3}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v8, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_1a
    iget-object v3, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const v8, 0x640012

    invoke-interface {v5, v3, v0, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, v5}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    :cond_1b
    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/16 v8, 0x12

    invoke-interface {v5, v3, v0, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1c
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v8, v9

    check-cast v8, Landroid/text/Spannable;

    invoke-interface {v3, p0, v8}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v0, v3, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_1d
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_1e

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_1e
    invoke-virtual {p0, v9, v0, p4, v4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0, v9, v0, p4, v4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    if-eqz p1, :cond_1f

    move-object v0, v9

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    goto :goto_c

    :cond_1f
    invoke-direct {p0}, Landroid/widget/TextView;->notifyAutoFillManagerAfterTextChangedIfNeeded()V

    :goto_c
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_20
    return-void
.end method

.method private setTextInternal(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, p1, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    instance-of v0, p1, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/text/PrecomputedText;

    nop

    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mPrecomputed:Landroid/text/PrecomputedText;

    return-void
.end method

.method private setTextSizeInternal(IFZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2, p3}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    return-void
.end method

.method private setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    :cond_1
    packed-switch p3, :pswitch_data_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupAutoSizeText()Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    iget v3, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    new-array v3, v0, [I

    nop

    :goto_0
    if-ge v1, v0, :cond_1

    iget v4, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    int-to-float v5, v1

    iget v6, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    :cond_2
    iput-boolean v2, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    :goto_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return v0
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [I

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizesConfiguration()Z

    :cond_1
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    iget-boolean v3, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-eqz v3, :cond_1

    iput v2, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    iget-object v2, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    aget v1, v2, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    iget-object v1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    return v1
.end method

.method private shareSelectedText()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, 0xff0

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    return v1
.end method

.method private startMarquee()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_5

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    :cond_6
    return-void
.end method

.method private startStopMarquee(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopMarquee()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .locals 8

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_1

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->reset()V

    :goto_1
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    nop

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    iget v4, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-direct {p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_2

    :cond_2
    const v4, 0x7fffffff

    :goto_2
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_3

    return v5

    :cond_3
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4

    return v5

    :cond_4
    return v6
.end method

.method private unregisterForPreDraw()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    return-void
.end method

.method private updateTextColors()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v2, v4, :cond_0

    iput v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    const/4 v0, 0x1

    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v4, Landroid/text/TextPaint;->linkColor:I

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v2, v4, Landroid/text/TextPaint;->linkColor:I

    const/4 v0, 0x1

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v3, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v2, v3, :cond_2

    iput v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "textservices"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    return-void
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float v1, p2, p1

    if-lez v1, :cond_1

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    iput p1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    iput p2, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    iput p3, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The auto-size step granularity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_4

    if-ltz v0, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-array v8, v1, [Landroid/graphics/RectF;

    new-instance v2, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    move-object v9, v2

    add-int v5, v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v2

    int-to-float v7, v2

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    add-int v4, v0, v3

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->getCharacterBoundsFlags(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    add-int v5, v0, v3

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/CursorAnchorInfo;->getCharacterBounds(I)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->mapRectFromViewToScreenCoords(Landroid/graphics/RectF;Z)V

    aput-object v5, v8, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, p2, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v2, "TextView"

    const-string v3, "Invalid arguments for accessibility character locations"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    iget v1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "TextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput v1, v0, Landroid/widget/TextView;->mDeferScroll:I

    return v3

    :cond_0
    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    :goto_0
    if-nez v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    sget-object v6, Landroid/widget/TextView$4;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    move v6, v3

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    neg-int v6, v6

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    goto :goto_1

    :pswitch_2
    const/4 v6, -0x1

    goto :goto_1

    :pswitch_3
    const/4 v6, 0x1

    nop

    :goto_1
    nop

    if-lez v6, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    invoke-virtual {v4, v1, v7}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v4, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v13

    iget v14, v0, Landroid/widget/TextView;->mRight:I

    iget v15, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v0, Landroid/widget/TextView;->mBottom:I

    iget v3, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    sub-int/2addr v15, v3

    iget-boolean v3, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-nez v3, :cond_4

    sub-int v3, v12, v11

    if-le v3, v14, :cond_4

    if-le v12, v8, :cond_4

    add-int v3, v11, v14

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_4
    sub-int v3, v10, v9

    div-int/lit8 v3, v3, 0x2

    move/from16 v17, v3

    div-int/lit8 v1, v15, 0x4

    move/from16 v18, v2

    move/from16 v2, v17

    if-le v2, v1, :cond_5

    div-int/lit8 v17, v15, 0x4

    move/from16 v2, v17

    :cond_5
    div-int/lit8 v1, v14, 0x4

    if-le v3, v1, :cond_6

    div-int/lit8 v3, v14, 0x4

    :cond_6
    iget v1, v0, Landroid/widget/TextView;->mScrollX:I

    move-object/from16 v19, v4

    iget v4, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v20, v7

    sub-int v7, v9, v4

    if-ge v7, v2, :cond_7

    sub-int v4, v9, v2

    :cond_7
    sub-int v7, v10, v4

    move/from16 v21, v4

    sub-int v4, v15, v2

    if-le v7, v4, :cond_8

    sub-int v4, v15, v2

    sub-int v4, v10, v4

    goto :goto_3

    :cond_8
    move/from16 v4, v21

    :goto_3
    sub-int v7, v13, v4

    if-ge v7, v15, :cond_9

    sub-int v4, v13, v15

    :cond_9
    const/4 v7, 0x0

    sub-int/2addr v7, v4

    if-lez v7, :cond_a

    const/4 v4, 0x0

    :cond_a
    if-eqz v6, :cond_d

    sub-int v7, v8, v1

    if-ge v7, v3, :cond_b

    sub-int v1, v8, v3

    :cond_b
    sub-int v7, v8, v1

    move/from16 v22, v1

    sub-int v1, v14, v3

    if-le v7, v1, :cond_c

    sub-int v1, v14, v3

    sub-int v1, v8, v1

    goto :goto_4

    :cond_c
    move/from16 v1, v22

    :cond_d
    :goto_4
    if-gez v6, :cond_f

    sub-int v7, v11, v1

    if-lez v7, :cond_e

    move v1, v11

    :cond_e
    sub-int v7, v12, v1

    if-ge v7, v14, :cond_19

    sub-int v1, v12, v14

    goto :goto_5

    :cond_f
    if-lez v6, :cond_11

    sub-int v7, v12, v1

    if-ge v7, v14, :cond_10

    sub-int v1, v12, v14

    :cond_10
    sub-int v7, v11, v1

    if-lez v7, :cond_19

    move v1, v11

    goto :goto_5

    :cond_11
    sub-int v7, v12, v11

    if-gt v7, v14, :cond_12

    sub-int v7, v12, v11

    sub-int v7, v14, v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v11, v7

    goto :goto_5

    :cond_12
    sub-int v7, v12, v3

    if-le v8, v7, :cond_13

    sub-int v1, v12, v14

    goto :goto_5

    :cond_13
    add-int v7, v11, v3

    if-ge v8, v7, :cond_14

    move v1, v11

    goto :goto_5

    :cond_14
    if-le v11, v1, :cond_15

    move v1, v11

    goto :goto_5

    :cond_15
    add-int v7, v1, v14

    if-ge v12, v7, :cond_16

    sub-int v1, v12, v14

    goto :goto_5

    :cond_16
    sub-int v7, v8, v1

    if-ge v7, v3, :cond_17

    sub-int v1, v8, v3

    :cond_17
    sub-int v7, v8, v1

    move/from16 v23, v1

    sub-int v1, v14, v3

    if-le v7, v1, :cond_18

    sub-int v1, v14, v3

    sub-int v1, v8, v1

    goto :goto_5

    :cond_18
    move/from16 v1, v23

    :cond_19
    :goto_5
    iget v7, v0, Landroid/widget/TextView;->mScrollX:I

    if-ne v1, v7, :cond_1b

    iget v7, v0, Landroid/widget/TextView;->mScrollY:I

    if-eq v4, v7, :cond_1a

    goto :goto_6

    :cond_1a
    move/from16 v26, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v27, v4

    move/from16 v2, v18

    goto :goto_9

    :cond_1b
    :goto_6
    iget-object v7, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-nez v7, :cond_1c

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->scrollTo(II)V

    move/from16 v26, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v27, v4

    goto :goto_8

    :cond_1c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    move/from16 v24, v2

    move/from16 v25, v3

    iget-wide v2, v0, Landroid/widget/TextView;->mLastScroll:J

    sub-long v16, v16, v2

    iget v2, v0, Landroid/widget/TextView;->mScrollX:I

    sub-int v2, v1, v2

    iget v3, v0, Landroid/widget/TextView;->mScrollY:I

    sub-int v3, v4, v3

    const-wide/16 v21, 0xfa

    cmp-long v7, v16, v21

    if-lez v7, :cond_1d

    iget-object v7, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move/from16 v26, v1

    iget v1, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v27, v4

    iget v4, v0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    iget-object v1, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_7

    :cond_1d
    move/from16 v26, v1

    move/from16 v27, v4

    iget-object v1, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1e
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->scrollBy(II)V

    :goto_7
    move/from16 v28, v2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/widget/TextView;->mLastScroll:J

    :goto_8
    const/4 v2, 0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1f

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_1f
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    add-int/lit8 v3, v8, -0x2

    add-int/lit8 v4, v8, 0x2

    invoke-virtual {v1, v3, v9, v4, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v5}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/widget/TextView;->mScrollX:I

    iget v4, v0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    :cond_20
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method canCopy()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method canCut()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method canPaste()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canPasteAsPlainText()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v3, :cond_1

    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    invoke-static {v4}, Landroid/text/TextUtils;->hasStyleSpan(Landroid/text/Spanned;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    :cond_1
    const-string/jumbo v4, "text/html"

    invoke-virtual {v2, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method canProcessText()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    return v0
.end method

.method canRedo()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canRequestAutofill()Z
    .locals 3

    invoke-direct {p0}, Landroid/widget/TextView;->isAutofillable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method canSelectAllText()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canSelectText()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canShare()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method canUndo()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelLongPress()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public debug(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected deleteText_internal(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const-string/jumbo v1, "text:ellipsize"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "text:textSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string/jumbo v1, "text:scaledTextSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string/jumbo v1, "text:typefaceStyle"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "text:selectionStart"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "text:selectionEnd"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "text:curTextColor"

    iget v3, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "text:text"

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "text:gravity"

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    return v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseline()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getBaselineOffset()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBreakStrategy()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, [Landroid/graphics/drawable/Drawable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    return-object v1
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v6, v3, v2

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    aput-object v2, v3, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    aput-object v1, v3, v4

    return-object v3

    :cond_0
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v6, v3, v2

    aput-object v6, v3, v5

    aput-object v6, v3, v1

    aput-object v6, v3, v4

    return-object v3
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    return v1

    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    return v1
.end method

.method public getCompoundPaddingEnd()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    return v1

    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    return v1

    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    return v1
.end method

.method public getCompoundPaddingStart()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    return v1

    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    return v1
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    :goto_0
    return v0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getEditorForTesting()Landroid/widget/Editor;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 6

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-lt v3, v2, :cond_3

    return v1

    :cond_3
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-ne v4, v5, :cond_4

    add-int v5, v1, v2

    sub-int/2addr v5, v3

    return v5

    :cond_4
    const/16 v5, 0x50

    if-ne v4, v5, :cond_5

    return v1

    :cond_5
    sub-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    return v5
.end method

.method public getExtendedPaddingTop()I
    .locals 6

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-lt v3, v2, :cond_3

    return v0

    :cond_3
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-ne v4, v5, :cond_4

    return v0

    :cond_4
    const/16 v5, 0x50

    if-ne v4, v5, :cond_5

    add-int v5, v0, v2

    sub-int/2addr v5, v3

    return v5

    :cond_5
    sub-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    return v5
.end method

.method protected getFadeHeight(Z)I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getFadeTop(Z)I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_6

    if-lt v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v5, :cond_4

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v0, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_5
    sget-object v5, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    sub-int/2addr v6, v8

    iput v6, p1, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    add-int/2addr v6, v8

    iput v6, p1, Landroid/graphics/Rect;->right:I

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_6
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x2

    iput v4, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v5, v5, 0x70

    const/16 v6, 0x30

    if-eq v5, v6, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v4, v2

    :cond_7
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v2

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImeHintLocales()Landroid/os/LocaleList;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    :goto_0
    return v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    return-object v1

    :cond_2
    nop

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v0

    return-object v0
.end method

.method public getJustificationMode()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mJustificationMode:I

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :goto_0
    return-object v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result v1

    return v1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    return v1

    :cond_2
    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result v1

    return v1

    :cond_3
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLetterSpacing()F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method getLineAtCoordinate(F)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    add-int v2, v0, v1

    return v2
.end method

.method public getLineCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLineHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMaxLines()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinEms()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinHeight()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinLines()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinWidth()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method getOffsetAtCoordinate(IF)I
    .locals 1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    return v1
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result v2

    return v2

    :cond_2
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v0

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScaledTextSize()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method getSelectedText()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "edittext"

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "textview"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "nosel-textview"

    :goto_1
    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    invoke-virtual {v0, v2, v3}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    :goto_2
    goto :goto_3

    :cond_4
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    iput-object v1, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v4

    if-eq v4, v1, :cond_2

    const/4 v1, 0x2

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :cond_2
    :goto_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    move v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    if-eqz v0, :cond_5

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :cond_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParams()Landroid/text/PrecomputedText$Params;
    .locals 5

    new-instance v0, Landroid/text/PrecomputedText$Params;

    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    iget v3, p0, Landroid/widget/TextView;->mBreakStrategy:I

    iget v4, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    return-object v0

    :cond_0
    new-array v0, v1, [Landroid/text/style/URLSpan;

    return-object v0
.end method

.method getVerticalOffset(Z)I
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v3, 0x30

    if-eq v1, v3, :cond_2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v3

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v4

    if-ge v4, v3, :cond_2

    const/16 v5, 0x50

    if-ne v1, v5, :cond_1

    sub-int v0, v3, v4

    goto :goto_0

    :cond_1
    sub-int v5, v3, v4

    shr-int/lit8 v0, v5, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method public handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z
    .locals 11

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    if-ge v1, v2, :cond_0

    new-instance v3, Landroid/view/textclassifier/TextClassification$Request$Builder;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v1, v2}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v3

    new-instance v4, Landroid/widget/-$$Lambda$TextView$DJlzb7VS7J_1890Kto7GAApQDN0;

    invoke-direct {v4, p0, v3}, Landroid/widget/-$$Lambda$TextView$DJlzb7VS7J_1890Kto7GAApQDN0;-><init>(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)V

    sget-object v5, Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;->INSTANCE:Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    const/4 v6, 0x1

    return v6

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    :cond_2
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_3

    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method hasPasswordTransformationMethod()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v0, :cond_0

    if-lez v1, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hideErrorIfUnchanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public hideFloatingToolbar(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    :cond_0
    return-void
.end method

.method invalidateCursor()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    return-void
.end method

.method invalidateCursorPath()V
    .locals 9

    iget-boolean v0, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    sget-object v2, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v5, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v4, v0

    sget-object v5, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, v1

    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v6, v0

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    add-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v7, v1

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    add-float/2addr v7, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->invalidate(IIII)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/TextView;->invalidate(IIII)V

    :goto_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    iget v3, p0, Landroid/widget/TextView;->mScrollY:I

    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v4, :cond_3

    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    iget v9, p0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v2, v9

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v9, v8, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v6

    if-ne p1, v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    iget v9, p0, Landroid/widget/TextView;->mRight:I

    iget v10, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, v4, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v9, v10

    add-int/2addr v2, v9

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v9, v8, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    if-ne p1, v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v9, v8, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v5

    add-int/2addr v2, v9

    iget v6, p0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v3, v6

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x3

    aget-object v5, v5, v7

    if-ne p1, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v9, v8, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v5

    add-int/2addr v2, v9

    iget v6, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v6, v9

    iget v9, p0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v6, v9

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v6, v9

    add-int/2addr v3, v6

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    :cond_4
    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method invalidateRegion(IIZ)V
    .locals 12

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-lez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    :cond_1
    if-ne p1, p2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    if-eqz p3, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int/2addr v5, v6

    if-ne v0, v2, :cond_4

    if-nez p3, :cond_4

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    goto :goto_1

    :cond_4
    move v6, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    :goto_1
    iget v8, p0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v8, v6

    add-int v9, v5, v1

    iget v10, p0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v10, v7

    add-int v11, v5, v3

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/widget/TextView;->invalidate(IIII)V

    :goto_2
    return-void
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAllCaps()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/AllCapsTransformationMethod;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCursorVisible()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    :goto_0
    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 5

    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    nop

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_provisioned"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    nop

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public isElegantTextHeight()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    return v0
.end method

.method public isFallbackLineSpacing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    return v0
.end method

.method isInBatchEditMode()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    return v1
.end method

.method public isInExtractedMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPositionVisible(FF)Z
    .locals 7

    sget-object v0, Landroid/widget/TextView;->TEMP_POSITION:[F

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/widget/TextView;->TEMP_POSITION:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    move-object v4, p0

    :goto_0
    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_0

    aget v5, v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v1, v2

    aget v5, v1, v3

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v1, v3

    :cond_0
    aget v5, v1, v2

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_4

    aget v5, v1, v3

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_4

    aget v5, v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    aget v5, v1, v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_2
    aget v5, v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v1, v2

    aget v5, v1, v3

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v1, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Landroid/view/View;

    move-object v4, v6

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    goto :goto_0

    :cond_4
    :goto_2
    monitor-exit v0

    return v2

    :cond_5
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isSingleLine()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    if-lez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, 0xff0

    if-eqz v0, :cond_4

    const/16 v3, 0x30

    if-eq v0, v3, :cond_4

    const/16 v3, 0x50

    if-eq v0, v3, :cond_4

    const/16 v3, 0x40

    if-eq v0, v3, :cond_4

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method isTextEditable()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextSelectable()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    :goto_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p5

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    iget v0, v14, Landroid/widget/TextView;->mMaximum:I

    iput v0, v14, Landroid/widget/TextView;->mOldMaximum:I

    iget v0, v14, Landroid/widget/TextView;->mMaxMode:I

    iput v0, v14, Landroid/widget/TextView;->mOldMaxMode:I

    const/4 v13, 0x1

    iput-boolean v13, v14, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-gez p1, :cond_0

    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_0

    :cond_0
    move/from16 v16, p1

    :goto_0
    if-gez p2, :cond_1

    const/4 v0, 0x0

    move/from16 v17, v0

    goto :goto_1

    :cond_1
    move/from16 v17, p2

    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v11

    iget-boolean v0, v14, Landroid/widget/TextView;->mSingleLine:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v14, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v11, v0, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v11, v0, :cond_3

    :cond_2
    move v0, v13

    goto :goto_2

    :cond_3
    move v0, v10

    :goto_2
    move/from16 v18, v0

    const/4 v0, 0x0

    if-eqz v18, :cond_4

    iget-object v1, v14, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    :cond_4
    move v9, v0

    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-nez v0, :cond_5

    move v5, v13

    goto :goto_3

    :cond_5
    move v5, v10

    :goto_3
    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_6

    iget v0, v14, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v0, :cond_6

    move v0, v13

    goto :goto_4

    :cond_6
    move v0, v10

    :goto_4
    move/from16 v19, v0

    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget-object v1, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_7

    iget v1, v14, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v13, :cond_7

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    :cond_7
    move-object v8, v0

    iget-object v0, v14, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_8
    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_9

    move v7, v13

    goto :goto_5

    :cond_9
    move v7, v10

    :goto_5
    move-object v0, v14

    move/from16 v1, v16

    move-object/from16 v2, p3

    move v3, v15

    move-object v4, v11

    move-object v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v19, :cond_c

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_a

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_6
    move-object v12, v0

    goto :goto_7

    :cond_a
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_6

    :goto_7
    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v0, :cond_b

    move v0, v13

    goto :goto_8

    :cond_b
    move v0, v10

    :goto_8
    move-object v6, v14

    move/from16 v7, v16

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    move v4, v9

    move v9, v15

    move v3, v10

    move-object v10, v11

    move-object v2, v11

    move v11, v5

    move v1, v13

    move v13, v0

    invoke-virtual/range {v6 .. v13}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    goto :goto_9

    :cond_c
    move-object/from16 v20, v8

    move v4, v9

    move v3, v10

    move-object v2, v11

    move v1, v13

    :goto_9
    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_a

    :cond_d
    move v0, v3

    :goto_a
    move v11, v0

    const/4 v0, 0x0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    if-eqz v11, :cond_e

    move/from16 v0, v16

    move v12, v0

    goto :goto_b

    :cond_e
    move/from16 v12, v17

    :goto_b
    sget-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v5, p4

    if-ne v5, v0, :cond_10

    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v6, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, v14, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v8, v14, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v6, v7, v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    if-eqz v0, :cond_f

    iput-object v0, v14, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_f
    move-object v13, v0

    goto :goto_c

    :cond_10
    move-object v13, v5

    :goto_c
    if-eqz v13, :cond_17

    iget v0, v13, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v12, :cond_14

    if-eqz v11, :cond_12

    iget v0, v13, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v15, :cond_11

    goto :goto_d

    :cond_11
    move v10, v1

    move-object/from16 v22, v2

    move/from16 v21, v4

    goto/16 :goto_f

    :cond_12
    :goto_d
    iget-object v0, v14, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_13

    iget-object v0, v14, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    iget-object v5, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v6, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, v14, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v14, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v1

    move-object v1, v5

    move-object v5, v2

    move-object v2, v6

    move v6, v3

    move v3, v12

    move/from16 v21, v4

    move-object v4, v5

    move-object/from16 v22, v5

    move v5, v7

    move v7, v6

    move v6, v8

    move v8, v7

    move-object v7, v13

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_e

    :cond_13
    move v10, v1

    move-object/from16 v22, v2

    move/from16 v21, v4

    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v1, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v14, Landroid/widget/TextView;->mSpacingMult:F

    iget v5, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v7, v14, Landroid/widget/TextView;->mIncludePad:Z

    move v2, v12

    move-object/from16 v3, v22

    move-object v6, v13

    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :goto_e
    iget-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, v14, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move/from16 v23, v11

    move v11, v10

    goto :goto_10

    :cond_14
    move v10, v1

    move-object/from16 v22, v2

    move/from16 v21, v4

    :goto_f
    if-eqz v11, :cond_16

    iget v0, v13, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v12, :cond_16

    iget-object v0, v14, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_15

    iget-object v0, v14, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    iget-object v1, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v2, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v14, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v8, v14, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v9, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move v3, v12

    move-object/from16 v4, v22

    move-object v7, v13

    move/from16 v23, v11

    move v11, v10

    move v10, v15

    invoke-virtual/range {v0 .. v10}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_10

    :cond_15
    move/from16 v23, v11

    move v11, v10

    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v1, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v14, Landroid/widget/TextView;->mSpacingMult:F

    iget v5, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v7, v14, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v8, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move v2, v12

    move-object/from16 v3, v22

    move-object v6, v13

    move v9, v15

    invoke-static/range {v0 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_10

    :cond_16
    move/from16 v23, v11

    move v11, v10

    goto :goto_10

    :cond_17
    move-object/from16 v22, v2

    move/from16 v21, v4

    move/from16 v23, v11

    move v11, v1

    :goto_10
    iget-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_1a

    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v1, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v2, v14, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget v4, v14, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v0, v2, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-boolean v2, v14, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-boolean v2, v14, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mJustificationMode:I

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mMaxMode:I

    if-ne v2, v11, :cond_18

    iget v2, v14, Landroid/widget/TextView;->mMaximum:I

    goto :goto_11

    :cond_18
    const v2, 0x7fffffff

    :goto_11
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v23, :cond_19

    iget-object v2, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    :cond_19
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_12

    :cond_1a
    move-object/from16 v1, v22

    const/4 v3, 0x0

    goto :goto_12

    :cond_1b
    move-object/from16 v5, p4

    move/from16 v21, v4

    move/from16 v23, v11

    move v11, v1

    move-object v1, v2

    move-object v13, v5

    move/from16 v12, v17

    :goto_12
    if-nez p6, :cond_1d

    if-eqz v18, :cond_1c

    iget-object v2, v14, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v3, v21

    if-eq v3, v2, :cond_1e

    goto :goto_13

    :cond_1c
    move/from16 v3, v21

    goto :goto_14

    :cond_1d
    move/from16 v3, v21

    :goto_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_1e
    :goto_14
    iget-object v2, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v4, :cond_20

    int-to-float v2, v15

    invoke-direct {v14, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v14, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v2, v4, :cond_1f

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_15

    :cond_1f
    iput-boolean v11, v14, Landroid/widget/TextView;->mRestartMarquee:Z

    :cond_20
    :goto_15
    iget-object v2, v14, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_21

    iget-object v2, v14, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_21
    return-void
.end method

.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v11, p6

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->useDynamicLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2, v12}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setDisplayText(Ljava/lang/CharSequence;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget v3, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v1, v2, v3}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setIncludePad(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setBreakStrategy(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setHyphenationFrequency(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mJustificationMode:I

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setJustificationMode(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v11

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v15

    nop

    move-object/from16 v16, p2

    goto/16 :goto_3

    :cond_1
    sget-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v2, p2

    if-ne v2, v1, :cond_3

    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v1, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_2
    move-object v10, v1

    goto :goto_1

    :cond_3
    move-object v10, v2

    :goto_1
    if-eqz v10, :cond_9

    iget v1, v10, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v12, :cond_7

    if-eqz v11, :cond_4

    iget v1, v10, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v13, :cond_7

    :cond_4
    if-eqz p7, :cond_5

    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v4, v12

    move-object v5, v14

    move-object v8, v10

    invoke-virtual/range {v1 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v8, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v3, v12

    move-object v4, v14

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    :goto_2
    move-object v15, v1

    if-eqz p7, :cond_6

    move-object v1, v15

    check-cast v1, Landroid/text/BoringLayout;

    iput-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    :cond_6
    move-object/from16 v16, v10

    goto :goto_3

    :cond_7
    if-eqz p5, :cond_9

    iget v1, v10, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v12, :cond_9

    if-eqz p7, :cond_8

    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v4, v12

    move-object v5, v14

    move-object v8, v10

    move-object/from16 v16, v10

    move-object v10, v11

    move v11, v13

    invoke-virtual/range {v1 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    goto :goto_3

    :cond_8
    move-object/from16 v16, v10

    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v8, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v3, v12

    move-object v4, v14

    move-object/from16 v7, v16

    move-object/from16 v9, p6

    move v10, v13

    invoke-static/range {v1 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    goto :goto_3

    :cond_9
    move-object/from16 v16, v10

    :goto_3
    if-nez v15, :cond_c

    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2, v3, v4, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget v3, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mJustificationMode:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_4

    :cond_a
    const v2, 0x7fffffff

    :goto_4
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    if-eqz p5, :cond_b

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    goto :goto_5

    :cond_b
    move-object/from16 v2, p6

    :goto_5
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v15

    goto :goto_6

    :cond_c
    move-object/from16 v2, p6

    :goto_6
    return-object v15
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    iget-object v5, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    iget v7, v0, Landroid/widget/TextView;->mBottom:I

    iget v8, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v6, v5

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v7, 0x4

    if-le v8, v9, :cond_2

    div-int/lit8 v8, v7, 0x4

    :cond_2
    iget v9, v0, Landroid/widget/TextView;->mScrollY:I

    add-int v10, v9, v8

    if-ge v5, v10, :cond_3

    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int v11, v9, v8

    sub-int v12, v6, v5

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    goto :goto_0

    :cond_3
    add-int v10, v7, v9

    sub-int/2addr v10, v8

    if-le v6, v10, :cond_4

    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int v11, v7, v9

    sub-int/2addr v11, v8

    sub-int v12, v6, v5

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    :cond_4
    :goto_0
    iget v10, v0, Landroid/widget/TextView;->mRight:I

    iget v11, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/widget/TextView;->mScrollX:I

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    int-to-float v13, v11

    invoke-virtual {v12, v4, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v12

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int v14, v10, v11

    int-to-float v14, v14

    invoke-virtual {v13, v4, v14}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v13

    if-ge v12, v13, :cond_5

    move v14, v12

    goto :goto_1

    :cond_5
    move v14, v13

    :goto_1
    if-le v12, v13, :cond_6

    move v15, v12

    goto :goto_2

    :cond_6
    move v15, v13

    :goto_2
    move/from16 v16, v1

    move/from16 v2, v16

    if-ge v2, v14, :cond_7

    move/from16 v16, v14

    :goto_3
    move/from16 v2, v16

    goto :goto_4

    :cond_7
    if-le v2, v15, :cond_8

    move/from16 v16, v15

    goto :goto_3

    :cond_8
    :goto_4
    if-eq v2, v1, :cond_9

    move/from16 v17, v1

    iget-object v1, v0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v1, 0x1

    return v1

    :cond_9
    move/from16 v17, v1

    const/4 v1, 0x0

    return v1
.end method

.method public nullLayouts()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const-string v0, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mFontFamily:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iget v1, p0, Landroid/widget/TextView;->mOneplusfont:I

    if-eq v0, v1, :cond_2

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iput v0, p0, Landroid/widget/TextView;->mOneplusfont:I

    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iget-object v1, p0, Landroid/widget/TextView;->mFontFamily:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_1
    const-string v1, "TextView"

    const-string v2, "Typeface is null when changing font."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [I

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int v5, v1, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    :goto_0
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x8000000

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_2
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_4

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    :cond_3
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_4
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    return-object v0

    :cond_6
    return-object v1
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    :cond_0
    return v2

    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    return v2

    :pswitch_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v11

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    iget v13, v0, Landroid/widget/TextView;->mScrollY:I

    iget v14, v0, Landroid/widget/TextView;->mRight:I

    iget v15, v0, Landroid/widget/TextView;->mLeft:I

    iget v6, v0, Landroid/widget/TextView;->mBottom:I

    iget v5, v0, Landroid/widget/TextView;->mTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v17

    const/4 v4, 0x0

    if-eqz v16, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move/from16 v1, v17

    :goto_0
    move/from16 v18, v1

    if-eqz v16, :cond_1

    move/from16 v1, v17

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    move/from16 v19, v1

    iget-object v3, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v3, :cond_5

    sub-int v20, v6, v5

    sub-int v20, v20, v11

    sub-int v20, v20, v9

    sub-int v21, v14, v15

    sub-int v21, v21, v10

    sub-int v21, v21, v8

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    const/16 v23, 0x2

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v1, v12

    add-int v1, v1, v18

    int-to-float v1, v1

    add-int v24, v13, v9

    iget v2, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v2, v20, v2

    div-int/lit8 v2, v2, 0x2

    add-int v2, v24, v2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v23

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v1, v12, v14

    sub-int/2addr v1, v15

    iget v2, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v1, v2

    sub-int v1, v1, v19

    int-to-float v1, v1

    add-int v2, v13, v9

    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v4, v20, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v23

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v1, v12, v8

    iget v2, v3, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v2, v21, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v1, v12, v8

    iget v2, v3, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v2, v21, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-int v2, v13, v6

    sub-int/2addr v2, v5

    iget v4, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v2, v4

    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    iget v1, v0, Landroid/widget/TextView;->mCurTextColor:I

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_6
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v4, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_7

    iget v1, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    :cond_7
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_8
    move v4, v1

    iget-object v1, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v27, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v21

    iget v1, v0, Landroid/widget/TextView;->mBottom:I

    iget v3, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v11

    sub-int v23, v1, v9

    iget-object v1, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    sub-int v3, v1, v23

    add-int v1, v8, v12

    int-to-float v1, v1

    move/from16 v28, v9

    if-nez v13, :cond_9

    const/4 v9, 0x0

    goto :goto_2

    :cond_9
    add-int v9, v20, v13

    int-to-float v9, v9

    :goto_2
    sub-int v24, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v29

    sub-int v24, v24, v29

    move/from16 v30, v4

    add-int v4, v24, v12

    int-to-float v4, v4

    sub-int v24, v6, v5

    add-int v24, v24, v13

    if-ne v13, v3, :cond_a

    const/16 v29, 0x0

    goto :goto_3

    :cond_a
    move/from16 v29, v21

    :goto_3
    move/from16 v31, v3

    sub-int v3, v24, v29

    int-to-float v3, v3

    move/from16 v32, v5

    iget v5, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v33, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_b

    iget v5, v0, Landroid/widget/TextView;->mShadowDx:F

    move/from16 v34, v10

    iget v10, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v5, v10

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v1, v5

    iget v5, v0, Landroid/widget/TextView;->mShadowDx:F

    iget v10, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v5, v10

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v0, Landroid/widget/TextView;->mShadowDy:F

    iget v10, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v5, v10

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v9, v5

    iget v5, v0, Landroid/widget/TextView;->mShadowDy:F

    iget v10, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v5, v10

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v3, v5

    move v5, v3

    move v6, v4

    move v10, v9

    move v9, v1

    goto :goto_4

    :cond_b
    move/from16 v34, v10

    move v5, v3

    move v6, v4

    move v10, v9

    move v9, v1

    :goto_4
    invoke-virtual {v7, v9, v10, v6, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    move/from16 v35, v1

    const/16 v1, 0x30

    if-eq v4, v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v3

    move/from16 v24, v3

    move/from16 v35, v4

    goto :goto_5

    :cond_c
    move/from16 v24, v3

    :goto_5
    int-to-float v1, v8

    add-int v3, v20, v35

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    iget v1, v0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v29

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_d

    and-int/lit8 v1, v29, 0x7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_d

    iget v1, v0, Landroid/widget/TextView;->mRight:I

    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v22

    add-int v3, v3, v22

    move/from16 v36, v4

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v37, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    sub-int v5, v1, v3

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move/from16 v38, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    const/4 v5, 0x0

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_d
    move/from16 v36, v4

    move/from16 v37, v5

    :goto_6
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v1

    neg-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    goto :goto_7

    :cond_f
    move/from16 v36, v4

    move/from16 v37, v5

    const/4 v4, 0x0

    :goto_7
    sub-int v5, v24, v35

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_10

    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v39, v5

    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v40, v2

    move-object v2, v7

    move-object/from16 v41, v3

    move-object/from16 v22, v27

    move/from16 v25, v31

    move-object/from16 v3, v40

    move/from16 v42, v8

    move/from16 v26, v30

    move/from16 v27, v36

    move v8, v4

    move-object/from16 v4, v41

    move/from16 v30, v32

    move/from16 v31, v37

    move/from16 v43, v39

    move/from16 v32, v33

    move/from16 v33, v6

    move/from16 v6, v43

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    move-object/from16 v4, v40

    move-object/from16 v3, v41

    move/from16 v2, v43

    goto :goto_8

    :cond_10
    move-object/from16 v40, v2

    move-object/from16 v41, v3

    move/from16 v43, v5

    move/from16 v42, v8

    move-object/from16 v22, v27

    move/from16 v26, v30

    move/from16 v25, v31

    move/from16 v30, v32

    move/from16 v32, v33

    move/from16 v27, v36

    move/from16 v31, v37

    move v8, v4

    move/from16 v33, v6

    iget-object v1, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v4, v40

    move/from16 v2, v43

    invoke-virtual {v4, v7, v3, v1, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_8
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x0

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v3, v5, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onEditorAction(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :goto_0
    if-eqz v2, :cond_9

    iget-object v4, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v4, v0, v1, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v3, 0x7

    if-ne v1, v3, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_8
    return-void

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v18, 0x16

    move-object v4, v15

    move-wide/from16 v5, v16

    move-wide/from16 v7, v16

    move-object v0, v15

    move/from16 v15, v18

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/16 v15, 0x16

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    :cond_a
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 0

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/high16 v2, 0x10000000

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040603

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_7
    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v2

    instance-of v5, v4, Landroid/text/InputFilter$LengthFilter;

    if-eqz v5, :cond_8

    move-object v5, v4

    check-cast v5, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v5}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    add-int/2addr p2, v3

    invoke-static {p3, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    if-ne v1, v2, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v5, p0, v6, p1, v4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    :goto_0
    add-int/2addr p2, v3

    if-lez p2, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v5, p0, v6, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v5, p0, v6, p1, v4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v6, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v5, p0, v6, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_1
    add-int/2addr p2, v3

    if-lez p2, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v6, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v5, p0, v6, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v6, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v5, p0, v6, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return v2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    const/16 v1, 0x36

    const/16 v2, 0x32

    if-eqz v0, :cond_6

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    const/16 v0, 0x34

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x1020032

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_5
    :goto_0
    goto :goto_1

    :cond_6
    const/16 v0, 0x1001

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x1020033

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x1020031

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_9
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    const/16 v0, 0x17

    if-eq p1, v0, :cond_b

    const/16 v0, 0x42

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v0, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v0, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_8
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    return-void
.end method

.method onLocaleChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onLocaleChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 32

    move-object/from16 v7, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sget-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget-object v2, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v12, -0x80000000

    if-ne v8, v12, :cond_1

    int-to-float v4, v10

    :goto_0
    move/from16 v18, v4

    goto :goto_1

    :cond_1
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :goto_1
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v8, v6, :cond_2

    move v4, v10

    move-object v14, v0

    move-object v15, v1

    move v6, v2

    move/from16 v16, v3

    move v13, v4

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_2
    iget-object v4, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_3

    iget-object v4, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v4, :cond_3

    iget-object v4, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v4}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v2

    :cond_3
    if-gez v2, :cond_4

    iget-object v4, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v13, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v14, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v15, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v4, v13, v14, v15}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v0, v4, :cond_6

    goto :goto_3

    :cond_6
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_4

    :cond_7
    :goto_3
    if-gez v2, :cond_8

    iget-object v13, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v14, 0x0

    iget-object v4, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v15

    iget-object v4, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    invoke-static/range {v13 .. v18}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v4

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v2, v13

    :cond_8
    move v4, v2

    :goto_4
    nop

    iget-object v6, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v6, :cond_9

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_9
    iget-object v13, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v13, :cond_f

    const/4 v13, -0x1

    iget-object v14, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v14, :cond_a

    iget-object v14, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v14, :cond_a

    iget-object v14, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v14}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v13

    :cond_a
    if-gez v13, :cond_b

    iget-object v14, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v15, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v12, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v14, v15, v12, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    if-eqz v1, :cond_b

    iput-object v1, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_b
    if-eqz v1, :cond_d

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v1, v5, :cond_c

    goto :goto_5

    :cond_c
    iget v5, v1, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_6

    :cond_d
    :goto_5
    if-gez v13, :cond_e

    iget-object v5, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    const/16 v22, 0x0

    iget-object v12, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v23

    iget-object v12, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v14, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v14

    move/from16 v26, v18

    invoke-static/range {v21 .. v26}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v5

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    :cond_e
    move v5, v13

    :goto_6
    nop

    if-le v5, v4, :cond_f

    move v4, v5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    add-int/2addr v5, v12

    add-int/2addr v4, v5

    iget v5, v7, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v12, 0x1

    if-ne v5, v12, :cond_10

    iget v5, v7, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v12

    mul-int/2addr v5, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_7

    :cond_10
    iget v5, v7, Landroid/widget/TextView;->mMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_7
    iget v5, v7, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v12, 0x1

    if-ne v5, v12, :cond_11

    iget v5, v7, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v13

    mul-int/2addr v5, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_8

    :cond_11
    iget v5, v7, Landroid/widget/TextView;->mMinWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v8, v5, :cond_12

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_12
    move-object v14, v0

    move-object v15, v1

    move v6, v2

    move/from16 v16, v3

    move v13, v4

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v5, v0

    iget-boolean v1, v7, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v1, :cond_13

    const/high16 v0, 0x100000

    :cond_13
    move v4, v0

    move v3, v4

    iget-object v0, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_14

    move v0, v3

    goto :goto_a

    :cond_14
    iget-object v0, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    :goto_a
    move v2, v0

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    sub-int v17, v0, v17

    const/16 v20, 0x0

    move-object v0, v7

    move v12, v1

    move v1, v4

    move v12, v2

    move v2, v3

    move/from16 v27, v3

    move-object v3, v14

    move/from16 v28, v4

    move-object v4, v15

    move/from16 v29, v8

    move/from16 v30, v10

    const/4 v10, 0x1

    move v8, v5

    move/from16 v5, v17

    move v10, v6

    move/from16 v31, v8

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    move/from16 v23, v27

    move/from16 v21, v28

    goto/16 :goto_12

    :cond_15
    move v12, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v31, v5

    move/from16 v29, v8

    move/from16 v30, v10

    const/high16 v8, 0x40000000    # 2.0f

    move v10, v6

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move/from16 v6, v28

    if-ne v0, v6, :cond_17

    move/from16 v5, v27

    if-ne v12, v5, :cond_18

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int v1, v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_16

    goto :goto_b

    :cond_16
    const/4 v0, 0x0

    goto :goto_c

    :cond_17
    move/from16 v5, v27

    :cond_18
    :goto_b
    const/4 v0, 0x1

    :goto_c
    move/from16 v17, v0

    iget-object v0, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v0, :cond_1a

    iget-object v0, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_1a

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    if-le v6, v0, :cond_1a

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-nez v0, :cond_19

    if-eqz v16, :cond_1a

    if-ltz v10, :cond_1a

    if-gt v10, v6, :cond_1a

    :cond_19
    const/4 v0, 0x1

    goto :goto_d

    :cond_1a
    const/4 v0, 0x0

    :goto_d
    move/from16 v19, v0

    iget v0, v7, Landroid/widget/TextView;->mMaxMode:I

    iget v1, v7, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v0, v1, :cond_1c

    iget v0, v7, Landroid/widget/TextView;->mMaximum:I

    iget v1, v7, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v0, v1, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v0, 0x0

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v0, 0x1

    :goto_f
    move/from16 v20, v0

    if-nez v17, :cond_1e

    if-eqz v20, :cond_1d

    goto :goto_11

    :cond_1d
    :goto_10
    move/from16 v23, v5

    move/from16 v21, v6

    goto :goto_12

    :cond_1e
    :goto_11
    if-nez v20, :cond_1f

    if-eqz v19, :cond_1f

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v6}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto :goto_10

    :cond_1f
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v21, v0, v1

    const/16 v22, 0x0

    move-object v0, v7

    move v1, v6

    move v2, v5

    move-object v3, v14

    move-object v4, v15

    move/from16 v23, v5

    move/from16 v5, v21

    move/from16 v21, v6

    move/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :goto_12
    if-ne v9, v8, :cond_20

    move v0, v11

    const/4 v1, -0x1

    iput v1, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    goto :goto_13

    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    move v1, v0

    iput v0, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/high16 v2, -0x80000000

    if-ne v9, v2, :cond_21

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_13

    :cond_21
    move v0, v1

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    iget-object v2, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    iget v3, v7, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v3, :cond_22

    iget-object v2, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v3, v7, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_22
    iget-object v2, v7, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_24

    iget-object v2, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v3, v31

    if-gt v2, v3, :cond_25

    iget-object v2, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    if-le v2, v1, :cond_23

    goto :goto_14

    :cond_23
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_15

    :cond_24
    move/from16 v3, v31

    :cond_25
    :goto_14
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :goto_15
    invoke-virtual {v7, v13, v0}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_2
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3
    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->refreshTextActionMode()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V

    return-void
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V

    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    :cond_1
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 6

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v3, v2, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    array-length v4, v3

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v5, 0x3ea

    invoke-static {v4, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v1, 0x3f0

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    instance-of v0, p1, Landroid/widget/TextView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView$SavedState;

    invoke-virtual {v0}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v1, v0, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v1, :cond_5

    iget v1, v0, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, v0, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v2, v1, :cond_3

    iget v2, v0, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v2, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    iget v3, v0, Landroid/widget/TextView$SavedState;->selStart:I

    iget v4, v0, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-boolean v2, v0, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, ""

    iget-object v3, v0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    const-string v2, "(restored) "

    :cond_4
    const-string v3, "TextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved cursor position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " out of range for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "text "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_5
    :goto_1
    iget-object v1, v0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    new-instance v2, Landroid/widget/TextView$1;

    invoke-direct {v2, p0, v1}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v1, v0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v1, v2}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    :cond_7
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getFreezesText()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-gez v3, :cond_0

    if-ltz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    new-instance v5, Landroid/widget/TextView$SavedState;

    invoke-direct {v5, v0}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    if-eqz v1, :cond_6

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v6, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_4
    iput-object v6, v5, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_5
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    iput v3, v5, Landroid/widget/TextView$SavedState;->selStart:I

    iput v4, v5, Landroid/widget/TextView$SavedState;->selEnd:I

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_8

    if-ltz v3, :cond_8

    if-ltz v4, :cond_8

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    :cond_9
    return-object v5
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    const v2, 0x1020043

    const/4 v4, 0x1

    if-eq p1, v2, :cond_7

    const v2, 0x104022a

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v3

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    return v4

    :pswitch_1
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->replace()V

    :cond_1
    return v4

    :pswitch_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->redo()V

    :cond_2
    return v4

    :pswitch_3
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->undo()V

    :cond_3
    return v4

    :pswitch_4
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/TextView;->paste(IIZ)V

    return v4

    :pswitch_5
    invoke-direct {p0, v0, v1, v4}, Landroid/widget/TextView;->paste(IIZ)V

    return v4

    :pswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return v4

    :pswitch_7
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    return v4

    :pswitch_8
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    :cond_6
    return v4

    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->requestAutofill()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020031
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, v2, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->startInsertionActionMode()V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, v2, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    :cond_1
    return v1

    :cond_2
    if-ne v0, v2, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v7, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v6, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v6

    if-eqz v3, :cond_7

    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v7, :cond_7

    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    iget-object v7, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    const-class v10, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    array-length v8, v7

    if-lez v8, :cond_7

    aget-object v8, v7, v4

    invoke-virtual {v8, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v5, 0x1

    :cond_7
    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v6, :cond_a

    :cond_8
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v8, v8, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v8, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_9
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    const/4 v5, 0x1

    :cond_a
    if-eqz v5, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x10

    if-eq p1, v0, :cond_17

    const/16 v0, 0x100

    if-eq p1, v0, :cond_16

    const/16 v0, 0x200

    if-eq p1, v0, :cond_16

    const/16 v0, 0x4000

    const/4 v2, 0x0

    if-eq p1, v0, :cond_14

    const v0, 0x8000

    if-eq p1, v0, :cond_12

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_10

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x10000000

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1020035

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v2

    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_9

    return v2

    :cond_9
    const/4 v3, -0x1

    if-eqz p2, :cond_a

    const-string v4, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    :cond_a
    move v4, v3

    :goto_2
    if-eqz p2, :cond_b

    const-string v5, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_3

    :cond_b
    move v5, v3

    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-ne v6, v4, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-eq v6, v5, :cond_f

    :cond_c
    if-ne v4, v5, :cond_d

    if-ne v5, v3, :cond_d

    move-object v2, v0

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return v1

    :cond_d
    if-ltz v4, :cond_f

    if-gt v4, v5, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v5, v3, :cond_f

    move-object v3, v0

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, v2}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    :cond_e
    return v1

    :cond_f
    return v2

    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    return v2

    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    return v2

    :cond_14
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    return v2

    :cond_16
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_17
    invoke-direct {p0, p2}, Landroid/widget/TextView;->performAccessibilityActionClick(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v3, v2, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    :cond_0
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, v2, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    :cond_2
    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v3, v2, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v3, 0x275

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_5
    :goto_0
    return v0
.end method

.method public populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    iget-object v5, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    move v6, v4

    :goto_0
    if-gt v6, v5, :cond_a

    iget-object v7, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    iget-object v8, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    move v11, v12

    sub-int v12, v10, v9

    new-array v12, v12, [F

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v13}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    iget-object v14, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14, v9, v10, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v13, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v14, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v14

    int-to-float v14, v14

    move v15, v9

    :goto_2
    move/from16 v23, v15

    move/from16 v1, v23

    if-ge v1, v10, :cond_9

    sub-int v23, v1, v9

    aget v15, v12, v23

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    move/from16 v24, v4

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    move/from16 v25, v5

    iget-object v5, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v5

    if-eqz v11, :cond_2

    if-eqz v2, :cond_1

    sub-float v16, v5, v15

    move/from16 v17, v5

    :goto_3
    move/from16 v23, v16

    goto :goto_4

    :cond_1
    move/from16 v16, v4

    add-float v17, v4, v15

    goto :goto_3

    :cond_2
    if-nez v2, :cond_3

    move/from16 v16, v5

    add-float v17, v5, v15

    goto :goto_3

    :cond_3
    sub-float v16, v4, v15

    move/from16 v17, v4

    goto :goto_3

    :goto_4
    move/from16 v26, v17

    move/from16 v27, v4

    add-float v4, v23, p4

    move/from16 v28, v5

    add-float v5, v26, p4

    add-float v3, v13, p5

    move/from16 v29, v7

    add-float v7, v14, p5

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v30

    nop

    invoke-virtual {v0, v5, v7}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v31

    const/16 v16, 0x0

    if-nez v30, :cond_4

    if-eqz v31, :cond_5

    :cond_4
    or-int/lit8 v16, v16, 0x1

    :cond_5
    if-eqz v30, :cond_6

    if-nez v31, :cond_7

    :cond_6
    or-int/lit8 v16, v16, 0x2

    :cond_7
    if-eqz v2, :cond_8

    or-int/lit8 v16, v16, 0x4

    :cond_8
    move/from16 v32, v16

    move-object/from16 v16, p1

    move/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v32

    invoke-virtual/range {v16 .. v22}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    add-int/lit8 v15, v1, 0x1

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v7, v29

    move/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_2

    :cond_9
    move/from16 v24, v4

    move/from16 v25, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_0

    :cond_a
    move/from16 v24, v4

    move/from16 v25, v5

    return-void
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    const-class v1, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v1, v3

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, p1, :cond_1

    if-ne v4, p1, :cond_2

    :cond_1
    invoke-static {v0, p1, p1, v4, v5}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v1, v3

    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 4

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/SuggestionSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    nop

    :goto_0
    move v1, v2

    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/SuggestionSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    array-length v2, v1

    if-nez v2, :cond_1

    return-object p1

    :cond_1
    move-object p1, v0

    nop

    :goto_1
    move v2, v3

    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public requestActionMode(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ltz v0, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0, v2}, Landroid/widget/Editor;->startLinkActionModeAsync(II)V

    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    return-void
.end method

.method selectAllText()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-lez v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1

    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    nop

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->notifyAutoFillManagerAfterTextChangedIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p2, p3, p4}, Landroid/widget/Editor;->sendOnTextChanged(III)V

    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_2
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p1

    invoke-static {p4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    int-to-float v2, p2

    invoke-static {p4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    int-to-float v3, p3

    invoke-static {p4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    new-array v2, v0, [I

    if-nez p2, :cond_0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    nop

    :goto_0
    if-ge v1, v0, :cond_1

    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "None of the preset sizes is valid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->clearAutoSizeConfiguration()V

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBreakStrategy(I)V
    .locals 1

    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_0

    if-eqz v0, :cond_2

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :cond_2
    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_8

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    move-result v5

    if-nez v5, :cond_5

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto/16 :goto_6

    :cond_5
    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    sub-int/2addr v5, v3

    :goto_2
    move v3, v5

    if-ltz v3, :cond_7

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v3

    add-int/lit8 v5, v3, -0x1

    goto :goto_2

    :cond_7
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_6

    :cond_8
    if-nez v0, :cond_9

    new-instance v5, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_9
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v2, v5, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    if-eq v5, p1, :cond_a

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    if-eqz v5, :cond_a

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v5, v2

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    if-eq v5, p2, :cond_b

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    if-eqz v5, :cond_b

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_b
    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v5, v3

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    if-eq v3, p3, :cond_c

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_c

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p3, v3, v5

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    if-eq v3, p4, :cond_d

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_d

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_e

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_3

    :cond_e
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :goto_3
    if-eqz p3, :cond_f

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_4

    :cond_f
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_4
    if-eqz p2, :cond_10

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    goto :goto_5

    :cond_10
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    :goto_5
    if-eqz p4, :cond_11

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto :goto_6

    :cond_11
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    :cond_12
    :goto_6
    if-eqz v0, :cond_13

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v1

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v4

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_2
    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x3

    if-nez v4, :cond_a

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    move-result v6

    if-nez v6, :cond_5

    iput-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto/16 :goto_5

    :cond_5
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eqz v6, :cond_7

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v3

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_9

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_9
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v5

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_5

    :cond_a
    if-nez v0, :cond_b

    new-instance v6, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_b
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v3, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v6, p1, :cond_c

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eq v6, p2, :cond_d

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eqz v6, :cond_d

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v6, v3

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v3, p3, :cond_e

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_e
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eq v3, p4, :cond_f

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_f

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v2, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_10

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    goto :goto_2

    :cond_10
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    :goto_2
    if-eqz p3, :cond_11

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    goto :goto_3

    :cond_11
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :goto_3
    if-eqz p2, :cond_12

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    goto :goto_4

    :cond_12
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    :goto_4
    if-eqz p4, :cond_13

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto :goto_5

    :cond_13
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    :cond_14
    :goto_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz p4, :cond_3

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    :cond_3
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz p4, :cond_3

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    :cond_3
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    :cond_3
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x108050a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    if-nez v6, :cond_0

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-ltz v2, :cond_2

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    move v7, v0

    move v8, v1

    invoke-static {v6, v7, v8}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    invoke-interface {v6, v7, v8}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    sub-int v2, v8, v7

    const-class v3, Ljava/lang/Object;

    move-object v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v6, v7, v8, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-gez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    if-le v2, v1, :cond_6

    move v2, v1

    :cond_6
    :goto_1
    iget v3, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    if-le v3, v1, :cond_8

    move v3, v1

    :cond_8
    :goto_2
    invoke-static {v0, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3

    :cond_9
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    :goto_3
    iget-object v4, p1, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/widget/TextView;->setHintInternal(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_1
    return-void
.end method

.method public setFallbackLineSpacing(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_1

    neg-int v2, v1

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method protected setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 9

    const v0, 0x800007

    and-int v1, p1, v0

    if-nez v1, :cond_0

    const v1, 0x800003

    or-int/2addr p1, v1

    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    const/4 v1, 0x0

    and-int v2, p1, v0

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v0, v3

    if-eq v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    :goto_1
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v7, v2, v3

    const/4 v8, 0x1

    move-object v2, p0

    move v3, v0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_5
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setHintInternal(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_0
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1

    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    return-void
.end method

.method public setImeHintLocales(Landroid/os/LocaleList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    iget-boolean v0, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/TextView;->changeListenerLocaleTo(Ljava/util/Locale;)V

    :cond_1
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v8

    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    :cond_4
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v2, v0, :cond_5

    if-eqz v10, :cond_6

    :cond_5
    xor-int/lit8 v2, v8, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public setJustificationMode(I)V
    .locals 1

    iput p1, p0, Landroid/widget/TextView;->mJustificationMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mListenerChanged:Z

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    invoke-direct {p0}, Landroid/widget/TextView;->setInputTypeFromEditor()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_1

    sub-int v2, p1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineHeight(I)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int v1, p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    iput p1, p0, Landroid/widget/TextView;->mTextId:I

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    iput p1, p0, Landroid/widget/TextView;->mTextId:I

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$202(Landroid/widget/TextView$CharWrapper;[C)[C

    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-direct {p0, v1, v2, v2, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v3, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v3, v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView$TextAppearanceAttributes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/TextView$TextAppearanceAttributes;-><init>(Landroid/widget/TextView$1;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, v1}, Landroid/widget/TextView;->applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V

    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setTextIsSelectable(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-gez v0, :cond_0

    if-ltz v1, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextMetricsParams(Landroid/text/PrecomputedText$Params;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->setTextSizeInternal(IFZ)V

    :cond_0
    return-void
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, p1, Landroid/text/method/TransformationMethod2;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/text/method/TransformationMethod2;

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    iget-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v2}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    :goto_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    not-int v3, v2

    and-int/2addr v3, p2

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    nop

    :cond_3
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWidth(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-virtual {v0, v1, v1}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->showContextMenu(FF)Z

    move-result v0

    return v0
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :goto_0
    sget-object v4, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v4, :cond_2

    const/4 v0, 0x1

    move v2, p4

    if-gez p3, :cond_1

    if-ltz p4, :cond_2

    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {p0, v4, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->makeBlink()V

    :cond_2
    sget-object v4, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v4, :cond_4

    const/4 v0, 0x1

    move v1, p4

    if-gez p3, :cond_3

    if-ltz p4, :cond_4

    :cond_3
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {p0, v4, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    :cond_4
    const/4 v4, 0x1

    if-eqz v0, :cond_9

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_9

    if-gez v1, :cond_6

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    :cond_6
    if-gez v2, :cond_7

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    :cond_7
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->refreshTextActionMode()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setHasTransientState(Z)V

    :cond_8
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    :cond_9
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_a

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-nez v5, :cond_a

    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_f

    :cond_a
    if-eqz v3, :cond_c

    iget v5, v3, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    iput-boolean v4, v3, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_2

    :cond_c
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    :goto_2
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_f

    if-ltz p3, :cond_d

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_d
    if-ltz p4, :cond_e

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_e
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    :cond_f
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v3, :cond_10

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iput-boolean v4, v3, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    :cond_10
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_13

    if-eqz v3, :cond_12

    iget v5, v3, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_11

    goto :goto_3

    :cond_11
    iput-boolean v4, v3, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_4

    :cond_12
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_13
    :goto_4
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_18

    if-eqz v3, :cond_18

    iget-object v5, v3, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_18

    iget v5, v3, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_17

    if-ltz p3, :cond_15

    iget v4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v4, p3, :cond_14

    iput p3, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_14
    iget v4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v4, p5, :cond_15

    iput p5, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_15
    if-ltz p4, :cond_18

    iget v4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v4, p4, :cond_16

    iput p4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_16
    iget v4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v4, p6, :cond_18

    iput p6, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    goto :goto_5

    :cond_17
    iput-boolean v4, v3, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    :cond_18
    :goto_5
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_19

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v4, :cond_19

    if-gez p4, :cond_19

    instance-of v4, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v4, :cond_19

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    move-object v5, p2

    check-cast v5, Landroid/text/style/SpellCheckSpan;

    invoke-virtual {v4, v5}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    :cond_19
    return-void
.end method

.method protected stopTextActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_0
    return-void
.end method

.method protected supportsAutoSizeText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method textCanBeSelected()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

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

    :cond_3
    :goto_2
    return v1
.end method

.method updateAfterEdit()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3
    return-void
.end method

.method public useDynamicLayout()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPrecomputed:Landroid/text/PrecomputedText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesNoOpTextClassifier()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-ne p1, v4, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
