.class public final Landroid/widget/SelectionActionModeHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionResult;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;,
        Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;,
        Landroid/widget/SelectionActionModeHelper$SelectionTracker;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectActionModeHelper"


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private final mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

.field private final mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

.field private mTextClassification:Landroid/view/textclassifier/TextClassification;

.field private mTextClassificationAsyncTask:Landroid/os/AsyncTask;

.field private final mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 8
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 85
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 86
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/widget/-$$Lambda$yIdmBO6ZxaY03PGN08RySVVQXuE;

    invoke-direct {v3, v1}, Landroid/widget/-$$Lambda$yIdmBO6ZxaY03PGN08RySVVQXuE;-><init>(Landroid/widget/TextView;)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 89
    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 91
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 93
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->getTextClassificationSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/widget/SmartSelectSprite;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mHighlightColor:I

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/-$$Lambda$IfzAW5fP9thoftErKAjo9SLZufw;

    invoke-direct {v4, v3}, Landroid/widget/-$$Lambda$IfzAW5fP9thoftErKAjo9SLZufw;-><init>(Landroid/widget/TextView;)V

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/SmartSelectSprite;-><init>(Landroid/content/Context;ILjava/lang/Runnable;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    .line 99
    :goto_0
    return-void
.end method

.method static synthetic access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .line 66
    invoke-static {p0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private cancelAsyncTask()V
    .locals 3

    .line 218
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 220
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 222
    :cond_0
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 223
    return-void
.end method

.method private cancelSmartSelectAnimation()V
    .locals 1

    .line 473
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    invoke-virtual {v0}, Landroid/widget/SmartSelectSprite;->cancelAnimation()V

    .line 476
    :cond_0
    return-void
.end method

.method private convertSelectionToRectangles(Landroid/text/Layout;II)Ljava/util/List;
    .locals 4
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            "II)",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;"
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;>;"
    new-instance v1, Landroid/widget/-$$Lambda$SelectionActionModeHelper$cMbIRcH-yFkksR3CQmROa0_hmgM;

    .local v1, "consumer":Landroid/text/Layout$SelectionRectangleConsumer;
    invoke-direct {v1, v0}, Landroid/widget/-$$Lambda$SelectionActionModeHelper$cMbIRcH-yFkksR3CQmROa0_hmgM;-><init>(Ljava/util/List;)V

    .line 337
    invoke-virtual {p1, p2, p3, v1}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 339
    sget-object v2, Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;->INSTANCE:Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;

    sget-object v3, Landroid/widget/SmartSelectSprite;->RECTANGLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 343
    return-object v0
.end method

.method private static getActionType(I)I
    .locals 1
    .param p0, "menuItemId"    # I

    .line 1096
    const v0, 0x1020031

    if-eq p0, v0, :cond_2

    const v0, 0x1020035

    if-eq p0, v0, :cond_1

    const v0, 0x1020041

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1111
    const/16 v0, 0x6c

    return v0

    .line 1102
    :pswitch_0
    const/16 v0, 0x65

    return v0

    .line 1100
    :pswitch_1
    const/16 v0, 0x67

    return v0

    .line 1098
    :pswitch_2
    const/16 v0, 0xc8

    return v0

    .line 1109
    :cond_0
    const/16 v0, 0x69

    return v0

    .line 1107
    :cond_1
    const/16 v0, 0x68

    return v0

    .line 1105
    :cond_2
    :pswitch_3
    const/16 v0, 0x66

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1118
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1119
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1120
    return-object v0

    .line 1122
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private getTextClassificationSettings()Landroid/view/textclassifier/TextClassificationConstants;
    .locals 1

    .line 214
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    return-object v0
.end method

.method private invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 6
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 444
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelSmartSelectAnimation()V

    .line 445
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$200(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 446
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v1

    .line 447
    .local v1, "actionMode":Landroid/view/ActionMode;
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 450
    :cond_1
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 451
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 450
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionUpdated(IILandroid/view/textclassifier/TextClassification;)V

    .line 452
    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 453
    return-void
.end method

.method public static synthetic lambda$CcJ0IF8nDFsmkuaqvOxFqYGazzY(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public static synthetic lambda$Lwzg10CkEpNBaAXBpjnWEpIlTzQ(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public static synthetic lambda$WnFw1_gP20c3ltvTN6OPqQ5XUns(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startLinkActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method static synthetic lambda$convertSelectionToRectangles$1(ILandroid/graphics/RectF;)Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    .locals 1
    .param p0, "textSelectionLayout"    # I
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 333
    new-instance v0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    invoke-direct {v0, p1, p0}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;-><init>(Landroid/graphics/RectF;I)V

    return-object v0
.end method

.method static synthetic lambda$convertSelectionToRectangles$2(Ljava/util/List;FFFFI)V
    .locals 3
    .param p0, "result"    # Ljava/util/List;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "textSelectionLayout"    # I

    .line 329
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;->INSTANCE:Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;

    new-instance v2, Landroid/widget/-$$Lambda$SelectionActionModeHelper$mSUWA79GbPno-4-1PEW8ZDcf0L0;

    invoke-direct {v2, p5}, Landroid/widget/-$$Lambda$SelectionActionModeHelper$mSUWA79GbPno-4-1PEW8ZDcf0L0;-><init>(I)V

    invoke-static {p0, v0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->mergeRectangleIntoList(Ljava/util/List;Landroid/graphics/RectF;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-void
.end method

.method public static synthetic lambda$l1f1_V5lw6noQxI_3u11qF753Iw(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeWithSmartSelectAnimation(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public static synthetic lambda$startSelectionActionModeWithSmartSelectAnimation$0(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 289
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 290
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 291
    move-object v0, p1

    .local v0, "startSelectionResult":Landroid/widget/SelectionActionModeHelper$SelectionResult;
    goto :goto_0

    .line 293
    .end local v0    # "startSelectionResult":Landroid/widget/SelectionActionModeHelper$SelectionResult;
    :cond_0
    const/4 v0, 0x0

    .line 295
    .restart local v0    # "startSelectionResult":Landroid/widget/SelectionActionModeHelper$SelectionResult;
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 296
    return-void
.end method

.method public static mergeRectangleIntoList(Ljava/util/List;Landroid/graphics/RectF;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 8
    .param p1, "candidate"    # Landroid/graphics/RectF;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/graphics/RectF;",
            "Ljava/util/function/Function<",
            "TT;",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/RectF;",
            "TT;>;)V"
        }
    .end annotation

    .line 369
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "extractor":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Landroid/graphics/RectF;>;"
    .local p3, "packer":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/graphics/RectF;TT;>;"
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 374
    .local v0, "elementCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_8

    .line 375
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 376
    .local v3, "existingRectangle":Landroid/graphics/RectF;
    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    return-void

    .line 379
    :cond_1
    invoke-virtual {p1, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 381
    goto :goto_4

    .line 384
    :cond_2
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v5

    .line 386
    .local v4, "rectanglesContinueEachOther":Z
    :goto_2
    iget v6, p1, Landroid/graphics/RectF;->top:F

    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 388
    invoke-static {p1, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    move v5, v1

    .line 391
    .local v5, "canMerge":Z
    :goto_3
    if-eqz v5, :cond_7

    .line 392
    invoke-virtual {p1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 393
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 374
    .end local v3    # "existingRectangle":Landroid/graphics/RectF;
    .end local v4    # "rectanglesContinueEachOther":Z
    .end local v5    # "canMerge":Z
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v2    # "index":I
    :cond_8
    add-int/lit8 v1, v0, -0x1

    .local v1, "index":I
    :goto_5
    if-ltz v1, :cond_a

    .line 398
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 399
    .local v2, "rectangle":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 400
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 397
    .end local v2    # "rectangle":Landroid/graphics/RectF;
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 404
    .end local v1    # "index":I
    :cond_a
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public static movePointInsideNearestRectangle(Landroid/graphics/PointF;Ljava/util/List;Ljava/util/function/Function;)Landroid/graphics/PointF;
    .locals 17
    .param p0, "point"    # Landroid/graphics/PointF;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/graphics/PointF;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "extractor":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Landroid/graphics/RectF;>;"
    move-object/from16 v0, p0

    .line 412
    const/high16 v1, -0x40800000    # -1.0f

    .line 413
    .local v1, "bestX":F
    const/high16 v2, -0x40800000    # -1.0f

    .line 414
    .local v2, "bestY":F
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 416
    .local v3, "bestDistance":D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 417
    .local v5, "elementCount":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 418
    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 419
    .local v8, "rectangle":Landroid/graphics/RectF;
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 422
    .local v10, "candidateY":F
    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    .line 423
    iget v11, v8, Landroid/graphics/RectF;->right:F

    .local v11, "candidateX":F
    :goto_1
    goto :goto_2

    .line 424
    .end local v11    # "candidateX":F
    :cond_0
    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 425
    iget v11, v8, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 427
    :cond_1
    iget v11, v0, Landroid/graphics/PointF;->x:F

    .line 430
    .restart local v11    # "candidateX":F
    :goto_2
    iget v12, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v11

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v14, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v10

    float-to-double v14, v14

    .line 431
    move-object/from16 v16, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .end local v8    # "rectangle":Landroid/graphics/RectF;
    .local v16, "rectangle":Landroid/graphics/RectF;
    add-double/2addr v12, v7

    .line 433
    .local v12, "candidateDistance":D
    cmpg-double v7, v12, v3

    if-gez v7, :cond_2

    .line 434
    move v1, v11

    .line 435
    move v2, v10

    .line 436
    move-wide v3, v12

    .line 417
    .end local v10    # "candidateY":F
    .end local v11    # "candidateX":F
    .end local v12    # "candidateDistance":D
    .end local v16    # "rectangle":Landroid/graphics/RectF;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 440
    .end local v6    # "index":I
    :cond_3
    move-object/from16 v9, p2

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private resetTextClassificationHelper()V
    .locals 1

    .line 469
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper(II)V

    .line 470
    return-void
.end method

.method private resetTextClassificationHelper(II)V
    .locals 6
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 456
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    .line 459
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p2

    .line 461
    :cond_1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/widget/-$$Lambda$yIdmBO6ZxaY03PGN08RySVVQXuE;

    invoke-direct {v2, v1}, Landroid/widget/-$$Lambda$yIdmBO6ZxaY03PGN08RySVVQXuE;-><init>(Landroid/widget/TextView;)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 463
    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 465
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 461
    move-object v1, v2

    move-object v2, v3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    .line 466
    return-void
.end method

.method private skipTextClassification()Z
    .locals 5

    .line 227
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->usesNoOpTextClassifier()Z

    move-result v0

    .line 229
    .local v0, "noOpTextClassifier":Z
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 231
    .local v1, "noSelection":Z
    :goto_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 232
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    invoke-static {v2}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    .line 233
    .local v2, "password":Z
    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    :goto_3
    move v3, v4

    :goto_4
    return v3
.end method

.method private startActionMode(ILandroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 6
    .param p1, "actionMode"    # I
        .annotation build Landroid/widget/Editor$TextActionMode;
        .end annotation
    .end param
    .param p2, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 246
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 247
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_2

    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 248
    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    :cond_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->getTextClassificationSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    move-object v3, v0

    check-cast v3, Landroid/text/Spannable;

    invoke-static {p2}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v4

    invoke-static {p2}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 252
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 254
    :cond_1
    invoke-static {p2}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$200(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    goto :goto_0

    .line 255
    :cond_2
    if-eqz p2, :cond_3

    if-ne p1, v2, :cond_3

    .line 256
    invoke-static {p2}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$200(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    goto :goto_0

    .line 258
    :cond_3
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 260
    :goto_0
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, p1}, Landroid/widget/Editor;->startActionModeInternal(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 261
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    .line 262
    .local v3, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v3, :cond_5

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 263
    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 264
    :cond_4
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 266
    :cond_5
    if-eqz p2, :cond_8

    .line 267
    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    .end local v3    # "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    goto :goto_1

    .line 272
    .restart local v3    # "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_6
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v2, p2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onLinkSelected(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 273
    goto :goto_1

    .line 269
    :cond_7
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v2, p2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSmartSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 270
    nop

    .line 279
    .end local v3    # "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Editor;->setRestartActionModeOnNextRefresh(Z)V

    .line 280
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 281
    return-void
.end method

.method private startLinkActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 1
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 237
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(ILandroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 238
    return-void
.end method

.method private startSelectionActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 1
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(ILandroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 242
    return-void
.end method

.method private startSelectionActionModeWithSmartSelectAnimation(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 7
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 285
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 287
    .local v0, "layout":Landroid/text/Layout;
    new-instance v1, Landroid/widget/-$$Lambda$SelectionActionModeHelper$xdBRwQcbRdz8duQr0RBo4YKAnOA;

    .local v1, "onAnimationEndCallback":Ljava/lang/Runnable;
    invoke-direct {v1, p0, p1}, Landroid/widget/-$$Lambda$SelectionActionModeHelper$xdBRwQcbRdz8duQr0RBo4YKAnOA;-><init>(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 298
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 299
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 300
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 302
    .local v2, "didSelectionChange":Z
    :goto_0
    if-nez v2, :cond_2

    .line 303
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 304
    return-void

    .line 307
    :cond_2
    nop

    .line 308
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v3

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Landroid/widget/SelectionActionModeHelper;->convertSelectionToRectangles(Landroid/text/Layout;II)Ljava/util/List;

    move-result-object v3

    .line 310
    .local v3, "selectionRectangles":Ljava/util/List;, "Ljava/util/List<Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;>;"
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 311
    invoke-virtual {v5}, Landroid/widget/Editor;->getLastUpPositionX()F

    move-result v5

    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 312
    invoke-virtual {v6}, Landroid/widget/Editor;->getLastUpPositionY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 314
    .local v4, "touchPoint":Landroid/graphics/PointF;
    sget-object v5, Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;->INSTANCE:Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;

    .line 315
    invoke-static {v4, v3, v5}, Landroid/widget/SelectionActionModeHelper;->movePointInsideNearestRectangle(Landroid/graphics/PointF;Ljava/util/List;Ljava/util/function/Function;)Landroid/graphics/PointF;

    move-result-object v5

    .line 318
    .local v5, "animationStartPoint":Landroid/graphics/PointF;
    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    invoke-virtual {v6, v5, v3, v1}, Landroid/widget/SmartSelectSprite;->startAnimation(Landroid/graphics/PointF;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method


# virtual methods
.method public getTextClassification()Landroid/view/textclassifier/TextClassification;
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public invalidateActionModeAsync()V
    .locals 7

    .line 153
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 154
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    .line 158
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 160
    invoke-virtual {v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()I

    move-result v3

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/-$$Lambda$aOGBsMC_jnvTDjezYLRtz35nAPI;

    invoke-direct {v4, v1}, Landroid/widget/-$$Lambda$aOGBsMC_jnvTDjezYLRtz35nAPI;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    new-instance v5, Landroid/widget/-$$Lambda$SelectionActionModeHelper$Lwzg10CkEpNBaAXBpjnWEpIlTzQ;

    invoke-direct {v5, p0}, Landroid/widget/-$$Lambda$SelectionActionModeHelper$Lwzg10CkEpNBaAXBpjnWEpIlTzQ;-><init>(Landroid/widget/SelectionActionModeHelper;)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/widget/-$$Lambda$etfJkiCJnT2dqM2O4M2TCm9i_oA;

    invoke-direct {v6, v1}, Landroid/widget/-$$Lambda$etfJkiCJnT2dqM2O4M2TCm9i_oA;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 166
    :goto_0
    return-void
.end method

.method public isDrawingHighlight()Z
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    invoke-virtual {v0}, Landroid/widget/SmartSelectSprite;->isAnimationActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroyActionMode()V
    .locals 1

    .line 198
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelSmartSelectAnimation()V

    .line 199
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionDestroyed()V

    .line 200
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 201
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 204
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    invoke-virtual {v0, p1}, Landroid/widget/SmartSelectSprite;->draw(Landroid/graphics/Canvas;)V

    .line 207
    :cond_0
    return-void
.end method

.method public onSelectionAction(I)V
    .locals 5
    .param p1, "menuItemId"    # I

    .line 169
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 170
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 171
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper;->getActionType(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 169
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 172
    return-void
.end method

.method public onSelectionDrag()V
    .locals 5

    .line 175
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 176
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 175
    const/16 v4, 0x6a

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 178
    return-void
.end method

.method public onTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 181
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onTextChanged(IILandroid/view/textclassifier/TextClassification;)V

    .line 182
    return-void
.end method

.method public resetSelection(I)Z
    .locals 2
    .param p1, "textIndex"    # I

    .line 185
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelection(ILandroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startLinkActionModeAsync(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 136
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onOriginalSelection(Ljava/lang/CharSequence;IIZ)V

    .line 137
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 138
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->startLinkActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper(II)V

    .line 142
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 144
    invoke-virtual {v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()I

    move-result v3

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/-$$Lambda$aOGBsMC_jnvTDjezYLRtz35nAPI;

    invoke-direct {v4, v1}, Landroid/widget/-$$Lambda$aOGBsMC_jnvTDjezYLRtz35nAPI;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    new-instance v5, Landroid/widget/-$$Lambda$SelectionActionModeHelper$WnFw1_gP20c3ltvTN6OPqQ5XUns;

    invoke-direct {v5, p0}, Landroid/widget/-$$Lambda$SelectionActionModeHelper$WnFw1_gP20c3ltvTN6OPqQ5XUns;-><init>(Landroid/widget/SelectionActionModeHelper;)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/widget/-$$Lambda$etfJkiCJnT2dqM2O4M2TCm9i_oA;

    invoke-direct {v6, v1}, Landroid/widget/-$$Lambda$etfJkiCJnT2dqM2O4M2TCm9i_oA;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 150
    :goto_0
    return-void
.end method

.method public startSelectionActionModeAsync(Z)V
    .locals 11
    .param p1, "adjustSelection"    # Z

    .line 106
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->getTextClassificationSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionEnabled()Z

    move-result v0

    and-int/2addr p1, v0

    .line 108
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 109
    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 111
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onOriginalSelection(Ljava/lang/CharSequence;IIZ)V

    .line 113
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 114
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    goto :goto_4

    .line 117
    :cond_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    .line 118
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 120
    invoke-virtual {v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()I

    move-result v7

    .line 121
    if-eqz p1, :cond_1

    .line 122
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/widget/-$$Lambda$E-XesXLNXm7BCuVAnjZcIGfnQJQ;

    invoke-direct {v2, v1}, Landroid/widget/-$$Lambda$E-XesXLNXm7BCuVAnjZcIGfnQJQ;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    .line 124
    :goto_0
    move-object v8, v2

    goto :goto_1

    .line 123
    :cond_1
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/widget/-$$Lambda$aOGBsMC_jnvTDjezYLRtz35nAPI;

    invoke-direct {v2, v1}, Landroid/widget/-$$Lambda$aOGBsMC_jnvTDjezYLRtz35nAPI;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    goto :goto_0

    .line 124
    :goto_1
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    if-eqz v1, :cond_2

    .line 125
    new-instance v1, Landroid/widget/-$$Lambda$SelectionActionModeHelper$l1f1_V5lw6noQxI_3u11qF753Iw;

    invoke-direct {v1, p0}, Landroid/widget/-$$Lambda$SelectionActionModeHelper$l1f1_V5lw6noQxI_3u11qF753Iw;-><init>(Landroid/widget/SelectionActionModeHelper;)V

    .line 126
    :goto_2
    move-object v9, v1

    goto :goto_3

    :cond_2
    new-instance v1, Landroid/widget/-$$Lambda$SelectionActionModeHelper$CcJ0IF8nDFsmkuaqvOxFqYGazzY;

    invoke-direct {v1, p0}, Landroid/widget/-$$Lambda$SelectionActionModeHelper$CcJ0IF8nDFsmkuaqvOxFqYGazzY;-><init>(Landroid/widget/SelectionActionModeHelper;)V

    goto :goto_2

    :goto_3
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroid/widget/-$$Lambda$etfJkiCJnT2dqM2O4M2TCm9i_oA;

    invoke-direct {v10, v1}, Landroid/widget/-$$Lambda$etfJkiCJnT2dqM2O4M2TCm9i_oA;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    new-array v1, v4, [Ljava/lang/Void;

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 130
    :goto_4
    return-void
.end method
