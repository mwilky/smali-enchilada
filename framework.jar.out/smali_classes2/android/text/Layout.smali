.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field public static final TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mJustificationMode:I

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    if-ltz p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/text/Layout;IZZ)[F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/Layout;IZ)F
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-le v5, v4, :cond_0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    add-int/lit8 v5, v5, -0x1

    :cond_0
    const/4 v7, 0x0

    move v8, v7

    :goto_0
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v9, v9

    if-ge v8, v9, :cond_4

    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v9, v8

    add-int/2addr v9, v4

    iget-object v10, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v11

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int/2addr v10, v9

    if-le v10, v5, :cond_1

    move v10, v5

    :cond_1
    if-gt v2, v10, :cond_3

    if-lt v3, v9, :cond_3

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-eq v11, v12, :cond_3

    invoke-direct {v0, v11, v7, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v0, v12, v14, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v22

    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget-object v7, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v16, v8, 0x1

    aget v7, v7, v16

    const/high16 v16, 0x4000000

    and-int v7, v7, v16

    if-eqz v7, :cond_2

    nop

    const/16 v21, 0x0

    goto :goto_1

    :cond_2
    move/from16 v21, v14

    :goto_1
    move/from16 v7, p4

    int-to-float v14, v7

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v16, p6

    move/from16 v17, v22

    move/from16 v18, v14

    move/from16 v19, v23

    move/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_2

    :cond_3
    move/from16 v7, p4

    move/from16 v0, p5

    :goto_2
    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    move/from16 v7, p4

    move/from16 v0, p5

    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-lt v3, v7, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_0
    nop

    :goto_1
    if-ge v8, v3, :cond_5

    if-eqz v9, :cond_2

    if-ge v8, v7, :cond_2

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_2

    :cond_2
    const v10, 0xfeff

    :goto_2
    add-int v11, v8, v4

    add-int/2addr v11, v5

    if-gt v1, v11, :cond_3

    move/from16 v12, p2

    if-ge v11, v12, :cond_4

    add-int v13, p5, v11

    sub-int/2addr v13, v1

    aput-char v10, p4, v13

    goto :goto_3

    :cond_3
    move/from16 v12, p2

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move/from16 v12, p2

    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 6

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_3

    const/16 v2, 0xa

    invoke-static {p0, v2, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_0

    move v2, p2

    :cond_0
    invoke-static {p3, p0, v0, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v3

    cmpl-float v4, v3, p5

    if-lez v4, :cond_1

    return p5

    :cond_1
    cmpl-float v4, v3, v1

    if-lez v4, :cond_2

    move v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_3
    return v1
.end method

.method private getHorizontal(IZ)F
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    :goto_0
    return v0
.end method

.method private getHorizontal(IZIZ)F
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v15

    const/4 v2, 0x0

    if-eqz v14, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v11, v12, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    array-length v4, v3

    if-lez v4, :cond_0

    new-instance v4, Landroid/text/Layout$TabStops;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v3}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v2, v4

    :cond_0
    move-object/from16 v16, v2

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v10

    move v5, v11

    move v6, v12

    move v7, v13

    move-object v8, v15

    move v9, v14

    move/from16 v17, v12

    move-object v12, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v3, p1, v11

    const/4 v4, 0x0

    move/from16 v5, p2

    invoke-virtual {v12, v3, v5, v4}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    invoke-static {v12}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_1

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_1

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v6

    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v6

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v7

    invoke-direct {v0, v1, v6, v7}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    return v8
.end method

.method private getHorizontal(IZZ)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getJustifyWidth(I)F
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v3, 0x0

    iget v4, v0, Landroid/text/Layout;->mWidth:I

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    sget-object v6, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    iget-boolean v7, v0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v12, v9, -0x1

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v8

    :goto_1
    if-eqz v11, :cond_3

    iget-object v12, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const-class v13, Landroid/text/style/ParagraphStyle;

    invoke-interface {v7, v9, v12, v13}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v12

    const-class v13, Landroid/text/style/ParagraphStyle;

    invoke-static {v7, v9, v12, v13}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    check-cast v6, [Landroid/text/style/ParagraphStyle;

    array-length v13, v6

    sub-int/2addr v13, v8

    :goto_2
    if-ltz v13, :cond_3

    aget-object v14, v6, v13

    instance-of v14, v14, Landroid/text/style/AlignmentSpan;

    if-eqz v14, :cond_2

    aget-object v14, v6, v13

    check-cast v14, Landroid/text/style/AlignmentSpan;

    invoke-interface {v14}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    array-length v12, v6

    move v13, v11

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v12, :cond_5

    aget-object v15, v6, v14

    instance-of v15, v15, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v15, :cond_4

    aget-object v15, v6, v14

    check-cast v15, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v15}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v15

    aget-object v10, v6, v14

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    add-int v8, v10, v15

    if-ge v1, v8, :cond_4

    const/4 v13, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    const/16 v16, 0x0

    :goto_6
    move/from16 v8, v16

    if-ge v8, v12, :cond_8

    aget-object v10, v6, v8

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan;

    if-eqz v10, :cond_7

    aget-object v10, v6, v8

    check-cast v10, Landroid/text/style/LeadingMarginSpan;

    const/4 v14, -0x1

    if-ne v5, v14, :cond_6

    invoke-interface {v10, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int/2addr v4, v14

    goto :goto_7

    :cond_6
    invoke-interface {v10, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v3, v14

    :cond_7
    :goto_7
    add-int/lit8 v16, v8, 0x1

    goto :goto_6

    :cond_8
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_a

    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_9
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_8
    goto :goto_a

    :cond_a
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_c

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_9

    :cond_b
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_9
    goto :goto_8

    :cond_c
    move-object v7, v2

    :goto_a
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_e

    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    :goto_b
    goto :goto_c

    :cond_d
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    goto :goto_b

    :cond_e
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_10

    const/4 v8, 0x1

    if-ne v5, v8, :cond_f

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    goto :goto_b

    :cond_f
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    goto :goto_b

    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    :goto_c
    sub-int v9, v4, v3

    sub-int/2addr v9, v8

    int-to-float v9, v9

    return v9
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v13

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    iget-object v9, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v1, v14

    move-object v2, v9

    move v4, v10

    move v6, v13

    move-object v7, v12

    move v8, v11

    move-object v15, v9

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v14, v1}, Landroid/text/TextLine;->justify(F)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v1
.end method

.method private getLineExtent(IZ)F
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_0
    move v11, v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    const/4 v1, 0x0

    if-eqz v12, :cond_1

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v10, v11, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_1

    new-instance v3, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v1, v3

    :cond_1
    move-object v13, v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v14

    if-nez v14, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v15

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v9

    iget-object v8, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, v8

    move v4, v10

    move v5, v11

    move v6, v15

    move-object v7, v14

    move-object/from16 v16, v8

    move v8, v12

    move/from16 v17, v10

    move-object v10, v9

    move-object v9, v13

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v10, v1}, Landroid/text/TextLine;->justify(F)V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v10}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v1
.end method

.method private getLineHorizontals(IZZ)[F
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v13

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v14

    const/4 v1, 0x0

    if-eqz v13, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v10, v11, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_0

    new-instance v3, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v1, v3

    :cond_0
    move-object v15, v1

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v9

    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v1, v9

    move v4, v10

    move v5, v11

    move v6, v12

    move-object v7, v14

    move v8, v13

    move/from16 v16, v12

    move-object v12, v9

    move-object v9, v15

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    if-nez p3, :cond_1

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    aget-boolean v5, v1, v4

    xor-int/lit8 v5, v5, 0x1

    aput-boolean v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v12, v1, v4}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v4

    invoke-static {v12}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p2, :cond_3

    const/4 v6, 0x0

    :goto_1
    array-length v7, v4

    if-gt v6, v7, :cond_3

    aget v7, v4, v6

    iget v8, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget v7, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v7, v7

    aput v7, v4, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v7

    move/from16 v8, p1

    invoke-direct {v0, v8, v6, v7}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v9

    sub-int v17, v11, v10

    add-int/lit8 v2, v17, 0x1

    new-array v2, v2, [F

    const/16 v18, 0x0

    :goto_2
    move/from16 v19, v18

    array-length v0, v2

    move-object/from16 v20, v1

    move/from16 v1, v19

    if-ge v1, v0, :cond_4

    int-to-float v0, v9

    aget v17, v4, v1

    add-float v0, v0, v17

    aput v0, v2, v1

    add-int/lit8 v18, v1, 0x1

    move-object/from16 v1, v20

    move-object/from16 v0, p0

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method private getLineStartPos(III)I
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v0, v2

    goto :goto_2

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3

    if-ne v1, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v0, v2

    :cond_3
    :goto_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_5

    if-ne v1, v3, :cond_4

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p2

    :goto_3
    goto :goto_5

    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p3

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/TabStopSpan;

    array-length v8, v7

    if-lez v8, :cond_6

    new-instance v8, Landroid/text/Layout$TabStops;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v7}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v2, v8

    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_8

    if-ne v1, v3, :cond_7

    sub-int v3, p3, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_4
    move v2, v3

    goto :goto_5

    :cond_7
    sub-int v3, p2, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_4

    :cond_8
    and-int/lit8 v4, v4, -0x2

    add-int v5, p2, p3

    sub-int/2addr v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int/2addr v3, v6

    shr-int v2, v5, v3

    :goto_5
    return v2
.end method

.method private getLineVisibleEnd(III)I
    .locals 3

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    return p3

    :cond_0
    :goto_0
    if-le p3, p2, :cond_3

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v2, p3, -0x1

    return v2

    :cond_1
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p3
.end method

.method private getOffsetAtStartOf(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xdc00

    if-lt v2, v3, :cond_1

    const v3, 0xdfff

    if-gt v2, v3, :cond_1

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v4, 0xd800

    if-lt v3, v4, :cond_1

    const v4, 0xdbff

    if-gt v3, v4, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-boolean v3, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/ReplacementSpan;

    invoke-interface {v3, p1, p1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ReplacementSpan;

    nop

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v3, v0

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object v5, v1

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v3, v0

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ge v4, p1, :cond_2

    if-le v5, p1, :cond_2

    move p1, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v6, v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-ne v2, v9, :cond_1

    move v8, v10

    nop

    :cond_1
    if-eqz v8, :cond_3

    if-ne v1, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v3, v9, :cond_2

    const/4 v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    if-ne v1, v4, :cond_5

    if-lez v3, :cond_4

    const/4 v7, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-eq v9, v6, :cond_6

    xor-int/lit8 v10, v2, 0x1

    move v2, v10

    move v6, v9

    :cond_6
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v18

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v15

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v0, v15

    move-object/from16 v15, v18

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v9, v1, v4

    invoke-virtual {v0, v9, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v9
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 14

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    const-class v5, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v4, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LeadingMarginSpan;

    array-length v6, v5

    if-nez v6, :cond_1

    return v1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v8}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v7

    :goto_1
    move v9, v8

    move v8, v1

    :goto_2
    array-length v10, v5

    if-ge v8, v10, :cond_6

    aget-object v10, v5, v8

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_5

    aget-object v10, v5, v8

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    aget-object v12, v5, v8

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    add-int v13, v11, v12

    if-ge p1, v13, :cond_4

    move v13, v7

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    or-int/2addr v9, v13

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    nop

    :goto_4
    array-length v7, v5

    if-ge v1, v7, :cond_7

    aget-object v7, v5, v1

    invoke-interface {v7, v9}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v8

    add-int/2addr v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isJustificationRequired(I)Z
    .locals 4

    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method static synthetic lambda$getSelectionPath$0(Landroid/graphics/Path;FFFFI)V
    .locals 6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 25

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    const/4 v1, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    move-object v13, v0

    move-object/from16 v14, p4

    :try_start_0
    invoke-static {v10, v11, v12, v14, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v0

    :try_start_1
    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    array-length v1, v0

    move v9, v1

    const/4 v1, 0x0

    invoke-virtual {v15, v1, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    instance-of v5, v10, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object v5, v10

    check-cast v5, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v5, v11, v12, v8}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LeadingMarginSpan;

    array-length v1, v8

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v18, v8, v4

    move-object/from16 v19, v18

    move/from16 v20, v1

    const/4 v1, 0x1

    move/from16 v21, v2

    move-object/from16 v2, v19

    invoke-interface {v2, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v1

    add-int v17, v17, v1

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v20

    move/from16 v2, v21

    goto :goto_0

    :cond_0
    move/from16 v21, v2

    move/from16 v8, v17

    goto :goto_1

    :cond_1
    move/from16 v21, v2

    move v8, v4

    :goto_1
    const/16 v16, 0x0

    :goto_2
    move/from16 v1, v16

    if-ge v1, v9, :cond_5

    aget-char v2, v0, v1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    instance-of v4, v10, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object v4, v10

    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v11, v12, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    move-object/from16 v22, v0

    const-class v0, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v11, v5, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    move/from16 v23, v2

    array-length v2, v0

    if-lez v2, :cond_2

    new-instance v2, Landroid/text/Layout$TabStops;

    move-object/from16 v24, v3

    const/16 v3, 0x14

    invoke-direct {v2, v3, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v3, v2

    goto :goto_3

    :cond_2
    move-object/from16 v24, v3

    :goto_3
    move-object/from16 v24, v3

    goto :goto_4

    :cond_3
    move-object/from16 v22, v0

    move/from16 v23, v2

    move-object/from16 v24, v3

    goto :goto_4

    :cond_4
    move-object/from16 v22, v0

    move-object/from16 v24, v3

    add-int/lit8 v16, v1, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v22, v0

    move-object/from16 v24, v3

    move/from16 v23, v21

    :goto_4
    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v11

    move v5, v12

    move v0, v8

    move/from16 v8, v23

    move/from16 v16, v9

    move-object/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-float/2addr v1, v2

    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_6
    return v1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v15, v1

    :goto_5
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_7
    throw v0
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 5

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    if-nez p4, :cond_0

    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, p1, p2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_3

    if-nez v1, :cond_1

    aget-object v3, p4, v2

    instance-of v3, v3, Landroid/text/style/TabStopSpan;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, p4, v2

    check-cast v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_2

    int-to-float v0, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v3, p3, v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    mul-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    return v2
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 12

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v3

    const v8, 0x3ffffff

    if-ge v6, v7, :cond_3

    aget v7, v3, v6

    add-int/2addr v7, v1

    add-int/lit8 v9, v6, 0x1

    aget v9, v3, v9

    and-int/2addr v9, v8

    add-int/2addr v9, v7

    if-le v9, v2, :cond_0

    move v9, v2

    :cond_0
    if-lt p1, v7, :cond_2

    if-ge p1, v9, :cond_2

    if-le p1, v7, :cond_1

    return v5

    :cond_1
    add-int/lit8 v10, v6, 0x1

    aget v10, v3, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v4, v10, 0x3f

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v4, v6, :cond_5

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    move v4, v6

    :cond_5
    const/4 v6, -0x1

    if-ne p1, v1, :cond_7

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v8, v7, :cond_6

    move v8, v5

    goto :goto_3

    :cond_6
    move v8, v7

    :goto_3
    move v6, v8

    goto :goto_5

    :cond_7
    add-int/lit8 p1, p1, -0x1

    move v9, v5

    :goto_4
    array-length v10, v3

    if-ge v9, v10, :cond_a

    aget v10, v3, v9

    add-int/2addr v10, v1

    add-int/lit8 v11, v9, 0x1

    aget v11, v3, v11

    and-int/2addr v11, v8

    add-int/2addr v11, v10

    if-le v11, v2, :cond_8

    move v11, v2

    :cond_8
    if-lt p1, v10, :cond_9

    if-ge p1, v11, :cond_9

    add-int/lit8 v8, v9, 0x1

    aget v8, v3, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v6, v8, 0x3f

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    :cond_a
    :goto_5
    if-ge v6, v4, :cond_b

    move v5, v7

    nop

    :cond_b
    return v5
.end method

.method private primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .locals 12

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Z

    sub-int v5, v1, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_2

    aget v8, v2, v7

    add-int/2addr v8, v0

    add-int/lit8 v9, v7, 0x1

    aget v9, v2, v9

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    if-le v9, v1, :cond_0

    move v9, v1

    :cond_0
    if-eq v9, v0, :cond_1

    sub-int v10, v9, v0

    sub-int/2addr v10, v4

    add-int/lit8 v11, v7, 0x1

    aget v11, v2, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v11, v11, 0x3f

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v7, 0x1

    aget v10, v2, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v5, v6

    :goto_1
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_2
    array-length v8, v2

    if-ge v7, v8, :cond_6

    aget v8, v2, v7

    add-int/2addr v8, v0

    add-int/lit8 v9, v7, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    int-to-byte v9, v9

    sub-int v10, v8, v0

    if-ne v8, v0, :cond_4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v4, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    nop

    move v11, v4

    goto :goto_3

    :cond_4
    sub-int v11, v8, v0

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    :goto_3
    if-le v9, v11, :cond_5

    move v11, v4

    goto :goto_4

    :cond_5
    move v11, v6

    :goto_4
    aput-boolean v11, v3, v10

    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_6
    return-object v3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 11

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    if-gez v10, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v9

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    invoke-virtual {p0, p1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    iget-boolean v1, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/SpanSet;

    const-class v2, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v1, v2}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    :cond_0
    iget-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v1

    check-cast v12, Landroid/text/Spanned;

    invoke-interface {v12}, Landroid/text/Spanned;->length()I

    move-result v11

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v10, 0x0

    invoke-virtual {v1, v12, v10, v11}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v1, :cond_8

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/4 v4, 0x0

    iget-object v9, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    iget v8, v0, Landroid/text/Layout;->mWidth:I

    move v7, v5

    move v5, v4

    move v4, v2

    move v2, v1

    move v1, v15

    :goto_0
    move/from16 v6, p6

    if-gt v1, v6, :cond_8

    move/from16 v16, v4

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move/from16 v18, v10

    move v6, v2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    move/from16 v20, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int v21, v19, v2

    move/from16 v4, v16

    if-lt v4, v7, :cond_6

    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v2, v4, v11}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    const/4 v5, 0x0

    if-ne v4, v10, :cond_2

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v16, v3

    :goto_1
    move v7, v5

    goto :goto_5

    :cond_2
    :goto_2
    move-object v7, v3

    const/4 v3, 0x0

    :goto_3
    move/from16 v22, v1

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v3, v1, :cond_5

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v3

    if-ge v1, v10, :cond_4

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v3

    if-gt v1, v4, :cond_3

    goto :goto_4

    :cond_3
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/LineBackgroundSpan;

    aget-object v1, v1, v3

    invoke-static {v7, v5, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ParagraphStyle;

    add-int/lit8 v5, v5, 0x1

    move-object v7, v1

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v22

    goto :goto_3

    :cond_5
    move/from16 v23, v2

    move-object/from16 v16, v7

    goto :goto_1

    :cond_6
    move/from16 v22, v1

    move-object/from16 v16, v3

    move/from16 v23, v7

    move v7, v5

    :goto_5
    const/4 v1, 0x0

    :goto_6
    move v5, v1

    if-ge v5, v7, :cond_7

    aget-object v1, v16, v5

    move-object/from16 v24, v1

    check-cast v24, Landroid/text/style/LineBackgroundSpan;

    const/16 v25, 0x0

    move-object/from16 v1, v24

    move-object v2, v13

    move-object v3, v9

    move/from16 v26, v4

    move/from16 v4, v25

    move/from16 v25, v5

    move v5, v8

    move/from16 v27, v7

    move/from16 v7, v21

    move/from16 v28, v8

    move/from16 v8, v19

    move-object/from16 v29, v9

    move-object v9, v12

    move/from16 v17, v10

    const/16 v30, 0x0

    move/from16 v10, v26

    move/from16 v31, v11

    move/from16 v11, v17

    move-object/from16 v32, v12

    move/from16 v12, v22

    invoke-interface/range {v1 .. v12}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v1, v25, 0x1

    move/from16 v10, v17

    move/from16 v4, v26

    move/from16 v7, v27

    move/from16 v8, v28

    move-object/from16 v9, v29

    move/from16 v11, v31

    move-object/from16 v12, v32

    goto :goto_6

    :cond_7
    move/from16 v27, v7

    move/from16 v28, v8

    move-object/from16 v29, v9

    move/from16 v31, v11

    move-object/from16 v32, v12

    const/16 v30, 0x0

    add-int/lit8 v1, v22, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v18

    move/from16 v2, v20

    move/from16 v7, v23

    move/from16 v5, v27

    move/from16 v10, v30

    goto/16 :goto_0

    :cond_8
    move/from16 v31, v11

    move-object/from16 v32, v12

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    :cond_9
    if-eqz p2, :cond_b

    const/4 v2, 0x0

    if-eqz v14, :cond_a

    int-to-float v3, v14

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_a
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v14, :cond_b

    neg-int v3, v14

    int-to-float v3, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 46

    move-object/from16 v15, p0

    move/from16 v14, p2

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/4 v3, 0x0

    iget-object v13, v15, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v4, v15, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v12, v15, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    move-object v10, v5

    move v7, v6

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v14

    :goto_0
    move v9, v0

    move/from16 v8, p3

    if-gt v9, v8, :cond_1a

    move v0, v1

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {v15, v9}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v20

    invoke-direct {v15, v9, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v21

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getHyphen(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    move v5, v2

    move/from16 v22, v1

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v15, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v23

    move/from16 v24, v23

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int v2, v23, v1

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/16 v16, 0x0

    move/from16 v25, v2

    iget v2, v15, Landroid/text/Layout;->mWidth:I

    move/from16 v26, v2

    iget-boolean v2, v15, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v27, v5

    if-eqz v2, :cond_d

    move-object v2, v12

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v0, :cond_1

    move-object/from16 v30, v3

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v12, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move-object/from16 v31, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    :goto_1
    const/4 v3, 0x1

    :goto_2
    move/from16 v19, v3

    if-lt v0, v6, :cond_6

    if-eq v9, v14, :cond_3

    if-eqz v19, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v32, v0

    const/16 v17, 0x1

    goto :goto_6

    :cond_3
    :goto_3
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v0, v5, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-static {v2, v0, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move/from16 v32, v0

    array-length v0, v3

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_5

    move-object/from16 v33, v4

    aget-object v4, v3, v0

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_4

    aget-object v4, v3, v0

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v4, v33

    goto :goto_4

    :cond_5
    move-object/from16 v33, v4

    :goto_5
    const/4 v0, 0x0

    move/from16 v29, v0

    move-object v7, v3

    move-object/from16 v31, v4

    goto :goto_7

    :cond_6
    move/from16 v32, v0

    const/16 v17, 0x1

    :goto_6
    move/from16 v29, v7

    move-object/from16 v7, v30

    :goto_7
    move/from16 v30, v6

    array-length v6, v7

    move/from16 v0, v19

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v6, :cond_9

    aget-object v4, v7, v3

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_7

    aget-object v4, v7, v3

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v4

    move/from16 v34, v0

    aget-object v0, v7, v3

    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    move-object/from16 v35, v2

    add-int v2, v0, v4

    if-ge v9, v2, :cond_8

    const/4 v2, 0x1

    nop

    move v4, v2

    goto :goto_9

    :cond_7
    move/from16 v34, v0

    move-object/from16 v35, v2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v34

    move-object/from16 v2, v35

    goto :goto_8

    :cond_9
    move/from16 v34, v0

    move-object/from16 v35, v2

    move/from16 v4, v34

    :goto_9
    move/from16 v33, v26

    const/4 v0, 0x0

    move/from16 v26, v16

    :goto_a
    move v3, v0

    if-ge v3, v6, :cond_c

    aget-object v0, v7, v3

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    if-eqz v0, :cond_b

    aget-object v0, v7, v3

    move-object v2, v0

    check-cast v2, Landroid/text/style/LeadingMarginSpan;

    const/4 v0, -0x1

    if-ne v1, v0, :cond_a

    move-object v0, v2

    move/from16 v36, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move/from16 v37, v25

    move-object/from16 v25, v35

    move-object v2, v13

    move/from16 v34, v3

    move/from16 v3, v33

    move-object/from16 v38, v13

    move v13, v4

    move/from16 v4, v36

    move/from16 v35, v6

    move/from16 v6, v37

    move-object/from16 v39, v7

    move/from16 v7, v23

    move-object v8, v12

    move/from16 v40, v9

    move/from16 v9, v32

    move-object/from16 v41, v10

    move/from16 v10, v21

    move-object/from16 v42, v11

    move/from16 v11, v19

    move-object/from16 v43, v12

    move-object v12, v15

    move/from16 v45, v27

    move/from16 v27, v5

    move/from16 v5, v45

    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    invoke-interface {v14, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v33, v33, v0

    move v2, v13

    move-object v3, v15

    move-object/from16 v0, v38

    goto/16 :goto_b

    :cond_a
    move/from16 v36, v1

    move-object v14, v2

    move/from16 v34, v3

    move-object/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object/from16 v38, v13

    move/from16 v37, v25

    move-object/from16 v25, v35

    move v13, v4

    move/from16 v35, v6

    move/from16 v45, v27

    move/from16 v27, v5

    move/from16 v5, v45

    move-object v6, v14

    move-object/from16 v7, p1

    move-object/from16 v8, v38

    move/from16 v9, v26

    move/from16 v10, v36

    move v11, v5

    move/from16 v12, v37

    move v2, v13

    move-object/from16 v0, v38

    move/from16 v13, v23

    move-object v1, v14

    move-object/from16 v14, v43

    move-object v3, v15

    move/from16 v15, v32

    move/from16 v16, v21

    move/from16 v17, v19

    move-object/from16 v18, v3

    invoke-interface/range {v6 .. v18}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    invoke-interface {v1, v2}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v26, v26, v4

    goto :goto_b

    :cond_b
    move/from16 v36, v1

    move/from16 v34, v3

    move v2, v4

    move-object/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object v0, v13

    move-object v3, v15

    move/from16 v37, v25

    move-object/from16 v25, v35

    move/from16 v35, v6

    move/from16 v45, v27

    move/from16 v27, v5

    move/from16 v5, v45

    :goto_b
    add-int/lit8 v1, v34, 0x1

    move/from16 v14, p2

    move/from16 v8, p3

    move-object v13, v0

    move v0, v1

    move v4, v2

    move-object v15, v3

    move/from16 v6, v35

    move/from16 v1, v36

    move-object/from16 v7, v39

    move/from16 v9, v40

    move-object/from16 v10, v41

    move-object/from16 v11, v42

    move-object/from16 v12, v43

    const/16 v17, 0x1

    move-object/from16 v35, v25

    move/from16 v25, v37

    move/from16 v45, v27

    move/from16 v27, v5

    move/from16 v5, v45

    goto/16 :goto_a

    :cond_c
    move/from16 v36, v1

    move-object/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object v0, v13

    move-object v3, v15

    move/from16 v37, v25

    move/from16 v5, v27

    move-object/from16 v4, v31

    move-object/from16 v1, v39

    goto :goto_c

    :cond_d
    move/from16 v32, v0

    move/from16 v36, v1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object v0, v13

    move-object v3, v15

    move/from16 v37, v25

    move/from16 v5, v27

    move/from16 v29, v7

    move/from16 v33, v26

    move-object/from16 v1, v30

    move/from16 v30, v6

    move/from16 v26, v16

    :goto_c
    move/from16 v2, v40

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v25

    if-eqz v25, :cond_f

    if-nez v29, :cond_f

    const/16 v6, 0x14

    move-object/from16 v8, v41

    if-nez v8, :cond_e

    new-instance v7, Landroid/text/Layout$TabStops;

    invoke-direct {v7, v6, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v10, v7

    goto :goto_d

    :cond_e
    invoke-virtual {v8, v6, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object v10, v8

    :goto_d
    const/4 v6, 0x1

    move/from16 v29, v6

    move-object v15, v10

    goto :goto_e

    :cond_f
    move-object/from16 v8, v41

    move-object v15, v8

    :goto_e
    move-object v6, v4

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v7, :cond_11

    move/from16 v14, v36

    const/4 v7, 0x1

    if-ne v14, v7, :cond_10

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_f

    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_f
    move-object v6, v8

    goto :goto_11

    :cond_11
    move/from16 v14, v36

    const/4 v7, 0x1

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v8, :cond_13

    if-ne v14, v7, :cond_12

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_10

    :cond_12
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_10
    move-object v6, v8

    :cond_13
    :goto_11
    move-object v13, v6

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v13, v6, :cond_15

    if-ne v14, v7, :cond_14

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int v7, v26, v6

    :goto_12
    move/from16 v27, v6

    goto :goto_14

    :cond_14
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    neg-int v6, v6

    sub-int v7, v33, v6

    goto :goto_12

    :cond_15
    const/4 v6, 0x0

    invoke-direct {v3, v2, v15, v6}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v13, v8, :cond_17

    if-ne v14, v7, :cond_16

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    neg-int v7, v7

    sub-int v8, v33, v6

    sub-int/2addr v8, v7

    :goto_13
    move/from16 v27, v7

    move v7, v8

    goto :goto_14

    :cond_16
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    sub-int v8, v26, v6

    add-int/2addr v8, v7

    goto :goto_13

    :cond_17
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    and-int/lit8 v6, v6, -0x2

    add-int v9, v33, v26

    sub-int/2addr v9, v6

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v8

    move/from16 v27, v8

    :goto_14
    move v12, v7

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v11, v6, :cond_18

    iget-boolean v6, v3, Landroid/text/Layout;->mSpannedText:Z

    if-nez v6, :cond_18

    if-nez v25, :cond_18

    if-nez v20, :cond_18

    int-to-float v10, v12

    move/from16 v9, v37

    int-to-float v8, v9

    move-object/from16 v6, p1

    move-object/from16 v7, v43

    move/from16 v16, v8

    move/from16 v8, v32

    move/from16 v28, v9

    move/from16 v9, v21

    move-object/from16 v31, v11

    move/from16 v11, v16

    move-object/from16 v44, v1

    move v1, v12

    move-object v12, v0

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object v10, v15

    move-object/from16 v9, v42

    goto :goto_16

    :cond_18
    move-object/from16 v44, v1

    move-object/from16 v31, v11

    move v1, v12

    move/from16 v28, v37

    move-object/from16 v6, v42

    move-object v7, v0

    move-object/from16 v8, v43

    move/from16 v9, v32

    move/from16 v10, v21

    move v11, v14

    move-object/from16 v12, v31

    move-object/from16 v34, v13

    move/from16 v13, v25

    move/from16 v35, v14

    move-object v14, v15

    invoke-virtual/range {v6 .. v14}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    if-eqz v20, :cond_19

    sub-int v6, v33, v26

    sub-int v6, v6, v27

    int-to-float v6, v6

    move-object/from16 v9, v42

    invoke-virtual {v9, v6}, Landroid/text/TextLine;->justify(F)V

    goto :goto_15

    :cond_19
    move-object/from16 v9, v42

    :goto_15
    int-to-float v6, v1

    move-object v14, v9

    move-object v10, v15

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v28

    move/from16 v19, v23

    invoke-virtual/range {v14 .. v19}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    :goto_16
    add-int/lit8 v1, v2, 0x1

    move/from16 v14, p2

    move-object v13, v0

    move v0, v1

    move-object v15, v3

    move-object v11, v9

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v7, v29

    move/from16 v6, v30

    move-object/from16 v12, v43

    move-object/from16 v3, v44

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v43, v12

    move-object v0, v13

    move-object v3, v15

    invoke-static {v9}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v7

    invoke-virtual {v0, v1, v7}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0, v1, v7}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v10

    sub-float/2addr v10, v9

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    const/4 v11, 0x1

    invoke-static {v3, v11}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v12

    const/16 v13, 0x800

    invoke-static {v3, v13}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v13

    or-int/2addr v12, v13

    const/4 v13, 0x2

    invoke-static {v3, v13}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v14

    const/4 v15, 0x0

    if-nez v12, :cond_1

    if-eqz v14, :cond_3

    :cond_1
    sub-int v16, v6, v5

    shr-int/lit8 v15, v16, 0x2

    if-eqz v14, :cond_2

    add-int/2addr v5, v15

    :cond_2
    if-eqz v12, :cond_3

    sub-int/2addr v6, v15

    :cond_3
    cmpg-float v16, v8, v9

    if-gez v16, :cond_4

    const/high16 v8, 0x3f000000    # 0.5f

    :cond_4
    cmpg-float v16, v10, v9

    if-gez v16, :cond_5

    const/high16 v10, 0x3f000000    # 0.5f

    :cond_5
    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v16

    if-nez v16, :cond_6

    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v6

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_6
    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v9, v5, v6

    shr-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v9, v5, v6

    shr-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    if-ne v12, v13, :cond_7

    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v15

    sub-float v9, v10, v9

    add-int v13, v6, v15

    int-to-float v13, v13

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v15

    add-float/2addr v9, v10

    add-int v13, v6, v15

    int-to-float v13, v13

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_7
    if-ne v12, v11, :cond_8

    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v15

    sub-float v9, v10, v9

    add-int v13, v6, v15

    int-to-float v13, v13

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v15

    sub-float v9, v10, v9

    add-int v13, v6, v15

    int-to-float v13, v13

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v13, v13, v16

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v15

    add-float/2addr v9, v10

    add-int v13, v6, v15

    int-to-float v13, v13

    sub-float v13, v13, v16

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v15

    add-float/2addr v9, v10

    add-int v13, v6, v15

    int-to-float v13, v13

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_8
    :goto_2
    const/4 v9, 0x2

    if-ne v14, v9, :cond_9

    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v15

    sub-float v9, v8, v9

    sub-int v11, v5, v15

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v15

    add-float/2addr v9, v8

    sub-int v11, v5, v15

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_9
    if-ne v14, v11, :cond_a

    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v15

    sub-float v9, v8, v9

    sub-int v11, v5, v15

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v15

    sub-float v9, v8, v9

    sub-int v11, v5, v15

    int-to-float v11, v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v15

    add-float/2addr v9, v8

    sub-int v11, v5, v15

    int-to-float v11, v11

    add-float/2addr v11, v13

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v15

    add-float/2addr v9, v8

    sub-int v11, v5, v15

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    :goto_3
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHyphen(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineBottomWithoutSpacing(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineExtra(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    return v1
.end method

.method public getLineForVertical(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    return v1
.end method

.method public getLineLeft(I)F
    .locals 6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v4, -0x1

    if-ne v1, v2, :cond_2

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    sub-float/2addr v2, v3

    return v2

    :cond_1
    return v3

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_3

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    sub-float/2addr v2, v3

    return v2

    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_5

    if-ne v0, v4, :cond_4

    return v3

    :cond_4
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    sub-float/2addr v2, v3

    return v2

    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    float-to-int v4, v4

    and-int/lit8 v4, v4, -0x2

    sub-int v5, v3, v2

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    return v5
.end method

.method public getLineMax(I)F
    .locals 3

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-float v2, v1

    :goto_0
    add-float/2addr v2, v0

    return v2
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 6

    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :cond_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v0, v5, :cond_1

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLineRight(I)F
    .locals 6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    add-float/2addr v2, v3

    return v2

    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_2

    if-ne v0, v3, :cond_1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    add-float/2addr v2, v3

    return v2

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_3

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    return v2

    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_5

    if-ne v0, v3, :cond_4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v2

    return v2

    :cond_4
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    return v2

    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    float-to-int v4, v4

    and-int/lit8 v4, v4, -0x2

    sub-int v5, v3, v2

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    int-to-float v5, v5

    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 3

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-float v2, v1

    :goto_0
    add-float/2addr v2, v0

    return v2
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IFZ)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v13

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v14

    move v5, v12

    move v6, v11

    move-object v8, v13

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    new-instance v2, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v3, p3

    invoke-direct {v2, v0, v1, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    sub-int v4, v11, v12

    add-int/lit8 v6, v11, -0x1

    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v14, v4, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int/2addr v4, v12

    :goto_0
    move v6, v12

    invoke-virtual {v2, v12}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v7

    sub-float v7, v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v9, v6

    const/4 v6, 0x0

    :goto_1
    iget-object v10, v13, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v10, v10

    if-ge v6, v10, :cond_c

    iget-object v10, v13, Landroid/text/Layout$Directions;->mDirections:[I

    aget v10, v10, v6

    add-int/2addr v10, v12

    iget-object v8, v13, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v15, v6, 0x1

    aget v8, v8, v15

    const v15, 0x3ffffff

    and-int/2addr v8, v15

    add-int/2addr v8, v10

    iget-object v5, v13, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v15, v6, 0x1

    aget v5, v5, v15

    const/high16 v15, 0x4000000

    and-int/2addr v5, v15

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    const/4 v15, -0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x1

    :goto_3
    move/from16 v17, v15

    if-le v8, v4, :cond_3

    move v8, v4

    :cond_3
    add-int/lit8 v15, v8, -0x1

    const/4 v1, 0x1

    add-int/2addr v15, v1

    add-int/lit8 v16, v10, 0x1

    add-int/lit8 v16, v16, -0x1

    :goto_4
    move/from16 v18, v16

    move/from16 v19, v9

    move/from16 v3, v18

    sub-int v9, v15, v3

    if-le v9, v1, :cond_5

    add-int v18, v15, v3

    div-int/lit8 v9, v18, 0x2

    invoke-direct {v0, v9}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v16

    move/from16 v20, v1

    move/from16 v0, v17

    int-to-float v1, v0

    mul-float v16, v16, v1

    int-to-float v1, v0

    mul-float v1, v1, p2

    cmpl-float v1, v16, v1

    if-ltz v1, :cond_4

    move v1, v9

    move v15, v1

    move/from16 v16, v3

    goto :goto_5

    :cond_4
    move v1, v9

    move/from16 v16, v1

    :goto_5
    move/from16 v17, v0

    move/from16 v9, v19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v3, p3

    goto :goto_4

    :cond_5
    move/from16 v0, v17

    add-int/lit8 v1, v10, 0x1

    if-ge v3, v1, :cond_6

    add-int/lit8 v18, v10, 0x1

    move/from16 v3, v18

    :cond_6
    if-ge v3, v8, :cond_9

    sub-int v1, v3, v12

    invoke-virtual {v14, v1, v5}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v12

    sub-int v9, v1, v12

    if-nez v5, :cond_7

    move/from16 v21, v0

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    move/from16 v21, v0

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v14, v9, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v3, v0, v12

    if-lt v3, v10, :cond_a

    if-ge v3, v8, :cond_a

    invoke-virtual {v2, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-ge v1, v8, :cond_8

    invoke-virtual {v2, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v9

    sub-float v9, v9, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v16, v9, v0

    if-gez v16, :cond_8

    move v0, v9

    move v3, v1

    :cond_8
    cmpg-float v9, v0, v7

    if-gez v9, :cond_a

    move v7, v0

    move v9, v3

    move/from16 v19, v9

    goto :goto_7

    :cond_9
    move/from16 v21, v0

    :cond_a
    :goto_7
    invoke-virtual {v2, v10}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, v7

    if-gez v1, :cond_b

    move v1, v0

    move v0, v10

    move v9, v0

    move v7, v1

    goto :goto_8

    :cond_b
    move/from16 v9, v19

    :goto_8
    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_c
    move/from16 v19, v9

    invoke-virtual {v2, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, v7

    if-gtz v1, :cond_d

    move v9, v4

    goto :goto_9

    :cond_d
    move/from16 v9, v19

    :goto_9
    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v9
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 5

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    array-length v3, v2

    if-lez v3, :cond_0

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method public final getParagraphRight(I)I
    .locals 3

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v0, v2

    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getRunRange(I)J
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    move v5, v3

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    aget v6, v2, v5

    add-int/2addr v6, v4

    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v6

    if-lt p1, v6, :cond_1

    if-ge p1, v7, :cond_1

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public final getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 21

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ge v1, v0, :cond_1

    move v2, v1

    move v1, v0

    move v0, v2

    :cond_1
    move v8, v0

    move v9, v1

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    if-ne v10, v11, :cond_2

    move-object v0, v7

    move v1, v10

    move v2, v8

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    goto/16 :goto_3

    :cond_2
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    int-to-float v14, v0

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    move-object v0, v7

    move v1, v10

    move v2, v8

    move v4, v12

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v15, -0x1

    if-ne v0, v15, :cond_3

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v1, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v12

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_0
    add-int/lit8 v0, v10, 0x1

    :goto_1
    if-ge v0, v11, :cond_5

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    if-ne v1, v15, :cond_4

    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object v0, v7

    move v1, v11

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v15, :cond_6

    int-to-float v3, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v2, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    int-to-float v0, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v18

    int-to-float v1, v13

    const/16 v20, 0x1

    move-object/from16 v15, p3

    move/from16 v17, v0

    move/from16 v19, v1

    invoke-interface/range {v15 .. v20}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_3
    return-void
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    new-instance v0, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;

    invoke-direct {v0, p3}, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    return-void
.end method

.method public final getSpacingAdd()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLevelBoundary(I)Z
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_4

    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v4

    move v7, v3

    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_3

    aget v8, v2, v7

    if-ne p1, v8, :cond_2

    return v6

    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v6

    :goto_2
    if-ne p1, v4, :cond_6

    move v8, v3

    goto :goto_3

    :cond_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    :goto_3
    add-int/lit8 v9, v8, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    if-eq v9, v7, :cond_7

    move v3, v6

    nop

    :cond_7
    return v3

    :cond_8
    :goto_4
    return v3
.end method

.method public isRtlCharAt(I)Z
    .locals 11

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    return v4

    :cond_1
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    move v6, v3

    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_4

    aget v7, v2, v6

    add-int/2addr v7, v5

    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    if-lt p1, v7, :cond_3

    if-ge p1, v8, :cond_3

    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    move v3, v4

    nop

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_4
    return v3
.end method

.method protected final isSpanned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3

    if-ltz p3, :cond_0

    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setJustificationMode(I)V
    .locals 0

    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 3

    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
