.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
    }
.end annotation


# instance fields
.field private mAllowReset:Z

.field private final mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

.field private mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

.field private mOriginalEnd:I

.field private mOriginalStart:I

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper$1;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    .line 496
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    .line 497
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-direct {v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 498
    return-void
.end method

.method static synthetic access$600(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 483
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 483
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionTracker;
    .param p1, "x1"    # I

    .line 483
    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 483
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionTracker;
    .param p1, "x1"    # I

    .line 483
    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 483
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    return-object v0
.end method

.method private isSelectionStarted()Z
    .locals 2

    .line 618
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeInvalidateLogger()V
    .locals 2

    .line 612
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isEditTextLogger()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 613
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 615
    :cond_0
    return-void
.end method

.method private onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 536
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 538
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 539
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalStart:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalEnd:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 541
    :cond_2
    return-void
.end method


# virtual methods
.method public onLinkSelected(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 531
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 533
    return-void
.end method

.method public onOriginalSelection(Ljava/lang/CharSequence;IIZ)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "isLink"    # Z

    .line 507
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    .line 509
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalStart:I

    .line 510
    iput p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    iput p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalEnd:I

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 512
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->maybeInvalidateLogger()V

    .line 513
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    .line 515
    if-eqz p4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 513
    :goto_0
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionStarted(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;II)V

    .line 516
    return-void
.end method

.method public onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "action"    # I
    .param p4, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 573
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 575
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 577
    :cond_0
    return-void
.end method

.method public onSelectionDestroyed()V
    .locals 2

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 563
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->schedule(I)V

    .line 564
    return-void
.end method

.method public onSelectionUpdated(IILandroid/view/textclassifier/TextClassification;)V
    .locals 2
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 549
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 551
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 553
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onSmartSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 5
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 522
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 523
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 524
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v1

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v2

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$200(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$400(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextSelection;

    move-result-object v4

    .line 523
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    .line 525
    return-void
.end method

.method public onTextChanged(IILandroid/view/textclassifier/TextClassification;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 606
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-ne p2, v0, :cond_0

    .line 607
    const/16 v0, 0x64

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 609
    :cond_0
    return-void
.end method

.method public resetSelection(ILandroid/widget/Editor;)Z
    .locals 7
    .param p1, "textIndex"    # I
    .param p2, "editor"    # Landroid/widget/Editor;

    .line 586
    invoke-virtual {p2}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 587
    .local v0, "textView":Landroid/widget/TextView;
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-gt p1, v1, :cond_1

    .line 590
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 591
    iput-boolean v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 592
    invoke-virtual {p2}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v1

    .line 593
    .local v1, "selected":Z
    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p2}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iput v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 595
    invoke-virtual {p2}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iput v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 596
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 597
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const/16 v5, 0xc9

    const/4 v6, 0x0

    .line 596
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 600
    :cond_0
    return v1

    .line 602
    .end local v1    # "selected":Z
    :cond_1
    return v2
.end method
