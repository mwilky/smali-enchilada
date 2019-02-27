.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$HandleType;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$MagnifierMotionAnimator;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$TextActionMode;,
        Landroid/widget/Editor$MagnifierHandleTrigger;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static final DEBUG_UNDO:Z = false

.field private static final DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x14

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final FLAG_USE_MAGNIFIER:Z = true

.field public static final HANDLE_TYPE_SELECTION_END:I = 0x1

.field public static final HANDLE_TYPE_SELECTION_START:I = 0x0

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MENU_ITEM_ORDER_ASSIST:I = 0x0

.field private static final MENU_ITEM_ORDER_AUTOFILL:I = 0xa

.field private static final MENU_ITEM_ORDER_COPY:I = 0x5

.field private static final MENU_ITEM_ORDER_CUT:I = 0x4

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x6

.field private static final MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0xb

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64

.field private static final MENU_ITEM_ORDER_REDO:I = 0x3

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final MENU_ITEM_ORDER_SECONDARY_ASSIST_ACTIONS_START:I = 0x32

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x7

.field private static final MENU_ITEM_ORDER_UNDO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TAP_STATE_DOUBLE_TAP:I = 0x2

.field private static final TAP_STATE_FIRST_TAP:I = 0x1

.field private static final TAP_STATE_INITIAL:I = 0x0

.field private static final TAP_STATE_TRIPLE_CLICK:I = 0x3

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1


# instance fields
.field mAllowUndo:Z

.field private mBlink:Landroid/widget/Editor$Blink;

.field private mContextMenuAnchorX:F

.field private mContextMenuAnchorY:F

.field private mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field private final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field mDrawableForCursor:Landroid/graphics/drawable/Drawable;

.field mError:Ljava/lang/CharSequence;

.field private mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field private final mHapticTextHandleEnabled:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsBeingLongClicked:Z

.field mIsInsertionActionModeStartPending:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field private mLastButtonState:I

.field private mLastDownPositionX:F

.field private mLastDownPositionY:F

.field private mLastTouchUpTime:J

.field private mLastUpPositionX:F

.field private mLastUpPositionY:F

.field private final mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

.field private final mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreserveSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private mRenderCursorRegardlessTiming:Z

.field private mRequestingLinkActionMode:Z

.field private mRestartActionModeOnNextRefresh:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

.field private mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field mShowSoftInputOnFocus:Z

.field private mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTapState:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field private mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private final mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field private final mUpdateMagnifierRunnable:Ljava/lang/Runnable;

.field private mUpdateWordIteratorText:Z

.field private mWordIterator:Landroid/text/method/WordIterator;

.field private mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/widget/Editor$1;

    invoke-direct {v1, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/Editor$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor;->mInputType:I

    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Landroid/widget/Editor;->mTapState:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    new-instance v2, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v2, p0, v0}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    new-instance v2, Landroid/widget/Editor$3;

    invoke-direct {v2, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    new-instance v1, Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {v1, p0, v0}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    new-instance v1, Landroid/widget/Editor$5;

    invoke-direct {v1, p0}, Landroid/widget/Editor$5;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v1, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v1, p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    new-instance v1, Landroid/widget/Editor$MagnifierMotionAnimator;

    new-instance v2, Landroid/widget/Magnifier;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    invoke-direct {v1, v2, v0}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/Editor;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/Editor;)Landroid/widget/Editor$InsertionPointCursorController;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/Editor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$3900(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3902(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4000(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4402(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4502(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4700(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4702(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4800(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/Editor;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/widget/Editor;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return v0
.end method

.method static synthetic access$5002(Landroid/widget/Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p1
.end method

.method static synthetic access$502(Landroid/widget/Editor;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$5102(Landroid/widget/Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    return p1
.end method

.method static synthetic access$5200(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/Editor;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    return v0
.end method

.method static synthetic access$5902(Landroid/widget/Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    return p1
.end method

.method static synthetic access$6000(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    return-void
.end method

.method static synthetic access$6300(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method static synthetic access$6400(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6602(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$6700(Landroid/widget/Editor;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor;->mTapState:I

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/Editor;Landroid/text/Layout;IF)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return-void
.end method

.method static synthetic access$7100(Landroid/widget/Editor;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/Editor;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Landroid/widget/Editor;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Landroid/widget/Editor;)F
    .locals 1

    iget v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    return v0
.end method

.method static synthetic access$7600(Landroid/widget/Editor;)F
    .locals 1

    iget v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    return v0
.end method

.method static synthetic access$7700(Landroid/widget/Editor;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    return-void
.end method

.method static synthetic access$8000(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Landroid/widget/Editor;II)J
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$8202(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)Landroid/widget/Editor$CorrectionHighlighter;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    return-object p1
.end method

.method static synthetic access$8300(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object v0
.end method

.method static synthetic access$8700(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method static synthetic access$8900(Ljava/lang/CharSequence;II)Z
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 7

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v4, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v4, p3, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    const/4 v4, 0x0

    nop

    :goto_0
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 7

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    int-to-float v2, v1

    sub-float v2, p2, v2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    add-int v4, v3, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    sub-int/2addr v4, v5

    :goto_1
    goto :goto_3

    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-lez v4, :cond_4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x100000

    sub-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v6, v3

    add-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_3

    cmpg-float v4, p2, v5

    if-gtz v4, :cond_3

    goto :goto_2

    :cond_3
    float-to-int v4, p2

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v4, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v4

    goto :goto_1

    :goto_3
    nop

    return v4
.end method

.method private discardTextDisplayLists()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/RenderNode;->discardDisplayList()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    nop

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    nop

    :goto_0
    move v3, v4

    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_0

    and-int/lit8 v4, v4, -0x2

    aget-object v5, v2, v3

    invoke-virtual {v5, v4}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    :cond_0
    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    int-to-float v2, p2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 31

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    if-gez v9, :cond_0

    return-void

    :cond_0
    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v10

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    instance-of v0, v13, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_d

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v0, :cond_1

    const-class v0, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/Editor$TextRenderNode;

    iput-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    :cond_1
    move-object v8, v13

    check-cast v8, Landroid/text/DynamicLayout;

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v7

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v16

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v6

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v5

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v1, 0x1

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v3, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    iget-object v3, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v2

    iput-boolean v1, v3, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v3, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-static {v7, v2, v6, v10}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-gez v0, :cond_4

    add-int/lit8 v3, v0, 0x1

    neg-int v0, v3

    :cond_4
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/4 v0, 0x0

    move/from16 v19, v6

    move/from16 v20, v0

    move/from16 v0, v17

    :goto_1
    move v3, v0

    if-ge v3, v6, :cond_9

    aget v0, v16, v3

    if-lt v3, v5, :cond_6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v1, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    aget v1, v7, v3

    if-ge v1, v10, :cond_7

    nop

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v13, v8

    move v12, v9

    move/from16 v28, v10

    move-wide/from16 v24, v14

    const/16 v23, 0x0

    move-object v15, v4

    move v14, v5

    goto :goto_3

    :cond_7
    move/from16 v18, v0

    move-object v0, v11

    move/from16 v21, v2

    const/16 v22, -0x1

    move-object v1, v12

    const/16 v23, 0x0

    move-object v2, v13

    move-wide/from16 v24, v14

    move/from16 v14, v22

    move/from16 v22, v3

    move-object/from16 v3, p3

    move-object v15, v4

    move-object/from16 v4, p4

    move v14, v5

    move/from16 v5, p5

    move/from16 v26, v6

    move-object v6, v7

    move-object/from16 v27, v7

    move-object/from16 v7, v16

    move-object v13, v8

    move/from16 v8, v22

    move v12, v9

    move/from16 v9, v26

    move/from16 v28, v10

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    aget v0, v27, v22

    if-lt v0, v12, :cond_8

    add-int/lit8 v3, v22, 0x1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    nop

    move/from16 v10, v19

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v0, v22, 0x1

    move v9, v12

    move-object v8, v13

    move v5, v14

    move-object v4, v15

    move/from16 v1, v21

    move/from16 v2, v23

    move-wide/from16 v14, v24

    move/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v10, v28

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto/16 :goto_1

    :cond_9
    move/from16 v23, v2

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v13, v8

    move v12, v9

    move/from16 v28, v10

    move-wide/from16 v24, v14

    move-object v15, v4

    move v14, v5

    move/from16 v10, v19

    :goto_4
    if-eqz v15, :cond_c

    nop

    :goto_5
    move/from16 v9, v23

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v9, v0, :cond_c

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v13, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v7

    const/4 v6, -0x1

    if-eq v7, v6, :cond_b

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v7

    if-eqz v0, :cond_b

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v7

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v18, v6

    move/from16 v22, v9

    move-object v11, v13

    move/from16 v29, v14

    move-object/from16 v30, v15

    move-object/from16 v13, p2

    move v15, v10

    move v14, v12

    move-object/from16 v12, p1

    goto :goto_7

    :cond_b
    :goto_6
    move-object v0, v11

    move v5, v12

    move-object/from16 v12, p1

    move-object v1, v12

    move-object v4, v13

    move-object/from16 v13, p2

    move-object v2, v13

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p4

    move/from16 v29, v14

    move v14, v5

    move/from16 v5, p5

    move/from16 v18, v6

    move-object/from16 v6, v27

    move/from16 v19, v7

    move-object/from16 v7, v16

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v9, v26

    move-object/from16 v30, v15

    move v15, v10

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    :goto_7
    add-int/lit8 v23, v22, 0x1

    move-object v13, v11

    move v12, v14

    move v10, v15

    move/from16 v14, v29

    move-object/from16 v15, v30

    move-object/from16 v11, p0

    goto :goto_5

    :cond_c
    move-object v11, v13

    move/from16 v29, v14

    move-object/from16 v30, v15

    move-object/from16 v13, p2

    move v15, v10

    move v14, v12

    move-object/from16 v12, p1

    invoke-virtual {v11, v15}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    nop

    move/from16 v0, v28

    goto :goto_8

    :cond_d
    move/from16 v28, v10

    move-wide/from16 v24, v14

    move v14, v9

    move/from16 v0, v28

    invoke-virtual {v13, v12, v0, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    :goto_8
    return-void
.end method

.method private drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p7

    aget v6, p6, p8

    aget v0, v4, p8

    const/4 v8, 0x1

    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct {v1, v4, v10, v11}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v0

    aput v0, v4, p8

    iget-object v12, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v12, v12, v0

    if-eqz v12, :cond_1

    iget-object v12, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v12, v12, v0

    iput-boolean v8, v12, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_1
    add-int/lit8 v11, v0, 0x1

    goto :goto_1

    :cond_2
    move/from16 v10, p9

    move/from16 v11, p10

    :goto_1
    move v12, v11

    move v11, v0

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    new-instance v13, Landroid/widget/Editor$TextRenderNode;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Text "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    aput-object v13, v0, v11

    :cond_3
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v13

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    iget-object v14, v0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-nez v0, :cond_5

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v19, v9

    goto/16 :goto_7

    :cond_5
    :goto_2
    if-nez p8, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, p8, -0x1

    aget v0, p6, v0

    add-int/2addr v0, v8

    :goto_3
    move v8, v0

    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v15

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    const/4 v0, 0x0

    move/from16 v16, v0

    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    move/from16 v17, v0

    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v18, 0x1

    move v3, v0

    move v0, v8

    move/from16 v4, v18

    :goto_4
    if-gt v0, v6, :cond_7

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    float-to-int v0, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v3, v5

    move v4, v0

    goto :goto_5

    :cond_8
    move/from16 v4, v16

    move/from16 v3, v17

    :goto_5
    if-eqz v13, :cond_9

    sub-int v0, v3, v4

    sub-int v5, v7, v15

    invoke-virtual {v14, v0, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    move-object v5, v0

    neg-int v0, v4

    int-to-float v0, v0

    move/from16 v19, v9

    neg-int v9, v15

    int-to-float v9, v9

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/view/DisplayListCanvas;->translate(FF)V

    invoke-virtual {v2, v5, v8, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    const/4 v9, 0x0

    iput-boolean v9, v0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v14, v5}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    invoke-virtual {v14, v9}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    nop

    const/4 v9, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-virtual {v14, v5}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    throw v0

    :cond_9
    move/from16 v19, v9

    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v14, v4, v15, v3, v7}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v11

    iput-boolean v9, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    :goto_7
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    invoke-virtual {v0, v14}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    return v12
.end method

.method private ensureNoSelectionIfNonSelectable()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_0
    return-void
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    if-nez p5, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gez p2, :cond_2

    const/4 v4, -0x1

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    const/4 p2, 0x0

    move p3, v2

    goto :goto_2

    :cond_2
    add-int/2addr p3, p4

    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_5

    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-lez v6, :cond_5

    add-int/lit8 v6, v6, -0x1

    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ge v7, p2, :cond_3

    move p2, v7

    :cond_3
    aget-object v8, v5, v6

    invoke-interface {v4, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-le v7, p3, :cond_4

    move p3, v7

    :cond_4
    goto :goto_0

    :cond_5
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    sub-int v4, p3, p4

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le p2, v2, :cond_6

    move p2, v2

    goto :goto_1

    :cond_6
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_1
    if-le p3, v2, :cond_8

    move p3, v2

    goto :goto_2

    :cond_8
    if-gez p3, :cond_9

    const/4 p3, 0x0

    :cond_9
    :goto_2
    iget v4, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_a

    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_a
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :goto_3
    goto :goto_4

    :cond_b
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const-string v2, ""

    iput-object v2, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :goto_4
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    :cond_c
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/2addr v2, v3

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    :cond_d
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    return v3

    :cond_e
    :goto_5
    return v0
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 8

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-object v1

    :cond_0
    iget v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iget v2, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v4, v7}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v0, v0

    move v1, p3

    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    aget v4, p1, v3

    if-ne v4, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/Editor$TextRenderNode;

    iput-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    return v0
.end method

.method private getCharClusterRange(I)J
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    nop

    invoke-direct {p0, v2, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3

    :cond_0
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_1

    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    nop

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 12

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-gt p2, v1, :cond_4

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4

    if-gez p2, :cond_0

    goto :goto_2

    :cond_0
    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    sub-float v7, v6, v3

    add-float v8, v5, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    add-float v10, v9, v3

    sub-float v11, v8, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    cmpg-float v11, p3, v7

    if-gtz v11, :cond_2

    add-int/lit8 v11, p2, -0x1

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_0
    goto :goto_1

    :cond_2
    cmpl-float v4, p3, v10

    if-ltz v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v11, v2, -0x1

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, p2

    :goto_1
    return v4

    :cond_4
    :goto_2
    return v0
.end method

.method private getErrorX()I
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    if-eqz v1, :cond_0

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    nop

    :cond_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v5, v3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    nop

    :cond_2
    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v5, v3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v5

    :goto_0
    return v3
.end method

.method private getErrorY()I
    .locals 10

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    nop

    :cond_0
    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    nop

    :cond_2
    :goto_0
    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    add-int v7, v5, v4

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7
.end method

.method private getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v0
.end method

.method private getLastTapPosition()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getNextCursorOffset(IZ)I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    if-ne p2, v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method private getParagraphsRange(II)J
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    :goto_0
    const/16 v3, 0xa

    if-lez v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    :goto_2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SelectionActionModeHelper;

    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    return-object v0
.end method

.method private getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090102

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sub-int v1, p2, p1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x14

    invoke-direct {p0, v1}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to inflate text drag thumbnail"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getWordEnd(I)I
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    return v0
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method private getWordStart(I)I
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method private hideError()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    :cond_0
    return-void
.end method

.method private invalidateActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isCursorVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOffsetVisible(I)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v4

    return v4
.end method

.method private isPositionOnText(FF)Z
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$startActionModeInternal$0(Landroid/widget/Editor;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method private needsToSelectAllToSelectWordOrParagraph()Z
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v2, v0, 0xf

    and-int/lit16 v3, v0, 0xff0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd0

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb0

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-direct {v0, v2}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ltz v4, :cond_6

    if-gt v5, v4, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    goto/16 :goto_3

    :cond_1
    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v3, v4, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    array-length v8, v7

    new-array v9, v8, [I

    new-array v10, v8, [I

    new-array v11, v8, [I

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v8, :cond_3

    aget-object v14, v7, v13

    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    aput v15, v9, v13

    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    aput v15, v10, v13

    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v15

    aput v15, v11, v13

    invoke-virtual {v14}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v15

    and-int/lit8 v16, v15, 0x2

    if-eqz v16, :cond_2

    and-int/lit8 v15, v15, -0x3

    and-int/lit8 v15, v15, -0x2

    invoke-virtual {v14, v15}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    iget v14, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    invoke-virtual {v2, v13, v6, v14}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    iget v14, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    iget-object v15, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v15, v13, v14}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4, v5, v15}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v2

    iget v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    aput-object v6, v12, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v16, v5, v4

    sub-int v2, v2, v16

    const/16 v17, 0x0

    :goto_1
    move/from16 v19, v17

    move/from16 v1, v19

    if-ge v1, v8, :cond_5

    move-object/from16 v20, v3

    aget v3, v9, v1

    if-gt v3, v4, :cond_4

    aget v3, v10, v1

    if-lt v3, v5, :cond_4

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v21, v4

    aget-object v4, v7, v1

    move-object/from16 v22, v6

    aget v6, v9, v1

    aget v16, v10, v1

    move-object/from16 v23, v7

    add-int v7, v16, v2

    move/from16 v24, v8

    aget v8, v11, v1

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    move/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    :goto_2
    add-int/lit8 v17, v1, 0x1

    move-object/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v1, p1

    goto :goto_1

    :cond_5
    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    add-int v1, v5, v2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    return-void

    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    :goto_3
    return-void
.end method

.method private resumeBlink()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    :cond_0
    return-void
.end method

.method private selectCurrentParagraph()Z
    .locals 9

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    invoke-direct {p0, v0, v4}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method private selectCurrentWordAndStartDrag()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private sendUpdateSelection()V
    .locals 11

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v0, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    const/4 v1, -0x1

    const/4 v2, -0x1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    :cond_0
    move v9, v1

    move v10, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object v1, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$Drawables;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    iput-object v2, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private shouldBlink()Z
    .locals 3

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method private shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mLastButtonState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_3

    :cond_2
    if-nez v0, :cond_3

    return v2

    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private shouldOfferToShowSuggestions()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    array-length v7, v6

    if-nez v7, :cond_1

    return v3

    :cond_1
    const/4 v7, 0x1

    if-ne v4, v5, :cond_4

    move v8, v3

    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_3

    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_2

    return v7

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    iget-object v8, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v3

    :goto_1
    array-length v14, v6

    if-ge v8, v14, :cond_9

    aget-object v14, v6, v8

    invoke-interface {v2, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aget-object v15, v6, v8

    invoke-interface {v2, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-lt v4, v14, :cond_8

    if-le v4, v15, :cond_5

    goto :goto_4

    :cond_5
    if-nez v12, :cond_7

    aget-object v7, v6, v8

    invoke-virtual {v7}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_6

    goto :goto_2

    :cond_6
    move v7, v3

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v7, 0x1

    :goto_3
    nop

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    nop

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v13, v12

    move v12, v7

    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    if-nez v12, :cond_a

    return v3

    :cond_a
    if-lt v11, v13, :cond_b

    return v3

    :cond_b
    if-lt v9, v11, :cond_d

    if-le v10, v13, :cond_c

    goto :goto_5

    :cond_c
    const/4 v3, 0x1

    return v3

    :cond_d
    :goto_5
    return v3
.end method

.method private showError()V
    .locals 8

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x109010d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v1}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v3

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v4

    const/16 v5, 0x33

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;III)V

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v2}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    return-void
.end method

.method private showFloatingToolbar()V
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    :cond_0
    return-void
.end method

.method private startDragAndDrop()V
    .locals 8

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onSelectionDrag()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    new-instance v4, Landroid/widget/Editor$DragLocalState;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v5, v0, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    move-result-object v6

    const/16 v7, 0x100

    invoke-virtual {v5, v3, v6, v4, v7}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_1
    return-void
.end method

.method private stopTextActionModeWithPreservingSelection()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return-void
.end method

.method private suspendBlink()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-le v0, v1, :cond_1

    move v3, v0

    move v0, v1

    move v1, v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v5

    if-lt v4, v0, :cond_2

    if-ge v5, v1, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2
.end method

.method private updateCursorPosition(IIF)V
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p3}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p1, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p2

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    :cond_1
    return-void
.end method

.method private updateTapState(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    iget v3, p0, Landroid/widget/Editor;->mTapState:I

    const/4 v4, 0x2

    if-eq v3, v1, :cond_0

    iget v3, p0, Landroid/widget/Editor;->mTapState:I

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    sub-long/2addr v5, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-gtz v3, :cond_2

    iget v3, p0, Landroid/widget/Editor;->mTapState:I

    if-ne v3, v1, :cond_1

    iput v4, p0, Landroid/widget/Editor;->mTapState:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/Editor;->mTapState:I

    goto :goto_0

    :cond_2
    iput v1, p0, Landroid/widget/Editor;->mTapState:I

    :cond_3
    :goto_0
    if-ne v0, v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    :cond_4
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 5

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Editor$SpanController;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    if-eqz p3, :cond_3

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz p4, :cond_3

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    :cond_3
    :goto_0
    return-void
.end method

.method public beginBatchEdit()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-boolean v3, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v3, :cond_0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    :cond_1
    return-void
.end method

.method canRedo()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method canUndo()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method checkField()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->show()V

    :cond_4
    return-void
.end method

.method forgetUndoRedo()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method public getCursorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getLastUpPositionX()F
    .locals 1

    iget v0, p0, Landroid/widget/Editor;->mLastUpPositionX:F

    return v0
.end method

.method getLastUpPositionY()F
    .locals 1

    iget v0, p0, Landroid/widget/Editor;->mLastUpPositionY:F

    return v0
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v0
.end method

.method public getSuggestionsPopupWindowForTesting()Landroid/widget/Editor$SuggestionsPopupWindow;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    return-object v0
.end method

.method getTextActionMode()Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideCursorAndSpanControllers()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    return-void
.end method

.method hideFloatingToolbar(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method

.method hideInsertionPointCursorController()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    :cond_0
    return-void
.end method

.method invalidateActionModeAsync()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    return-void
.end method

.method invalidateHandlesAndActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    :cond_2
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10

    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    move-object v2, p1

    check-cast v2, Landroid/text/DynamicLayout;

    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v3

    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v4

    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v3, v6

    if-lt v7, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v6, v5, :cond_4

    aget v7, v4, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_2
    aget v8, v3, v6

    if-lt v8, v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method makeBlink()V
    .locals 4

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method onAttachedToWindow()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_3
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$1100(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    return-void
.end method

.method onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 11

    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    if-nez v0, :cond_6

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iget v2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v1

    const/4 v4, 0x5

    if-eqz v1, :cond_5

    new-array v1, v4, [Landroid/widget/Editor$SuggestionInfo;

    move v5, v3

    :goto_1
    array-length v6, v1

    const/4 v7, 0x0

    if-ge v5, v6, :cond_4

    new-instance v6, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v6, v7}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$1;)V

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/16 v5, 0x9

    const v6, 0x10405ae

    invoke-interface {p1, v3, v3, v5, v6}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    invoke-virtual {v6, v1, v7}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v6

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_5

    aget-object v8, v1, v7

    iget-object v9, v8, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v5, v3, v3, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    new-instance v10, Landroid/widget/Editor$4;

    invoke-direct {v10, p0, v8}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const v1, 0x1020032

    const/4 v5, 0x2

    const v6, 0x1040694

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v5, 0x7a

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canUndo()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x1020033

    const/4 v5, 0x3

    const v6, 0x104059c

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canRedo()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x1020020

    const/4 v5, 0x4

    const v6, 0x1040003

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v5, 0x78

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x1020021

    const v5, 0x1040001

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v4, 0x63

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x1020022

    const/4 v4, 0x6

    const v5, 0x104000b

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v4, 0x76

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v1, 0x1020031

    const/16 v4, 0xb

    const v5, 0x1040019

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v1, 0x1020035

    const/4 v4, 0x7

    const v5, 0x1040603

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canShare()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v1, 0x102001f

    const/16 v4, 0x8

    const v5, 0x104000d

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v4, 0x61

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v1, 0x1020043

    const/16 v4, 0xa

    const v5, 0x104001a

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 9

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v3, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v2, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v3, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    :cond_2
    if-eqz p3, :cond_3

    if-ne v0, v1, :cond_3

    iget-object v3, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    const/4 p3, 0x0

    :cond_3
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v3, p1}, Landroid/widget/SelectionActionModeHelper;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v3}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p3, 0x0

    :cond_4
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_0
    return-void
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v2, v0

    invoke-static/range {p1 .. p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    iget-object v8, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/DragAndDropPermissions;->release()V

    :cond_2
    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v0, v1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    :try_start_1
    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    instance-of v7, v4, Landroid/widget/Editor$DragLocalState;

    if-eqz v7, :cond_3

    move-object v7, v4

    check-cast v7, Landroid/widget/Editor$DragLocalState;

    move-object v6, v7

    :cond_3
    if-eqz v6, :cond_4

    iget-object v8, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    iget-object v9, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    move v8, v5

    :goto_1
    if-eqz v8, :cond_5

    iget v9, v6, Landroid/widget/Editor$DragLocalState;->start:I

    if-lt v0, v9, :cond_5

    iget v9, v6, Landroid/widget/Editor$DragLocalState;->end:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v9, :cond_5

    iget-object v5, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->endBatchEdit()V

    iget-object v5, v1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    return-void

    :cond_5
    :try_start_2
    iget-object v9, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move v10, v0

    move v11, v0

    iget-object v12, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Spannable;

    invoke-static {v12, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v12, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v10, v11, v2}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    if-eqz v8, :cond_7

    iget v12, v6, Landroid/widget/Editor$DragLocalState;->start:I

    iget v13, v6, Landroid/widget/Editor$DragLocalState;->end:I

    if-gt v11, v12, :cond_6

    iget-object v14, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    sub-int/2addr v14, v9

    add-int/2addr v12, v14

    add-int/2addr v13, v14

    :cond_6
    iget-object v14, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v12, v13}, Landroid/widget/TextView;->deleteText_internal(II)V

    add-int/lit8 v14, v12, -0x1

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    add-int/lit8 v7, v12, 0x1

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v15, v14, 0x1

    if-le v7, v15, :cond_7

    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v14, v7}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    invoke-interface {v15, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v16, v0

    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v5, v14, v0}, Landroid/widget/TextView;->deleteText_internal(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    iget-object v0, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    iget-object v0, v1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v4, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->endBatchEdit()V

    iget-object v4, v1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v4}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/DragAndDropPermissions;->release()V

    :cond_8
    throw v0
.end method

.method onFocusChanged(ZI)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_2

    if-ltz v0, :cond_2

    if-gez v1, :cond_8

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_3
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-interface {v6, v7, v8, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    :cond_4
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v7, :cond_6

    :cond_5
    if-ltz v0, :cond_6

    if-ltz v1, :cond_6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_6
    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->selectAllText()Z

    :cond_7
    iput-boolean v3, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    :cond_8
    iput-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    iput-boolean v4, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    iget-object v3, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :goto_2
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    :goto_3
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_e
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    :goto_4
    return-void
.end method

.method onLocaleChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    iput-boolean v1, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateTapState(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastUpPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastUpPositionY:F

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    iput-boolean v1, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_5
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->resetSelection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v0, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    iget-boolean v4, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    xor-int/2addr v1, v4

    if-eqz v1, :cond_2

    move-object v4, v2

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v4}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    new-instance v4, Landroid/widget/-$$Lambda$DZXn7FbDDFyBvNjI-iG9_hfa7kw;

    invoke-direct {v4, p0}, Landroid/widget/-$$Lambda$DZXn7FbDDFyBvNjI-iG9_hfa7kw;-><init>(Landroid/widget/Editor;)V

    iput-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    :cond_6
    :goto_1
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    :cond_5
    :goto_0
    return-void
.end method

.method public performLongClick(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x275

    if-nez p1, :cond_0

    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v4, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    iput-boolean v0, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    const/4 p1, 0x1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :goto_0
    const/4 p1, 0x1

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_3
    return p1
.end method

.method prepareCursorControllers()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_1

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    move v0, v5

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_5

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v4, 0x0

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    iput-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    :cond_6
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    iput-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    :cond_7
    return-void
.end method

.method redo()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method refreshTextActionMode()V
    .locals 5

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_2

    :cond_6
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_a
    :goto_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void
.end method

.method replace()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v2, :cond_1

    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-nez v3, :cond_1

    return v1

    :cond_1
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    iget-object v3, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    if-nez v10, :cond_3

    return v1

    :cond_3
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v4, :cond_4

    if-nez v2, :cond_4

    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_4
    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v7, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v8, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v9, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v5, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v10, v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    const/4 v1, 0x1

    return v1

    :cond_5
    return v1
.end method

.method restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    new-instance v0, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v1}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    return-object v0
.end method

.method selectCurrentWord()Z
    .locals 12

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    if-ltz v0, :cond_9

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v0, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ltz v4, :cond_8

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v5, v0, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    array-length v6, v5

    const/4 v7, 0x1

    if-lt v6, v7, :cond_4

    aget-object v6, v5, v1

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v9, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v6

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v6, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v8

    invoke-virtual {v6, v4}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v8, v10, :cond_6

    if-eq v9, v10, :cond_6

    if-ne v8, v9, :cond_5

    goto :goto_0

    :cond_5
    move v6, v9

    goto :goto_1

    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v8

    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    :goto_1
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v8, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-le v6, v8, :cond_7

    move v1, v7

    nop

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v1

    :cond_9
    :goto_3
    return v1
.end method

.method sendOnTextChanged(III)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper;->onTextChanged(II)V

    add-int v0, p1, p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method setContextMenuAnchor(FF)V
    .locals 0

    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    :cond_0
    iput-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    :cond_3
    :goto_0
    return-void
.end method

.method setFrame()V
    .locals 9

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v6

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v7

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method setRestartActionModeOnNextRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void
.end method

.method shouldRenderCursor()Z
    .locals 9

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    rem-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method startActionModeInternal(I)Z
    .locals 7
    .param p1    # I
        .annotation build Landroid/widget/Editor$TextActionMode;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return v1

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    return v1

    :cond_3
    new-instance v2, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v2, p0, p1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v4

    :goto_1
    if-ne p1, v0, :cond_6

    if-nez v3, :cond_6

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    instance-of v0, v0, Lcom/android/internal/view/FloatingActionMode;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    new-instance v5, Landroid/widget/-$$Lambda$Editor$TdqUlJ6RRep0wXYHaRH51nTa08I;

    invoke-direct {v5, p0}, Landroid/widget/-$$Lambda$Editor$TdqUlJ6RRep0wXYHaRH51nTa08I;-><init>(Landroid/widget/Editor;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/view/FloatingActionMode;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    move v0, v4

    if-eqz v0, :cond_8

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :cond_8
    return v0
.end method

.method startInsertionActionMode()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    :cond_2
    return-void
.end method

.method startLinkActionModeAsync(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->startLinkActionModeAsync(II)V

    return-void
.end method

.method startSelectionActionModeAsync(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeAsync(Z)V

    return-void
.end method

.method protected stopTextActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method undo()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method updateCursorPosition()V
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v0, v0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v6

    invoke-direct {p0, v3, v4, v6}, Landroid/widget/Editor;->updateCursorPosition(IIF)V

    return-void
.end method
